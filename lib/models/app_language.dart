
import 'package:flutter/material.dart';

class AppLanguage {
  final String code;
  final String flag;
  final String name;

  const AppLanguage({
    required this.code,
    required this.flag,
    required this.name,
  });

  Locale get locale {
    final parts = code.split('_');

    return Locale(
      parts[0],
      parts.length > 1 ? parts[1] : null,
    );
  }

  static String codeFromLocale(Locale locale) {
    final country = locale.countryCode;

    if (country == null || country.isEmpty) {
      return locale.languageCode;
    }

    return '${locale.languageCode}_$country';
  }

  static const List<AppLanguage> all = [
    AppLanguage(code: 'en', flag: '🇺🇸', name: 'English'),
    AppLanguage(code: 'tr', flag: '🇹🇷', name: 'Türkçe'),
    AppLanguage(code: 'ar', flag: '🇸🇦', name: 'العربية'),
    AppLanguage(code: 'es', flag: '🇪🇸', name: 'Español'),
    AppLanguage(code: 'fr', flag: '🇫🇷', name: 'Français'),
    AppLanguage(code: 'de', flag: '🇩🇪', name: 'Deutsch'),
    AppLanguage(code: 'it', flag: '🇮🇹', name: 'Italiano'),
    AppLanguage(
      code: 'pt_BR',
      flag: '🇧🇷',
      name: 'Português (Brasil)',
    ),
    AppLanguage(
      code: 'pt_PT',
      flag: '🇵🇹',
      name: 'Português (Portugal)',
    ),
    AppLanguage(code: 'hi', flag: '🇮🇳', name: 'हिन्दी'),
    AppLanguage(code: 'ur', flag: '🇵🇰', name: 'اردو'),
    AppLanguage(code: 'ru', flag: '🇷🇺', name: 'Русский'),
    AppLanguage(code: 'zh_CN', flag: '🇨🇳', name: '简体中文'),
    AppLanguage(code: 'bn', flag: '🇧🇩', name: 'বাংলা'),
    AppLanguage(
      code: 'id',
      flag: '🇮🇩',
      name: 'Bahasa Indonesia',
    ),
    AppLanguage(
      code: 'ms',
      flag: '🇲🇾',
      name: 'Bahasa Melayu',
    ),
    AppLanguage(code: 'ja', flag: '🇯🇵', name: '日本語'),
    AppLanguage(code: 'ko', flag: '🇰🇷', name: '한국어'),
    AppLanguage(code: 'nl', flag: '🇳🇱', name: 'Nederlands'),
    AppLanguage(code: 'pl', flag: '🇵🇱', name: 'Polski'),
    AppLanguage(code: 'sv', flag: '🇸🇪', name: 'Svenska'),
    AppLanguage(code: 'fi', flag: '🇫🇮', name: 'Suomi'),
    AppLanguage(code: 'da', flag: '🇩🇰', name: 'Dansk'),
    AppLanguage(code: 'kk', flag: '🇰🇿', name: 'Қазақша'),
    AppLanguage(code: 'th', flag: '🇹🇭', name: 'ไทย'),
    AppLanguage(code: 'sq', flag: '🇦🇱', name: 'Shqip'),
    AppLanguage(code: 'uk', flag: '🇺🇦', name: 'Українська'),
    AppLanguage(
      code: 'nb',
      flag: '🇳🇴',
      name: 'Norsk (Bokmål)',
    ),
  ];
}
