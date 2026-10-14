
import 'dart:io';

import 'package:image/image.dart' as img;
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

import '../models/scanned_document.dart';

class PdfService {
  static Future<File> createPdf(
      ScannedDocument document,
      ) async {
    final pdf = pw.Document();

    for (final imagePath in document.pagePaths) {
      final imageFile = File(imagePath);

      if (!await imageFile.exists()) {
        continue;
      }

      final imageBytes = await imageFile.readAsBytes();
      final decoded = img.decodeImage(imageBytes);

      if (decoded == null) {
        continue;
      }

      final image = pw.MemoryImage(imageBytes);

      // Preserve the scanned image's original proportions.
      // Scale to fit within A4 bounds without adding margins.
      final imageWidth = decoded.width.toDouble();
      final imageHeight = decoded.height.toDouble();

      final scaleX = PdfPageFormat.a4.width / imageWidth;
      final scaleY = PdfPageFormat.a4.height / imageHeight;
      final scale = scaleX < scaleY ? scaleX : scaleY;

      final pageWidth = imageWidth * scale;
      final pageHeight = imageHeight * scale;

      pdf.addPage(
        pw.Page(
          pageFormat: PdfPageFormat(pageWidth, pageHeight),
          margin: pw.EdgeInsets.zero,
          build: (context) {
            return pw.SizedBox(
              width: pageWidth,
              height: pageHeight,
              child: pw.Image(
                image,
                fit: pw.BoxFit.fill,
              ),
            );
          },
        ),
      );
    }

    final directory =
    await getApplicationDocumentsDirectory();

    final pdfDirectory = Directory(
      '${directory.path}/exported_pdfs',
    );

    if (!await pdfDirectory.exists()) {
      await pdfDirectory.create(recursive: true);
    }

    final safeName = _safeFileName(document.name);

    final pdfFile = File(
      '${pdfDirectory.path}/$safeName.pdf',
    );

    await pdfFile.writeAsBytes(
      await pdf.save(),
      flush: true,
    );

    return pdfFile;
  }

  static String _safeFileName(String name) {
    var safeName = name.trim().replaceAll(
      RegExp(r'[\\/:*?"<>|]'),
      '_',
    );

    if (safeName.isEmpty) {
      safeName = 'Document';
    }

    return safeName;
  }
}
