
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:image/image.dart' as img;
import 'package:path_provider/path_provider.dart';

import '../models/scanned_document.dart';

enum ImageExportFormat {
  jpeg,
  png,
}

class ImageExportService {
  static Future<List<File>> exportImages({
    required ScannedDocument document,
    required ImageExportFormat format,
  }) async {
    final tempDirectory = await getTemporaryDirectory();

    final exportDirectory = Directory(
      '${tempDirectory.path}/image_exports/${document.id}',
    );

    // Remove old temporary exports.
    if (await exportDirectory.exists()) {
      await exportDirectory.delete(
        recursive: true,
      );
    }

    // Create a clean export directory.
    await exportDirectory.create(
      recursive: true,
    );

    final safeName = _safeFileName(
      document.name,
    );

    final exportedFiles = <File>[];

    for (int i = 0; i < document.pagePaths.length; i++) {
      final sourceFile = File(
        document.pagePaths[i],
      );

      if (!await sourceFile.exists()) {
        debugPrint(
          '[ImageExportService] '
              'Source file missing: ${sourceFile.path}',
        );
        continue;
      }

      final sourceBytes = await sourceFile.readAsBytes();

      final decodedImage = img.decodeImage(sourceBytes);

      if (decodedImage == null) {
        debugPrint(
          '[ImageExportService] '
              'Could not decode: ${sourceFile.path}',
        );
        continue;
      }

      final pageNumber = i + 1;

      switch (format) {
      // JPEG
        case ImageExportFormat.jpeg:
          final jpegBytes = img.encodeJpg(
            decodedImage,
            quality: 92,
          );

          final jpegFile = File(
            '${exportDirectory.path}/'
                '${safeName}_page_$pageNumber.jpg',
          );

          await jpegFile.writeAsBytes(
            jpegBytes,
            flush: true,
          );

          debugPrint(
            '[ImageExportService] '
                'JPEG CREATED: ${jpegFile.path}',
          );

          debugPrint(
            '[ImageExportService] '
                'JPEG SIZE: '
                '${await jpegFile.length()} bytes',
          );

          exportedFiles.add(jpegFile);
          break;

      // PNG
        case ImageExportFormat.png:
          final pngBytes = img.encodePng(
            decodedImage,
            level: 6,
          );

          final pngFile = File(
            '${exportDirectory.path}/'
                '${safeName}_page_$pageNumber.png',
          );

          await pngFile.writeAsBytes(
            pngBytes,
            flush: true,
          );

          debugPrint(
            '[ImageExportService] '
                'PNG CREATED: ${pngFile.path}',
          );

          debugPrint(
            '[ImageExportService] '
                'PNG SIZE: '
                '${await pngFile.length()} bytes',
          );

          exportedFiles.add(pngFile);
          break;
      }
    }

    if (exportedFiles.isEmpty) {
      throw Exception(
        'No images could be exported.',
      );
    }

    return exportedFiles;
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
