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

  @override
  String get documentName => 'Document Name';

  @override
  String get documentNameHint => 'Enter document name';

  @override
  String get cancel => 'Cancel';

  @override
  String get save => 'Save';

  @override
  String get documentSaved => 'Document saved successfully';

  @override
  String get saveFailed => 'Could not save document';

  @override
  String pageCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count pages',
      one: '1 page',
    );
    return '$_temp0';
  }

  @override
  String get noDocuments => 'No saved documents yet';

  @override
  String get renameDocument => 'Rename Document';

  @override
  String get deleteDocument => 'Delete Document';

  @override
  String get newDocumentName => 'New document name';

  @override
  String get deleteDocumentTitle => 'Delete Document?';

  @override
  String get deleteDocumentMessage => 'This document and all of its pages will be permanently deleted.';

  @override
  String get delete => 'Delete';

  @override
  String get rename => 'Rename';

  @override
  String get saveAsPdf => 'Save as PDF';

  @override
  String get creatingPdf => 'Creating PDF...';

  @override
  String get pdfCreated => 'PDF created successfully';

  @override
  String get pdfCreateFailed => 'Could not create PDF';

  @override
  String get exportDocument => 'Export Document';

  @override
  String get chooseExportFormat => 'Choose Export Format';

  @override
  String get pdfFormat => 'PDF';

  @override
  String get pdfFormatDescription => 'Combine all pages into one PDF file';

  @override
  String get jpegFormat => 'JPEG';

  @override
  String get jpegFormatDescription => 'Export pages as JPEG images';

  @override
  String get pngFormat => 'PNG';

  @override
  String get pngFormatDescription => 'Export pages as PNG images';
}
