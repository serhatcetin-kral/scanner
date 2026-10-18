// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Norwegian Bokmål (`nb`).
class AppLocalizationsNb extends AppLocalizations {
  AppLocalizationsNb([String locale = 'nb']) : super(locale);

  @override
  String get appName => 'Dokumentskanner';

  @override
  String get selectLanguage => 'Velg språk';

  @override
  String get selectLanguageSubtitle => 'Velg språket du foretrekker';

  @override
  String get english => 'English';

  @override
  String get turkish => 'Türkçe';

  @override
  String get continueButton => 'Fortsett';

  @override
  String get scanDocuments => 'Skann dokumenter';

  @override
  String get scanDescription => 'Skann dokumenter og gjør dem om til tydelige digitale filer.';

  @override
  String get scanDocument => 'Skann dokument';

  @override
  String get importFromPhotos => 'Importer fra Bilder';

  @override
  String get emptyDocuments => 'De skannede dokumentene dine vises her.';

  @override
  String get settings => 'Innstillinger';

  @override
  String get language => 'Språk';

  @override
  String get documents => 'Dokumenter';

  @override
  String get recentScans => 'Nylige skanninger';

  @override
  String get reviewScan => 'Se gjennom skanningen';

  @override
  String get page => 'Side';

  @override
  String get deletePage => 'Slett side';

  @override
  String get saveDocument => 'Lagre dokument';

  @override
  String get documentName => 'Dokumentnavn';

  @override
  String get documentNameHint => 'Skriv inn dokumentnavn';

  @override
  String get cancel => 'Avbryt';

  @override
  String get save => 'Lagre';

  @override
  String get documentSaved => 'Dokumentet er lagret';

  @override
  String get saveFailed => 'Kunne ikke lagre dokumentet';

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
  String get noDocuments => 'Ingen lagrede dokumenter ennå';

  @override
  String get renameDocument => 'Gi dokumentet nytt navn';

  @override
  String get deleteDocument => 'Slett dokument';

  @override
  String get newDocumentName => 'Nytt dokumentnavn';

  @override
  String get deleteDocumentTitle => 'Slette dokumentet?';

  @override
  String get deleteDocumentMessage => 'Dette dokumentet og alle sidene vil bli slettet permanent.';

  @override
  String get delete => 'Slett';

  @override
  String get rename => 'Gi nytt navn';

  @override
  String get saveAsPdf => 'Lagre som PDF';

  @override
  String get creatingPdf => 'Oppretter PDF ...';

  @override
  String get pdfCreated => 'PDF-filen er opprettet';

  @override
  String get pdfCreateFailed => 'Kunne ikke opprette PDF-filen';

  @override
  String get exportDocument => 'Eksporter dokument';

  @override
  String get chooseExportFormat => 'Velg eksportformat';

  @override
  String get pdfFormat => 'PDF';

  @override
  String get pdfFormatDescription => 'Slå sammen alle sidene til én PDF-fil';

  @override
  String get jpegFormat => 'JPEG';

  @override
  String get jpegFormatDescription => 'Eksporter sidene som JPEG-bilder';

  @override
  String get pngFormat => 'PNG';

  @override
  String get pngFormatDescription => 'Eksporter sidene som PNG-bilder';

  @override
  String get myDocuments => 'Mine dokumenter';

  @override
  String get searchDocuments => 'Søk i dokumenter ...';

  @override
  String get clearSearch => 'Tøm søket';

  @override
  String get noMatchingDocuments => 'Ingen dokumenter samsvarer med søket.';

  @override
  String get sortDocuments => 'Sorter dokumenter';

  @override
  String get newestFirst => 'Nyeste først';

  @override
  String get oldestFirst => 'Eldste først';

  @override
  String get sortAZ => 'A–Å';

  @override
  String get scanFirstDocument => 'Skann ditt første dokument eller importer bilder for å komme i gang.';

  @override
  String get shareApp => 'Del appen';

  @override
  String get rateApp => 'Vurder appen';

  @override
  String get checkForUpdates => 'Se etter oppdateringer';

  @override
  String get help => 'Hjelp';

  @override
  String get howToUse => 'Slik bruker du appen';

  @override
  String get howToUseSubtitle => 'Lær å skanne, redigere, lagre og dele';

  @override
  String get howToUseIntro => 'Skann, organiser, rediger og del dokumentene dine med noen få enkle trinn.';

  @override
  String get howToScanTitle => 'Skann eller importer';

  @override
  String get howToScanDescription => 'Skann et dokument med kameraet, eller importer ett eller flere bilder fra bildebiblioteket.';

  @override
  String get howToEditTitle => 'Se gjennom og rediger';

  @override
  String get howToEditDescription => 'Beskjær, roter, legg til, slett eller endre rekkefølgen på sidene før du lagrer.';

  @override
  String get howToSaveTitle => 'Lagre dokumentet ditt';

  @override
  String get howToSaveDescription => 'Gi dokumentet et navn, og lagre det trygt i appen.';

  @override
  String get howToManageTitle => 'Administrer dokumenter';

  @override
  String get howToManageDescription => 'Åpne, søk etter, gi nytt navn til, rediger eller slett lagrede dokumenter.';

  @override
  String get howToExportTitle => 'Del og eksporter';

  @override
  String get howToUseTip => 'Tips: De lagrede dokumentene dine blir værende i Dokumentskanner til du velger å eksportere, dele eller slette dem.';

  @override
  String get howToExportDescription => 'Du kan når som helst dele dokumentene dine i PDF-, JPEG- eller PNG-format via andre apper.';

  @override
  String get recognizeText => 'Gjenkjenn tekst';

  @override
  String get editPage => 'Rediger side';

  @override
  String get editPages => 'Rediger sider';

  @override
  String get searchablePdf => 'Søkbar PDF';

  @override
  String get searchablePdfDescription => 'Opprinnelige skannede sider med søkbar tekst';

  @override
  String get searchablePdfFailed => 'Kunne ikke opprette en søkbar PDF.';

  @override
  String get imageExportFailed => 'Kunne ikke eksportere bildene.';

  @override
  String get recognizeTextFailed => 'Kunne ikke gjenkjenne teksten.';

  @override
  String get recognizedTextTitle => 'Gjenkjent tekst';

  @override
  String get plainText => 'Ren tekst';

  @override
  String get preserveFormat => 'Behold formateringen';

  @override
  String get preserveFormatFailed => 'Kunne ikke bevare tekstformateringen.';

  @override
  String get noTextFound => 'Fant ingen tekst i dette dokumentet.';

  @override
  String get textCopied => 'Teksten er kopiert!';

  @override
  String get copyText => 'Kopier tekst';

  @override
  String get shareText => 'Del tekst';

  @override
  String get cropDocument => 'Beskjær dokument';

  @override
  String get crop => 'Beskjær';

  @override
  String get rotate => 'Roter';

  @override
  String get addPage => 'Legg til side';

  @override
  String get scanNewPage => 'Skann ny side';

  @override
  String get useDocumentScanner => 'Bruk dokumentskanneren';

  @override
  String get chooseFromPhotos => 'Velg fra Bilder';

  @override
  String get selectOneOrMorePhotos => 'Velg ett eller flere bilder';

  @override
  String get reorder => 'Endre rekkefølge';

  @override
  String get reorderPages => 'Endre siderekkefølge';

  @override
  String get deleteCurrentPage => 'Slett gjeldende side';

  @override
  String get deletePageTitle => 'Slette siden?';

  @override
  String get deletePageMessage => 'Denne siden blir fjernet fra dokumentet.';

  @override
  String get saveChanges => 'Lagre endringer';

  @override
  String get savingChanges => 'Lagrer ...';

  @override
  String get dragToReorder => 'Dra for å endre rekkefølgen';

  @override
  String get cropImageFailed => 'Kunne ikke beskjære bildet.';

  @override
  String get rotateImageFailed => 'Kunne ikke rotere bildet.';

  @override
  String get addScannedPageFailed => 'Kunne ikke legge til den skannede siden.';

  @override
  String get addPhotoFailed => 'Kunne ikke legge til bildet.';

  @override
  String get saveChangesFailed => 'Kunne ikke lagre endringene.';

  @override
  String get done => 'Ferdig';
}
