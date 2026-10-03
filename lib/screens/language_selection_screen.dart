import 'package:flutter/material.dart';

import '../l10n/app_localizations.dart';

class LanguageSelectionScreen extends StatefulWidget {
  final Locale currentLocale;
  final void Function(Locale locale) onLanguageChanged;
  final Future<void> Function(Locale locale) onContinue;

  const LanguageSelectionScreen({
    super.key,
    required this.currentLocale,
    required this.onLanguageChanged,
    required this.onContinue,
  });

  @override
  State<LanguageSelectionScreen> createState() =>
      _LanguageSelectionScreenState();
}

class _LanguageSelectionScreenState
    extends State<LanguageSelectionScreen> {
  late String _selectedLanguage;
  bool _saving = false;

  @override
  void initState() {
    super.initState();

    _selectedLanguage =
        widget.currentLocale.languageCode;
  }

  void _selectLanguage(String code) {
    if (_selectedLanguage == code) {
      return;
    }

    setState(() {
      _selectedLanguage = code;
    });

    // Immediately updates MaterialApp locale.
    widget.onLanguageChanged(
      Locale(code),
    );
  }

  Future<void> _continue() async {
    if (_saving) return;

    setState(() {
      _saving = true;
    });

    await widget.onContinue(
      Locale(_selectedLanguage),
    );

    if (!mounted) return;

    setState(() {
      _saving = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              const Spacer(),

              Container(
                width: 110,
                height: 110,
                decoration: BoxDecoration(
                  color: Theme.of(context)
                      .colorScheme
                      .primaryContainer,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Icon(
                  Icons.document_scanner_outlined,
                  size: 60,
                  color:
                  Theme.of(context).colorScheme.primary,
                ),
              ),

              const SizedBox(height: 30),

              Text(
                l10n.selectLanguage,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 8),

              Text(
                l10n.selectLanguageSubtitle,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey.shade600,
                ),
              ),

              const SizedBox(height: 35),

              _languageCard(
                code: 'en',
                flag: '🇺🇸',
                title: l10n.english,
              ),

              const SizedBox(height: 14),

              _languageCard(
                code: 'tr',
                flag: '🇹🇷',
                title: l10n.turkish,
              ),

              const Spacer(),

              SizedBox(
                width: double.infinity,
                height: 56,
                child: FilledButton(
                  onPressed:
                  _saving ? null : _continue,
                  child: _saving
                      ? const SizedBox(
                    width: 22,
                    height: 22,
                    child:
                    CircularProgressIndicator(
                      strokeWidth: 2,
                    ),
                  )
                      : Text(
                    l10n.continueButton,
                    style: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }

  Widget _languageCard({
    required String code,
    required String flag,
    required String title,
  }) {
    final selected =
        _selectedLanguage == code;

    return InkWell(
      borderRadius: BorderRadius.circular(18),
      onTap: () {
        _selectLanguage(code);
      },
      child: AnimatedContainer(
        duration: const Duration(
          milliseconds: 200,
        ),
        padding: const EdgeInsets.all(18),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          border: Border.all(
            color: selected
                ? Theme.of(context)
                .colorScheme
                .primary
                : Colors.grey.shade300,
            width: selected ? 2 : 1,
          ),
          color: selected
              ? Theme.of(context)
              .colorScheme
              .primaryContainer
              .withValues(alpha: 0.35)
              : null,
        ),
        child: Row(
          children: [
            Text(
              flag,
              style: const TextStyle(
                fontSize: 30,
              ),
            ),

            const SizedBox(width: 16),

            Expanded(
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),

            if (selected)
              Icon(
                Icons.check_circle,
                color: Theme.of(context)
                    .colorScheme
                    .primary,
              ),
          ],
        ),
      ),
    );
  }
}