import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_tr.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('tr')
  ];

  /// No description provided for @appName.
  ///
  /// In en, this message translates to:
  /// **'Document Scanner'**
  String get appName;

  /// No description provided for @selectLanguage.
  ///
  /// In en, this message translates to:
  /// **'Select Language'**
  String get selectLanguage;

  /// No description provided for @selectLanguageSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Choose your preferred language'**
  String get selectLanguageSubtitle;

  /// No description provided for @english.
  ///
  /// In en, this message translates to:
  /// **'English'**
  String get english;

  /// No description provided for @turkish.
  ///
  /// In en, this message translates to:
  /// **'Türkçe'**
  String get turkish;

  /// No description provided for @continueButton.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get continueButton;

  /// No description provided for @scanDocuments.
  ///
  /// In en, this message translates to:
  /// **'Scan Documents'**
  String get scanDocuments;

  /// No description provided for @scanDescription.
  ///
  /// In en, this message translates to:
  /// **'Scan documents and turn them into clean digital files.'**
  String get scanDescription;

  /// No description provided for @scanDocument.
  ///
  /// In en, this message translates to:
  /// **'Scan Document'**
  String get scanDocument;

  /// No description provided for @importFromPhotos.
  ///
  /// In en, this message translates to:
  /// **'Import from Photos'**
  String get importFromPhotos;

  /// No description provided for @emptyDocuments.
  ///
  /// In en, this message translates to:
  /// **'Your scanned documents will appear here.'**
  String get emptyDocuments;

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// No description provided for @language.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get language;

  /// No description provided for @documents.
  ///
  /// In en, this message translates to:
  /// **'Documents'**
  String get documents;

  /// No description provided for @recentScans.
  ///
  /// In en, this message translates to:
  /// **'Recent Scans'**
  String get recentScans;

  /// No description provided for @reviewScan.
  ///
  /// In en, this message translates to:
  /// **'Review Scan'**
  String get reviewScan;

  /// No description provided for @page.
  ///
  /// In en, this message translates to:
  /// **'Page'**
  String get page;

  /// No description provided for @deletePage.
  ///
  /// In en, this message translates to:
  /// **'Delete Page'**
  String get deletePage;

  /// No description provided for @saveDocument.
  ///
  /// In en, this message translates to:
  /// **'Save Document'**
  String get saveDocument;

  /// No description provided for @documentName.
  ///
  /// In en, this message translates to:
  /// **'Document Name'**
  String get documentName;

  /// No description provided for @documentNameHint.
  ///
  /// In en, this message translates to:
  /// **'Enter document name'**
  String get documentNameHint;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @save.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get save;

  /// No description provided for @documentSaved.
  ///
  /// In en, this message translates to:
  /// **'Document saved successfully'**
  String get documentSaved;

  /// No description provided for @saveFailed.
  ///
  /// In en, this message translates to:
  /// **'Could not save document'**
  String get saveFailed;

  /// No description provided for @pageCount.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 page} other{{count} pages}}'**
  String pageCount(num count);

  /// No description provided for @noDocuments.
  ///
  /// In en, this message translates to:
  /// **'No saved documents yet'**
  String get noDocuments;

  /// No description provided for @renameDocument.
  ///
  /// In en, this message translates to:
  /// **'Rename Document'**
  String get renameDocument;

  /// No description provided for @deleteDocument.
  ///
  /// In en, this message translates to:
  /// **'Delete Document'**
  String get deleteDocument;

  /// No description provided for @newDocumentName.
  ///
  /// In en, this message translates to:
  /// **'New document name'**
  String get newDocumentName;

  /// No description provided for @deleteDocumentTitle.
  ///
  /// In en, this message translates to:
  /// **'Delete Document?'**
  String get deleteDocumentTitle;

  /// No description provided for @deleteDocumentMessage.
  ///
  /// In en, this message translates to:
  /// **'This document and all of its pages will be permanently deleted.'**
  String get deleteDocumentMessage;

  /// No description provided for @delete.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get delete;

  /// No description provided for @rename.
  ///
  /// In en, this message translates to:
  /// **'Rename'**
  String get rename;

  /// No description provided for @saveAsPdf.
  ///
  /// In en, this message translates to:
  /// **'Save as PDF'**
  String get saveAsPdf;

  /// No description provided for @creatingPdf.
  ///
  /// In en, this message translates to:
  /// **'Creating PDF...'**
  String get creatingPdf;

  /// No description provided for @pdfCreated.
  ///
  /// In en, this message translates to:
  /// **'PDF created successfully'**
  String get pdfCreated;

  /// No description provided for @pdfCreateFailed.
  ///
  /// In en, this message translates to:
  /// **'Could not create PDF'**
  String get pdfCreateFailed;

  /// No description provided for @exportDocument.
  ///
  /// In en, this message translates to:
  /// **'Export Document'**
  String get exportDocument;

  /// No description provided for @chooseExportFormat.
  ///
  /// In en, this message translates to:
  /// **'Choose Export Format'**
  String get chooseExportFormat;

  /// No description provided for @pdfFormat.
  ///
  /// In en, this message translates to:
  /// **'PDF'**
  String get pdfFormat;

  /// No description provided for @pdfFormatDescription.
  ///
  /// In en, this message translates to:
  /// **'Combine all pages into one PDF file'**
  String get pdfFormatDescription;

  /// No description provided for @jpegFormat.
  ///
  /// In en, this message translates to:
  /// **'JPEG'**
  String get jpegFormat;

  /// No description provided for @jpegFormatDescription.
  ///
  /// In en, this message translates to:
  /// **'Export pages as JPEG images'**
  String get jpegFormatDescription;

  /// No description provided for @pngFormat.
  ///
  /// In en, this message translates to:
  /// **'PNG'**
  String get pngFormat;

  /// No description provided for @pngFormatDescription.
  ///
  /// In en, this message translates to:
  /// **'Export pages as PNG images'**
  String get pngFormatDescription;

  /// No description provided for @myDocuments.
  ///
  /// In en, this message translates to:
  /// **'My Documents'**
  String get myDocuments;

  /// No description provided for @searchDocuments.
  ///
  /// In en, this message translates to:
  /// **'Search documents...'**
  String get searchDocuments;

  /// No description provided for @clearSearch.
  ///
  /// In en, this message translates to:
  /// **'Clear search'**
  String get clearSearch;

  /// No description provided for @noMatchingDocuments.
  ///
  /// In en, this message translates to:
  /// **'No matching documents.'**
  String get noMatchingDocuments;

  /// No description provided for @sortDocuments.
  ///
  /// In en, this message translates to:
  /// **'Sort documents'**
  String get sortDocuments;

  /// No description provided for @newestFirst.
  ///
  /// In en, this message translates to:
  /// **'Newest first'**
  String get newestFirst;

  /// No description provided for @oldestFirst.
  ///
  /// In en, this message translates to:
  /// **'Oldest first'**
  String get oldestFirst;

  /// No description provided for @sortAZ.
  ///
  /// In en, this message translates to:
  /// **'A–Z'**
  String get sortAZ;

  /// No description provided for @scanFirstDocument.
  ///
  /// In en, this message translates to:
  /// **'Scan your first document or import photos to get started.'**
  String get scanFirstDocument;

  /// No description provided for @shareApp.
  ///
  /// In en, this message translates to:
  /// **'Share App'**
  String get shareApp;

  /// No description provided for @rateApp.
  ///
  /// In en, this message translates to:
  /// **'Rate App'**
  String get rateApp;

  /// No description provided for @checkForUpdates.
  ///
  /// In en, this message translates to:
  /// **'Check for Updates'**
  String get checkForUpdates;

  /// No description provided for @help.
  ///
  /// In en, this message translates to:
  /// **'Help'**
  String get help;

  /// No description provided for @howToUse.
  ///
  /// In en, this message translates to:
  /// **'How to Use'**
  String get howToUse;

  /// No description provided for @howToUseSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Learn how to scan, edit, save, and share'**
  String get howToUseSubtitle;

  /// No description provided for @howToUseIntro.
  ///
  /// In en, this message translates to:
  /// **'Scan, organize, edit, and share your documents in just a few steps.'**
  String get howToUseIntro;

  /// No description provided for @howToScanTitle.
  ///
  /// In en, this message translates to:
  /// **'Scan or Import'**
  String get howToScanTitle;

  /// No description provided for @howToScanDescription.
  ///
  /// In en, this message translates to:
  /// **'Scan a document with your camera or import one or more photos from your photo library.'**
  String get howToScanDescription;

  /// No description provided for @howToEditTitle.
  ///
  /// In en, this message translates to:
  /// **'Review & Edit'**
  String get howToEditTitle;

  /// No description provided for @howToEditDescription.
  ///
  /// In en, this message translates to:
  /// **'Crop, rotate, add, delete, or reorder pages before saving.'**
  String get howToEditDescription;

  /// No description provided for @howToSaveTitle.
  ///
  /// In en, this message translates to:
  /// **'Save Your Document'**
  String get howToSaveTitle;

  /// No description provided for @howToSaveDescription.
  ///
  /// In en, this message translates to:
  /// **'Give your document a name and save it securely inside the app.'**
  String get howToSaveDescription;

  /// No description provided for @howToManageTitle.
  ///
  /// In en, this message translates to:
  /// **'Manage Documents'**
  String get howToManageTitle;

  /// No description provided for @howToManageDescription.
  ///
  /// In en, this message translates to:
  /// **'Open, search, rename, edit, or delete your saved documents.'**
  String get howToManageDescription;

  /// No description provided for @howToExportTitle.
  ///
  /// In en, this message translates to:
  /// **'Share & Export'**
  String get howToExportTitle;

  /// No description provided for @howToUseTip.
  ///
  /// In en, this message translates to:
  /// **'Tip: Your saved documents stay inside Document Scanner until you choose to export, share, or delete them.'**
  String get howToUseTip;

  /// No description provided for @howToExportDescription.
  ///
  /// In en, this message translates to:
  /// **'You can share your documents anytime in PDF, JPEG, or PNG format through other apps.'**
  String get howToExportDescription;

  /// No description provided for @recognizeText.
  ///
  /// In en, this message translates to:
  /// **'Recognize Text'**
  String get recognizeText;

  /// No description provided for @editPage.
  ///
  /// In en, this message translates to:
  /// **'Edit Page'**
  String get editPage;

  /// No description provided for @editPages.
  ///
  /// In en, this message translates to:
  /// **'Edit Pages'**
  String get editPages;

  /// No description provided for @searchablePdf.
  ///
  /// In en, this message translates to:
  /// **'Searchable PDF'**
  String get searchablePdf;

  /// No description provided for @searchablePdfDescription.
  ///
  /// In en, this message translates to:
  /// **'Original scanned pages with searchable text'**
  String get searchablePdfDescription;

  /// No description provided for @searchablePdfFailed.
  ///
  /// In en, this message translates to:
  /// **'Could not create searchable PDF.'**
  String get searchablePdfFailed;

  /// No description provided for @imageExportFailed.
  ///
  /// In en, this message translates to:
  /// **'Could not export images.'**
  String get imageExportFailed;

  /// No description provided for @recognizeTextFailed.
  ///
  /// In en, this message translates to:
  /// **'Could not recognize text.'**
  String get recognizeTextFailed;

  /// No description provided for @recognizedTextTitle.
  ///
  /// In en, this message translates to:
  /// **'Recognized Text'**
  String get recognizedTextTitle;

  /// No description provided for @plainText.
  ///
  /// In en, this message translates to:
  /// **'Plain Text'**
  String get plainText;

  /// No description provided for @preserveFormat.
  ///
  /// In en, this message translates to:
  /// **'Preserve Format'**
  String get preserveFormat;

  /// No description provided for @preserveFormatFailed.
  ///
  /// In en, this message translates to:
  /// **'Could not preserve text formatting.'**
  String get preserveFormatFailed;

  /// No description provided for @noTextFound.
  ///
  /// In en, this message translates to:
  /// **'No text was found in this document.'**
  String get noTextFound;

  /// No description provided for @textCopied.
  ///
  /// In en, this message translates to:
  /// **'Text copied!'**
  String get textCopied;

  /// No description provided for @copyText.
  ///
  /// In en, this message translates to:
  /// **'Copy Text'**
  String get copyText;

  /// No description provided for @shareText.
  ///
  /// In en, this message translates to:
  /// **'Share Text'**
  String get shareText;

  /// No description provided for @cropDocument.
  ///
  /// In en, this message translates to:
  /// **'Crop Document'**
  String get cropDocument;

  /// No description provided for @crop.
  ///
  /// In en, this message translates to:
  /// **'Crop'**
  String get crop;

  /// No description provided for @rotate.
  ///
  /// In en, this message translates to:
  /// **'Rotate'**
  String get rotate;

  /// No description provided for @addPage.
  ///
  /// In en, this message translates to:
  /// **'Add Page'**
  String get addPage;

  /// No description provided for @scanNewPage.
  ///
  /// In en, this message translates to:
  /// **'Scan New Page'**
  String get scanNewPage;

  /// No description provided for @useDocumentScanner.
  ///
  /// In en, this message translates to:
  /// **'Use the document scanner'**
  String get useDocumentScanner;

  /// No description provided for @chooseFromPhotos.
  ///
  /// In en, this message translates to:
  /// **'Choose from Photos'**
  String get chooseFromPhotos;

  /// No description provided for @selectOneOrMorePhotos.
  ///
  /// In en, this message translates to:
  /// **'Select one or more photos'**
  String get selectOneOrMorePhotos;

  /// No description provided for @reorder.
  ///
  /// In en, this message translates to:
  /// **'Reorder'**
  String get reorder;

  /// No description provided for @reorderPages.
  ///
  /// In en, this message translates to:
  /// **'Reorder Pages'**
  String get reorderPages;

  /// No description provided for @deleteCurrentPage.
  ///
  /// In en, this message translates to:
  /// **'Delete Current Page'**
  String get deleteCurrentPage;

  /// No description provided for @deletePageTitle.
  ///
  /// In en, this message translates to:
  /// **'Delete Page?'**
  String get deletePageTitle;

  /// No description provided for @deletePageMessage.
  ///
  /// In en, this message translates to:
  /// **'This page will be removed from the document.'**
  String get deletePageMessage;

  /// No description provided for @saveChanges.
  ///
  /// In en, this message translates to:
  /// **'Save Changes'**
  String get saveChanges;

  /// No description provided for @savingChanges.
  ///
  /// In en, this message translates to:
  /// **'Saving...'**
  String get savingChanges;

  /// No description provided for @dragToReorder.
  ///
  /// In en, this message translates to:
  /// **'Drag to reorder'**
  String get dragToReorder;

  /// No description provided for @cropImageFailed.
  ///
  /// In en, this message translates to:
  /// **'Could not crop image.'**
  String get cropImageFailed;

  /// No description provided for @rotateImageFailed.
  ///
  /// In en, this message translates to:
  /// **'Could not rotate image.'**
  String get rotateImageFailed;

  /// No description provided for @addScannedPageFailed.
  ///
  /// In en, this message translates to:
  /// **'Could not add scanned page.'**
  String get addScannedPageFailed;

  /// No description provided for @addPhotoFailed.
  ///
  /// In en, this message translates to:
  /// **'Could not add photo.'**
  String get addPhotoFailed;

  /// No description provided for @saveChangesFailed.
  ///
  /// In en, this message translates to:
  /// **'Could not save changes.'**
  String get saveChangesFailed;

  /// No description provided for @done.
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get done;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'tr'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
    case 'tr': return AppLocalizationsTr();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
