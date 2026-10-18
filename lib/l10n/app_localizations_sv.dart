// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Swedish (`sv`).
class AppLocalizationsSv extends AppLocalizations {
  AppLocalizationsSv([String locale = 'sv']) : super(locale);

  @override
  String get appName => 'Dokumentskanner';

  @override
  String get selectLanguage => 'Välj språk';

  @override
  String get selectLanguageSubtitle => 'Välj det språk du föredrar';

  @override
  String get english => 'English';

  @override
  String get turkish => 'Türkçe';

  @override
  String get continueButton => 'Fortsätt';

  @override
  String get scanDocuments => 'Skanna dokument';

  @override
  String get scanDescription => 'Skanna dokument och omvandla dem till tydliga digitala filer.';

  @override
  String get scanDocument => 'Skanna dokument';

  @override
  String get importFromPhotos => 'Importera från Bilder';

  @override
  String get emptyDocuments => 'Dina skannade dokument visas här.';

  @override
  String get settings => 'Inställningar';

  @override
  String get language => 'Språk';

  @override
  String get documents => 'Dokument';

  @override
  String get recentScans => 'Senaste skanningar';

  @override
  String get reviewScan => 'Granska skanning';

  @override
  String get page => 'Sida';

  @override
  String get deletePage => 'Ta bort sida';

  @override
  String get saveDocument => 'Spara dokument';

  @override
  String get documentName => 'Dokumentnamn';

  @override
  String get documentNameHint => 'Ange dokumentnamn';

  @override
  String get cancel => 'Avbryt';

  @override
  String get save => 'Spara';

  @override
  String get documentSaved => 'Dokumentet har sparats';

  @override
  String get saveFailed => 'Det gick inte att spara dokumentet';

  @override
  String pageCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count sidor',
      one: '1 sida',
    );
    return '$_temp0';
  }

  @override
  String get noDocuments => 'Inga sparade dokument ännu';

  @override
  String get renameDocument => 'Byt namn på dokument';

  @override
  String get deleteDocument => 'Ta bort dokument';

  @override
  String get newDocumentName => 'Nytt dokumentnamn';

  @override
  String get deleteDocumentTitle => 'Ta bort dokument?';

  @override
  String get deleteDocumentMessage => 'Det här dokumentet och alla dess sidor kommer att tas bort permanent.';

  @override
  String get delete => 'Ta bort';

  @override
  String get rename => 'Byt namn';

  @override
  String get saveAsPdf => 'Spara som PDF';

  @override
  String get creatingPdf => 'Skapar PDF...';

  @override
  String get pdfCreated => 'PDF-filen har skapats';

  @override
  String get pdfCreateFailed => 'Det gick inte att skapa PDF-filen';

  @override
  String get exportDocument => 'Exportera dokument';

  @override
  String get chooseExportFormat => 'Välj exportformat';

  @override
  String get pdfFormat => 'PDF';

  @override
  String get pdfFormatDescription => 'Sammanfoga alla sidor till en PDF-fil';

  @override
  String get jpegFormat => 'JPEG';

  @override
  String get jpegFormatDescription => 'Exportera sidor som JPEG-bilder';

  @override
  String get pngFormat => 'PNG';

  @override
  String get pngFormatDescription => 'Exportera sidor som PNG-bilder';

  @override
  String get myDocuments => 'Mina dokument';

  @override
  String get searchDocuments => 'Sök efter dokument...';

  @override
  String get clearSearch => 'Rensa sökning';

  @override
  String get noMatchingDocuments => 'Inga matchande dokument hittades.';

  @override
  String get sortDocuments => 'Sortera dokument';

  @override
  String get newestFirst => 'Nyaste först';

  @override
  String get oldestFirst => 'Äldsta först';

  @override
  String get sortAZ => 'A–Ö';

  @override
  String get scanFirstDocument => 'Skanna ditt första dokument eller importera bilder för att komma igång.';

  @override
  String get shareApp => 'Dela appen';

  @override
  String get rateApp => 'Betygsätt appen';

  @override
  String get checkForUpdates => 'Sök efter uppdateringar';

  @override
  String get help => 'Hjälp';

  @override
  String get howToUse => 'Så använder du appen';

  @override
  String get howToUseSubtitle => 'Lär dig skanna, redigera, spara och dela';

  @override
  String get howToUseIntro => 'Skanna, organisera, redigera och dela dina dokument i några enkla steg.';

  @override
  String get howToScanTitle => 'Skanna eller importera';

  @override
  String get howToScanDescription => 'Skanna ett dokument med kameran eller importera en eller flera bilder från ditt bildbibliotek.';

  @override
  String get howToEditTitle => 'Granska och redigera';

  @override
  String get howToEditDescription => 'Beskär, rotera, lägg till, ta bort eller ändra ordning på sidorna innan du sparar.';

  @override
  String get howToSaveTitle => 'Spara ditt dokument';

  @override
  String get howToSaveDescription => 'Ge dokumentet ett namn och spara det säkert i appen.';

  @override
  String get howToManageTitle => 'Hantera dokument';

  @override
  String get howToManageDescription => 'Öppna, sök efter, byt namn på, redigera eller ta bort dina sparade dokument.';

  @override
  String get howToExportTitle => 'Dela och exportera';

  @override
  String get howToUseTip => 'Tips: Dina sparade dokument finns kvar i Dokumentskanner tills du väljer att exportera, dela eller ta bort dem.';

  @override
  String get howToExportDescription => 'Du kan när som helst dela dina dokument som PDF, JPEG eller PNG via andra appar.';

  @override
  String get recognizeText => 'Identifiera text';

  @override
  String get editPage => 'Redigera sida';

  @override
  String get editPages => 'Redigera sidor';

  @override
  String get searchablePdf => 'Sökbar PDF';

  @override
  String get searchablePdfDescription => 'Ursprungliga skannade sidor med sökbar text';

  @override
  String get searchablePdfFailed => 'Det gick inte att skapa en sökbar PDF.';

  @override
  String get imageExportFailed => 'Det gick inte att exportera bilderna.';

  @override
  String get recognizeTextFailed => 'Det gick inte att identifiera texten.';

  @override
  String get recognizedTextTitle => 'Identifierad text';

  @override
  String get plainText => 'Oformaterad text';

  @override
  String get preserveFormat => 'Behåll formatering';

  @override
  String get preserveFormatFailed => 'Det gick inte att behålla textformateringen.';

  @override
  String get noTextFound => 'Ingen text hittades i det här dokumentet.';

  @override
  String get textCopied => 'Texten har kopierats!';

  @override
  String get copyText => 'Kopiera text';

  @override
  String get shareText => 'Dela text';

  @override
  String get cropDocument => 'Beskär dokument';

  @override
  String get crop => 'Beskär';

  @override
  String get rotate => 'Rotera';

  @override
  String get addPage => 'Lägg till sida';

  @override
  String get scanNewPage => 'Skanna ny sida';

  @override
  String get useDocumentScanner => 'Använd dokumentskannern';

  @override
  String get chooseFromPhotos => 'Välj från Bilder';

  @override
  String get selectOneOrMorePhotos => 'Välj en eller flera bilder';

  @override
  String get reorder => 'Ändra ordning';

  @override
  String get reorderPages => 'Ändra sidordning';

  @override
  String get deleteCurrentPage => 'Ta bort aktuell sida';

  @override
  String get deletePageTitle => 'Ta bort sida?';

  @override
  String get deletePageMessage => 'Den här sidan tas bort från dokumentet.';

  @override
  String get saveChanges => 'Spara ändringar';

  @override
  String get savingChanges => 'Sparar...';

  @override
  String get dragToReorder => 'Dra för att ändra ordning';

  @override
  String get cropImageFailed => 'Det gick inte att beskära bilden.';

  @override
  String get rotateImageFailed => 'Det gick inte att rotera bilden.';

  @override
  String get addScannedPageFailed => 'Det gick inte att lägga till den skannade sidan.';

  @override
  String get addPhotoFailed => 'Det gick inte att lägga till bilden.';

  @override
  String get saveChangesFailed => 'Det gick inte att spara ändringarna.';

  @override
  String get done => 'Klart';
}
