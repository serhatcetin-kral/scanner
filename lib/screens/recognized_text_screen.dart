
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:share_plus/share_plus.dart';

import '../l10n/app_localizations.dart';
import '../services/ocr_service.dart';

class RecognizedTextScreen extends StatefulWidget {
  final String recognizedText;
  final List<String>? imagePaths;

  const RecognizedTextScreen({
    super.key,
    required this.recognizedText,
    this.imagePaths,
  });

  @override
  State<RecognizedTextScreen> createState() =>
      _RecognizedTextScreenState();
}

class _RecognizedTextScreenState
    extends State<RecognizedTextScreen> {
  bool _preserveFormat = false;
  bool _loading = false;
  String? _formattedText;

  String get _displayText {
    if (_preserveFormat && _formattedText != null) {
      return _formattedText!;
    }
    return widget.recognizedText;
  }

  Future<void> _selectFormat(bool preserveFormat) async {
    if (_loading) return;

    if (!preserveFormat) {
      setState(() {
        _preserveFormat = false;
      });
      return;
    }

    if (_formattedText != null) {
      setState(() {
        _preserveFormat = true;
      });
      return;
    }

    final paths = widget.imagePaths;
    if (paths == null || paths.isEmpty) return;

    setState(() {
      _loading = true;
    });

    try {
      final text =
      await OcrService.recognizeFormattedText(paths);

      if (!mounted) return;

      setState(() {
        _formattedText = text;
        _preserveFormat = true;
      });
    } catch (e) {
      debugPrint('Formatted OCR error: $e');

      if (!mounted) return;

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            AppLocalizations.of(context)!.preserveFormatFailed,
          ),
        ),
      );
    } finally {
      if (mounted) {
        setState(() {
          _loading = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    final text = _displayText;
    final hasText = text.trim().isNotEmpty;

    final canPreserveFormat =
        widget.imagePaths != null &&
            widget.imagePaths!.isNotEmpty;

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.recognizedTextTitle),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              if (canPreserveFormat) ...[
                Row(
                  children: [
                    Expanded(
                      child: OutlinedButton(
                        onPressed: _loading
                            ? null
                            : () => _selectFormat(false),
                        child: Text(l10n.plainText),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: OutlinedButton(
                        onPressed: _loading
                            ? null
                            : () => _selectFormat(true),
                        child: Text(l10n.preserveFormat),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
              ],

              if (_loading)
                const LinearProgressIndicator(),

              Expanded(
                child: _loading
                    ? const Center(
                  child: CircularProgressIndicator(),
                )
                    : hasText
                    ? SingleChildScrollView(
                  child: SelectableText(
                    text,
                    style: const TextStyle(
                      fontSize: 16,
                      height: 1.5,
                    ),
                  ),
                )
                    : Center(
                  child: Text(
                    l10n.noTextFound,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),

              if (hasText && !_loading) ...[
                const SizedBox(height: 16),
                SizedBox(
                  width: double.infinity,
                  child: FilledButton.icon(
                    onPressed: () async {
                      await Clipboard.setData(
                        ClipboardData(text: text),
                      );

                      if (!context.mounted) return;

                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            AppLocalizations.of(context)!.textCopied,
                          ),
                        ),
                      );
                    },
                    icon: const Icon(Icons.copy_outlined),
                    label: Text(l10n.copyText),
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
                          text: text,
                          sharePositionOrigin: box == null
                              ? null
                              : box.localToGlobal(Offset.zero) &
                          box.size,
                        ),
                      );
                    },
                    icon: const Icon(Icons.share_outlined),
                    label: Text(l10n.shareText),
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
