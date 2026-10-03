import 'package:flutter/material.dart';

import '../l10n/app_localizations.dart';

class SettingsScreen extends StatelessWidget {
  final Locale currentLocale;
  final Future<void> Function(Locale locale) onLanguageChanged;

  const SettingsScreen({
    super.key,
    required this.currentLocale,
    required this.onLanguageChanged,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          l10n.settings,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Text(
            l10n.language,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),

          const SizedBox(height: 10),

          Card(
            child: RadioGroup<String>(
              groupValue: currentLocale.languageCode,
              onChanged: (value) async {
                if (value == null) return;

                await onLanguageChanged(
                  Locale(value),
                );
              },
              child: Column(
                children: [
                  RadioListTile<String>(
                    value: 'en',
                    title: Text(
                      l10n.english,
                    ),
                    secondary: const Text(
                      '🇺🇸',
                      style: TextStyle(
                        fontSize: 26,
                      ),
                    ),
                  ),

                  const Divider(
                    height: 1,
                  ),

                  RadioListTile<String>(
                    value: 'tr',
                    title: Text(
                      l10n.turkish,
                    ),
                    secondary: const Text(
                      '🇹🇷',
                      style: TextStyle(
                        fontSize: 26,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}