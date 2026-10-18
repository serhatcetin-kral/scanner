// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Polish (`pl`).
class AppLocalizationsPl extends AppLocalizations {
  AppLocalizationsPl([String locale = 'pl']) : super(locale);

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

  @override
  String get myDocuments => 'My Documents';

  @override
  String get searchDocuments => 'Search documents...';

  @override
  String get clearSearch => 'Clear search';

  @override
  String get noMatchingDocuments => 'No matching documents.';

  @override
  String get sortDocuments => 'Sort documents';

  @override
  String get newestFirst => 'Newest first';

  @override
  String get oldestFirst => 'Oldest first';

  @override
  String get sortAZ => 'A–Z';

  @override
  String get scanFirstDocument => 'Scan your first document or import photos to get started.';

  @override
  String get shareApp => 'Share App';

  @override
  String get rateApp => 'Rate App';

  @override
  String get checkForUpdates => 'Check for Updates';

  @override
  String get help => 'Help';

  @override
  String get howToUse => 'How to Use';

  @override
  String get howToUseSubtitle => 'Learn how to scan, edit, save, and share';

  @override
  String get howToUseIntro => 'Scan, organize, edit, and share your documents in just a few steps.';

  @override
  String get howToScanTitle => 'Scan or Import';

  @override
  String get howToScanDescription => 'Scan a document with your camera or import one or more photos from your photo library.';

  @override
  String get howToEditTitle => 'Review & Edit';

  @override
  String get howToEditDescription => 'Crop, rotate, add, delete, or reorder pages before saving.';

  @override
  String get howToSaveTitle => 'Save Your Document';

  @override
  String get howToSaveDescription => 'Give your document a name and save it securely inside the app.';

  @override
  String get howToManageTitle => 'Manage Documents';

  @override
  String get howToManageDescription => 'Open, search, rename, edit, or delete your saved documents.';

  @override
  String get howToExportTitle => 'Share & Export';

  @override
  String get howToUseTip => 'Tip: Your saved documents stay inside Document Scanner until you choose to export, share, or delete them.';

  @override
  String get howToExportDescription => 'You can share your documents anytime in PDF, JPEG, or PNG format through other apps.';

  @override
  String get recognizeText => 'Recognize Text';

  @override
  String get editPage => 'Edit Page';

  @override
  String get editPages => 'Edit Pages';

  @override
  String get searchablePdf => 'Searchable PDF';

  @override
  String get searchablePdfDescription => 'Original scanned pages with searchable text';

  @override
  String get searchablePdfFailed => 'Could not create searchable PDF.';

  @override
  String get imageExportFailed => 'Could not export images.';

  @override
  String get recognizeTextFailed => 'Could not recognize text.';

  @override
  String get recognizedTextTitle => 'Recognized Text';

  @override
  String get plainText => 'Plain Text';

  @override
  String get preserveFormat => 'Preserve Format';

  @override
  String get preserveFormatFailed => 'Could not preserve text formatting.';

  @override
  String get noTextFound => 'No text was found in this document.';

  @override
  String get textCopied => 'Text copied!';

  @override
  String get copyText => 'Copy Text';

  @override
  String get shareText => 'Share Text';

  @override
  String get cropDocument => 'Crop Document';

  @override
  String get crop => 'Crop';

  @override
  String get rotate => 'Rotate';

  @override
  String get addPage => 'Add Page';

  @override
  String get scanNewPage => 'Scan New Page';

  @override
  String get useDocumentScanner => 'Use the document scanner';

  @override
  String get chooseFromPhotos => 'Choose from Photos';

  @override
  String get selectOneOrMorePhotos => 'Select one or more photos';

  @override
  String get reorder => 'Reorder';

  @override
  String get reorderPages => 'Reorder Pages';

  @override
  String get deleteCurrentPage => 'Delete Current Page';

  @override
  String get deletePageTitle => 'Delete Page?';

  @override
  String get deletePageMessage => 'This page will be removed from the document.';

  @override
  String get saveChanges => 'Save Changes';

  @override
  String get savingChanges => 'Saving...';

  @override
  String get dragToReorder => 'Drag to reorder';

  @override
  String get cropImageFailed => 'Could not crop image.';

  @override
  String get rotateImageFailed => 'Could not rotate image.';

  @override
  String get addScannedPageFailed => 'Could not add scanned page.';

  @override
  String get addPhotoFailed => 'Could not add photo.';

  @override
  String get saveChangesFailed => 'Could not save changes.';

  @override
  String get done => 'Done';
}
