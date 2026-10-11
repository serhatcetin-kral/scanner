
import 'package:google_mlkit_text_recognition/google_mlkit_text_recognition.dart';

class OcrService {
  static Future<String> recognizeText(List<String> imagePaths) async {
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
}
