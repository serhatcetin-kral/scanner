
import 'package:google_mlkit_text_recognition/google_mlkit_text_recognition.dart';

class OcrService {

  // OPTION 1: PLAIN TEXT (existing functionality)
  static Future<String> recognizeText(
      List<String> imagePaths,
      ) async {
    final textRecognizer = TextRecognizer(
      script: TextRecognitionScript.latin,
    );

    try {
      final recognizedPages = <String>[];

      for (final path in imagePaths) {
        final inputImage = InputImage.fromFilePath(path);

        final recognizedText =
        await textRecognizer.processImage(inputImage);

        final text = recognizedText.text.trim();

        if (text.isNotEmpty) {
          recognizedPages.add(text);
        }
      }

      return recognizedPages.join('\n\n');
    } finally {
      await textRecognizer.close();
    }
  }

  // OPTION 2: STRUCTURED TEXT
  // Preserves recognized blocks and line breaks.
  static Future<String> recognizeFormattedText(
      List<String> imagePaths,
      ) async {
    final textRecognizer = TextRecognizer(
      script: TextRecognitionScript.latin,
    );

    try {
      final pages = <String>[];

      for (final path in imagePaths) {
        final inputImage = InputImage.fromFilePath(path);

        final result =
        await textRecognizer.processImage(inputImage);

        final blocks = <String>[];

        for (final block in result.blocks) {
          final lines = block.lines
              .map((line) => line.text.trim())
              .where((line) => line.isNotEmpty)
              .toList();

          if (lines.isNotEmpty) {
            blocks.add(lines.join('\n'));
          }
        }

        if (blocks.isNotEmpty) {
          pages.add(blocks.join('\n\n'));
        }
      }

      return pages.join('\n\n──────────\n\n');
    } finally {
      await textRecognizer.close();
    }
  }
}
