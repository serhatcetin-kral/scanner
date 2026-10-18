// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Danish (`da`).
class AppLocalizationsDa extends AppLocalizations {
  AppLocalizationsDa([String locale = 'da']) : super(locale);

  @override
  String get appName => 'Dokumentscanner';

  @override
  String get selectLanguage => 'Vælg sprog';

  @override
  String get selectLanguageSubtitle => 'Vælg dit foretrukne sprog';

  @override
  String get english => 'English';

  @override
  String get turkish => 'Türkçe';

  @override
  String get continueButton => 'Fortsæt';

  @override
  String get scanDocuments => 'Scan dokumenter';

  @override
  String get scanDescription => 'Scan dokumenter, og omdan dem til tydelige digitale filer.';

  @override
  String get scanDocument => 'Scan dokument';

  @override
  String get importFromPhotos => 'Importer fra Fotos';

  @override
  String get emptyDocuments => 'Dine scannede dokumenter vises her.';

  @override
  String get settings => 'Indstillinger';

  @override
  String get language => 'Sprog';

  @override
  String get documents => 'Dokumenter';

  @override
  String get recentScans => 'Seneste scanninger';

  @override
  String get reviewScan => 'Gennemse scanning';

  @override
  String get page => 'Side';

  @override
  String get deletePage => 'Slet side';

  @override
  String get saveDocument => 'Gem dokument';

  @override
  String get documentName => 'Dokumentnavn';

  @override
  String get documentNameHint => 'Indtast dokumentnavn';

  @override
  String get cancel => 'Annuller';

  @override
  String get save => 'Gem';

  @override
  String get documentSaved => 'Dokumentet blev gemt';

  @override
  String get saveFailed => 'Dokumentet kunne ikke gemmes';

  @override
  String pageCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count sider',
      one: '1 side',
    );
    return '$_temp0';
  }

  @override
  String get noDocuments => 'Ingen gemte dokumenter endnu';

  @override
  String get renameDocument => 'Omdøb dokument';

  @override
  String get deleteDocument => 'Slet dokument';

  @override
  String get newDocumentName => 'Nyt dokumentnavn';

  @override
  String get deleteDocumentTitle => 'Slet dokument?';

  @override
  String get deleteDocumentMessage => 'Dette dokument og alle dets sider slettes permanent.';

  @override
  String get delete => 'Slet';

  @override
  String get rename => 'Omdøb';

  @override
  String get saveAsPdf => 'Gem som PDF';

  @override
  String get creatingPdf => 'Opretter PDF...';

  @override
  String get pdfCreated => 'PDF blev oprettet';

  @override
  String get pdfCreateFailed => 'PDF kunne ikke oprettes';

  @override
  String get exportDocument => 'Eksporter dokument';

  @override
  String get chooseExportFormat => 'Vælg eksportformat';

  @override
  String get pdfFormat => 'PDF';

  @override
  String get pdfFormatDescription => 'Saml alle sider i én PDF-fil';

  @override
  String get jpegFormat => 'JPEG';

  @override
  String get jpegFormatDescription => 'Eksporter sider som JPEG-billeder';

  @override
  String get pngFormat => 'PNG';

  @override
  String get pngFormatDescription => 'Eksporter sider som PNG-billeder';

  @override
  String get myDocuments => 'Mine dokumenter';

  @override
  String get searchDocuments => 'Søg i dokumenter...';

  @override
  String get clearSearch => 'Ryd søgning';

  @override
  String get noMatchingDocuments => 'Ingen dokumenter matcher søgningen.';

  @override
  String get sortDocuments => 'Sortér dokumenter';

  @override
  String get newestFirst => 'Nyeste først';

  @override
  String get oldestFirst => 'Ældste først';

  @override
  String get sortAZ => 'A–Å';

  @override
  String get scanFirstDocument => 'Scan dit første dokument, eller importer fotos for at komme i gang.';

  @override
  String get shareApp => 'Del app';

  @override
  String get rateApp => 'Bedøm app';

  @override
  String get checkForUpdates => 'Søg efter opdateringer';

  @override
  String get help => 'Hjælp';

  @override
  String get howToUse => 'Sådan bruger du appen';

  @override
  String get howToUseSubtitle => 'Lær at scanne, redigere, gemme og dele';

  @override
  String get howToUseIntro => 'Scan, organiser, rediger og del dine dokumenter i nogle få trin.';

  @override
  String get howToScanTitle => 'Scan eller importer';

  @override
  String get howToScanDescription => 'Scan et dokument med kameraet, eller importer et eller flere fotos fra dit fotobibliotek.';

  @override
  String get howToEditTitle => 'Gennemse og rediger';

  @override
  String get howToEditDescription => 'Beskær, roter, tilføj, slet eller omarranger sider, før du gemmer.';

  @override
  String get howToSaveTitle => 'Gem dit dokument';

  @override
  String get howToSaveDescription => 'Giv dokumentet et navn, og gem det sikkert i appen.';

  @override
  String get howToManageTitle => 'Administrer dokumenter';

  @override
  String get howToManageDescription => 'Åbn, søg, omdøb, rediger eller slet dine gemte dokumenter.';

  @override
  String get howToExportTitle => 'Del og eksporter';

  @override
  String get howToUseTip => 'Tip: Dine gemte dokumenter forbliver i Dokumentscanner, indtil du vælger at eksportere, dele eller slette dem.';

  @override
  String get howToExportDescription => 'Du kan til enhver tid dele dine dokumenter som PDF, JPEG eller PNG via andre apps.';

  @override
  String get recognizeText => 'Genkend tekst';

  @override
  String get editPage => 'Rediger side';

  @override
  String get editPages => 'Rediger sider';

  @override
  String get searchablePdf => 'Søgbar PDF';

  @override
  String get searchablePdfDescription => 'Originale scannede sider med søgbar tekst';

  @override
  String get searchablePdfFailed => 'Kunne ikke oprette søgbar PDF.';

  @override
  String get imageExportFailed => 'Kunne ikke eksportere billeder.';

  @override
  String get recognizeTextFailed => 'Kunne ikke genkende tekst.';

  @override
  String get recognizedTextTitle => 'Genkendt tekst';

  @override
  String get plainText => 'Ren tekst';

  @override
  String get preserveFormat => 'Bevar formatering';

  @override
  String get preserveFormatFailed => 'Kunne ikke bevare tekstformateringen.';

  @override
  String get noTextFound => 'Der blev ikke fundet tekst i dette dokument.';

  @override
  String get textCopied => 'Teksten er kopieret!';

  @override
  String get copyText => 'Kopiér tekst';

  @override
  String get shareText => 'Del tekst';

  @override
  String get cropDocument => 'Beskær dokument';

  @override
  String get crop => 'Beskær';

  @override
  String get rotate => 'Roter';

  @override
  String get addPage => 'Tilføj side';

  @override
  String get scanNewPage => 'Scan ny side';

  @override
  String get useDocumentScanner => 'Brug dokumentscanneren';

  @override
  String get chooseFromPhotos => 'Vælg fra Fotos';

  @override
  String get selectOneOrMorePhotos => 'Vælg et eller flere fotos';

  @override
  String get reorder => 'Omarranger';

  @override
  String get reorderPages => 'Omarranger sider';

  @override
  String get deleteCurrentPage => 'Slet den aktuelle side';

  @override
  String get deletePageTitle => 'Slet side?';

  @override
  String get deletePageMessage => 'Denne side fjernes fra dokumentet.';

  @override
  String get saveChanges => 'Gem ændringer';

  @override
  String get savingChanges => 'Gemmer...';

  @override
  String get dragToReorder => 'Træk for at ændre rækkefølgen';

  @override
  String get cropImageFailed => 'Kunne ikke beskære billedet.';

  @override
  String get rotateImageFailed => 'Kunne ikke rotere billedet.';

  @override
  String get addScannedPageFailed => 'Kunne ikke tilføje den scannede side.';

  @override
  String get addPhotoFailed => 'Kunne ikke tilføje fotoet.';

  @override
  String get saveChangesFailed => 'Kunne ikke gemme ændringerne.';

  @override
  String get done => 'Færdig';
}
