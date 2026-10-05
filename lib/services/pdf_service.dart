import 'dart:io';

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
      final image = pw.MemoryImage(imageBytes);

      pdf.addPage(
        pw.Page(
          pageFormat: PdfPageFormat.a4,
          margin: pw.EdgeInsets.zero,
          build: (context) {
            return pw.Center(
              child: pw.Image(
                image,
                fit: pw.BoxFit.contain,
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
      await pdfDirectory.create(
        recursive: true,
      );
    }

    final safeName = _safeFileName(
      document.name,
    );

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
    var safeName = name
        .trim()
        .replaceAll(
      RegExp(r'[\\/:*?"<>|]'),
      '_',
    );

    if (safeName.isEmpty) {
      safeName = 'Document';
    }

    return safeName;
  }
}