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
