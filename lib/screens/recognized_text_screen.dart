
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:share_plus/share_plus.dart';

class RecognizedTextScreen extends StatelessWidget {
  final String recognizedText;

  const RecognizedTextScreen({
    super.key,
    required this.recognizedText,
  });

  @override
  Widget build(BuildContext context) {
    final hasText = recognizedText.trim().isNotEmpty;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Recognized Text'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Expanded(
                child: hasText
                    ? SingleChildScrollView(
                  child: SelectableText(
                    recognizedText,
                    style: const TextStyle(
                      fontSize: 16,
                      height: 1.5,
                    ),
                  ),
                )
                    : const Center(
                  child: Text(
                    'No text was found in this document.',
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              if (hasText) ...[
                const SizedBox(height: 16),
                SizedBox(
                  width: double.infinity,
                  child: FilledButton.icon(
                    onPressed: () async {
                      await Clipboard.setData(
                        ClipboardData(text: recognizedText),
                      );

                      if (!context.mounted) return;

                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Text copied!'),
                        ),
                      );
                    },
                    icon: const Icon(Icons.copy_outlined),
                    label: const Text('Copy Text'),
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton.icon(
                    onPressed: () async {
                      final box =
                      context.findRenderObject() as RenderBox?;

                      await SharePlus.instance.share(
                        ShareParams(
                          text: recognizedText,
                          sharePositionOrigin: box == null
                              ? null
                              : box.localToGlobal(Offset.zero) &
                          box.size,
                        ),
                      );
                    },
                    icon: const Icon(Icons.share_outlined),
                    label: const Text('Share Text'),
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
