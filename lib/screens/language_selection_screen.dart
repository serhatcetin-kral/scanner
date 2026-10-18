
import 'package:flutter/material.dart';

import '../l10n/app_localizations.dart';
import '../models/app_language.dart';
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

 const List<AppLanguage> _languages =
    AppLanguage.all;

class _LanguageSelectionScreenState
    extends State<LanguageSelectionScreen> {
  late String _selectedLanguage;
  bool _saving = false;



  @override
  void initState() {
    super.initState();
    _selectedLanguage = _localeCode(widget.currentLocale);
  }

  String _localeCode(Locale locale) {
    if (locale.countryCode == null ||
        locale.countryCode!.isEmpty) {
      return locale.languageCode;
    }

    return '${locale.languageCode}_${locale.countryCode}';
  }

  Locale _localeFromCode(String code) {
    final parts = code.split('_');

    if (parts.length == 2) {
      return Locale(parts[0], parts[1]);
    }

    return Locale(code);
  }

  void _selectLanguage(String code) {
    if (_selectedLanguage == code || _saving) return;

    setState(() {
      _selectedLanguage = code;
    });

    widget.onLanguageChanged(_localeFromCode(code));
  }

  Future<void> _continue() async {
    if (_saving) return;

    setState(() {
      _saving = true;
    });

    try {
      await widget.onContinue(
        _localeFromCode(_selectedLanguage),
      );
    } finally {
      if (mounted) {
        setState(() {
          _saving = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24, 16, 24, 16),
          child: Column(
            children: [
              const SizedBox(height: 12),

              Container(
                width: 86,
                height: 86,
                decoration: BoxDecoration(
                  color: colorScheme.primaryContainer,
                  borderRadius: BorderRadius.circular(26),
                ),
                child: Icon(
                  Icons.document_scanner_outlined,
                  size: 48,
                  color: colorScheme.primary,
                ),
              ),

              const SizedBox(height: 20),

              Text(
                l10n.selectLanguage,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 27,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 8),

              Text(
                l10n.selectLanguageSubtitle,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  color: colorScheme.onSurfaceVariant,
                ),
              ),

              const SizedBox(height: 20),

              Expanded(
                child: ListView.separated(
                  itemCount: _languages.length,
                  separatorBuilder: (_, _) =>
                  const SizedBox(height: 10),
                  itemBuilder: (context, index) {
                    final language = _languages[index];

                    return _languageCard(
                      code: language.code,
                      flag: language.flag,
                      title: language.name,
                    );
                  },
                ),
              ),

              const SizedBox(height: 16),

              SizedBox(
                width: double.infinity,
                height: 56,
                child: FilledButton(
                  onPressed: _saving ? null : _continue,
                  child: _saving
                      ? const SizedBox(
                    width: 22,
                    height: 22,
                    child: CircularProgressIndicator(
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
    final selected = _selectedLanguage == code;
    final colorScheme = Theme.of(context).colorScheme;

    return InkWell(
      borderRadius: BorderRadius.circular(18),
      onTap: () => _selectLanguage(code),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          border: Border.all(
            color: selected
                ? colorScheme.primary
                : colorScheme.outlineVariant,
            width: selected ? 2 : 1,
          ),
          color: selected
              ? colorScheme.primaryContainer.withValues(
            alpha: 0.35,
          )
              : null,
        ),
        child: Row(
          children: [
            Text(
              flag,
              style: const TextStyle(fontSize: 28),
            ),

            const SizedBox(width: 16),

            Expanded(
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),

            if (selected)
              Icon(
                Icons.check_circle,
                color: colorScheme.primary,
              ),
          ],
        ),
      ),
    );
  }
}
