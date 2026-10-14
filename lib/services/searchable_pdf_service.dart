
import 'dart:io';
import 'dart:math' as math;

import 'package:google_mlkit_text_recognition/google_mlkit_text_recognition.dart';
import 'package:image/image.dart' as img;
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

import '../models/scanned_document.dart';

class SearchablePdfService {
  static Future<File> createSearchablePdf(
      ScannedDocument document,
      ) async {
    final pdf = pw.Document();

    final recognizer = TextRecognizer(
      script: TextRecognitionScript.latin,
    );

    try {
      for (final imagePath in document.pagePaths) {
        final imageFile = File(imagePath);
        if (!await imageFile.exists()) continue;

        final imageBytes = await imageFile.readAsBytes();
        final decoded = img.decodeImage(imageBytes);
        if (decoded == null) continue;

        final recognized = await recognizer.processImage(
          InputImage.fromFilePath(imagePath),
        );

        final pageWidth = PdfPageFormat.a4.width;
        final pageHeight = PdfPageFormat.a4.height;

        final imageWidth = decoded.width.toDouble();
        final imageHeight = decoded.height.toDouble();

        final scale = math.min(
          pageWidth / imageWidth,
          pageHeight / imageHeight,
        );

        final displayedWidth = imageWidth * scale;
        final displayedHeight = imageHeight * scale;

        final offsetX = (pageWidth - displayedWidth) / 2;
        final offsetY = (pageHeight - displayedHeight) / 2;

        final pdfImage = pw.MemoryImage(imageBytes);

        final textWidgets = <pw.Widget>[];

        for (final block in recognized.blocks) {
          for (final line in block.lines) {
            for (final element in line.elements) {
              final word = element.text.trim();
              if (word.isEmpty) continue;

              final box = element.boundingBox;

              final left = offsetX + box.left * scale;
              final top = offsetY + box.top * scale;

              final width = box.width * scale;
              final height = box.height * scale;

              if (width <= 0 || height <= 0) continue;

              textWidgets.add(
                pw.Positioned(
                  left: left,
                  top: top,
                  child: pw.SizedBox(
                    width: width,
                    height: height,
                    child: pw.FittedBox(
                      fit: pw.BoxFit.fill,
                      child: pw.Text(
                        word,
                        maxLines: 1,
                        style: pw.TextStyle(
                          fontSize: height,
                          renderingMode:
                          PdfTextRenderingMode.invisible,
                        ),
                      ),
                    ),
                  ),
                ),
              );
            }
          }
        }

        pdf.addPage(
          pw.Page(
            pageFormat: PdfPageFormat.a4,
            margin: pw.EdgeInsets.zero,
            build: (context) {
              return pw.SizedBox(
                width: pageWidth,
                height: pageHeight,
                child: pw.Stack(
                  children: [
                    pw.Positioned.fill(
                      child: pw.Image(
                        pdfImage,
                        fit: pw.BoxFit.contain,
                      ),
                    ),
                   // ...textWidgets,
                  ],
                ),
              );
            },
          ),
        );
      }

      final directory =
      await getApplicationDocumentsDirectory();

      final exportDirectory = Directory(
        '${directory.path}/exported_pdfs',
      );

      await exportDirectory.create(recursive: true);

      final safeName = document.name
          .trim()
          .replaceAll(RegExp(r'[\\/:*?"<>|]'), '_');

      final pdfFile = File(
        '${exportDirectory.path}/'
            '${safeName.isEmpty ? 'Document' : safeName}_searchable.pdf',
      );

      await pdfFile.writeAsBytes(
        await pdf.save(),
        flush: true,
      );

      return pdfFile;
    } finally {
      await recognizer.close();
    }
  }
}
