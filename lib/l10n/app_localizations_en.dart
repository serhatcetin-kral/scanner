// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appName => 'Document Scanner';

  @override
  String get selectLanguage => 'Select Language';

  @override
  String get selectLanguageSubtitle => 'Choose your preferred language';

  @override
  String get english => 'English';

  @override
  String get turkish => 'Türkçe';

  @override
  String get continueButton => 'Continue';

  @override
  String get scanDocuments => 'Scan Documents';

  @override
  String get scanDescription => 'Scan documents and turn them into clean digital files.';

  @override
  String get scanDocument => 'Scan Document';

  @override
  String get importFromPhotos => 'Import from Photos';

  @override
  String get emptyDocuments => 'Your scanned documents will appear here.';

  @override
  String get settings => 'Settings';

  @override
  String get language => 'Language';

  @override
  String get documents => 'Documents';

  @override
  String get recentScans => 'Recent Scans';

  @override
  String get reviewScan => 'Review Scan';

  @override
  String get page => 'Page';

  @override
  String get deletePage => 'Delete Page';

  @override
  String get saveDocument => 'Save Document';
}
