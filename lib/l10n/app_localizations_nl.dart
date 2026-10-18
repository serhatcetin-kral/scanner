// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Dutch Flemish (`nl`).
class AppLocalizationsNl extends AppLocalizations {
  AppLocalizationsNl([String locale = 'nl']) : super(locale);

  @override
  String get appName => 'Documentenscanner';

  @override
  String get selectLanguage => 'Taal selecteren';

  @override
  String get selectLanguageSubtitle => 'Kies je voorkeurstaal';

  @override
  String get english => 'English';

  @override
  String get turkish => 'Türkçe';

  @override
  String get continueButton => 'Doorgaan';

  @override
  String get scanDocuments => 'Documenten scannen';

  @override
  String get scanDescription => 'Scan documenten en zet ze om in duidelijke digitale bestanden.';

  @override
  String get scanDocument => 'Document scannen';

  @override
  String get importFromPhotos => 'Importeren uit Foto\'s';

  @override
  String get emptyDocuments => 'Je gescande documenten verschijnen hier.';

  @override
  String get settings => 'Instellingen';

  @override
  String get language => 'Taal';

  @override
  String get documents => 'Documenten';

  @override
  String get recentScans => 'Recente scans';

  @override
  String get reviewScan => 'Scan controleren';

  @override
  String get page => 'Pagina';

  @override
  String get deletePage => 'Pagina verwijderen';

  @override
  String get saveDocument => 'Document opslaan';

  @override
  String get documentName => 'Documentnaam';

  @override
  String get documentNameHint => 'Voer een documentnaam in';

  @override
  String get cancel => 'Annuleren';

  @override
  String get save => 'Opslaan';

  @override
  String get documentSaved => 'Document succesvol opgeslagen';

  @override
  String get saveFailed => 'Kan document niet opslaan';

  @override
  String pageCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count pagina\'s',
      one: '1 pagina',
    );
    return '$_temp0';
  }

  @override
  String get noDocuments => 'Nog geen opgeslagen documenten';

  @override
  String get renameDocument => 'Document hernoemen';

  @override
  String get deleteDocument => 'Document verwijderen';

  @override
  String get newDocumentName => 'Nieuwe documentnaam';

  @override
  String get deleteDocumentTitle => 'Document verwijderen?';

  @override
  String get deleteDocumentMessage => 'Dit document en alle bijbehorende pagina\'s worden definitief verwijderd.';

  @override
  String get delete => 'Verwijderen';

  @override
  String get rename => 'Hernoemen';

  @override
  String get saveAsPdf => 'Opslaan als PDF';

  @override
  String get creatingPdf => 'PDF wordt gemaakt...';

  @override
  String get pdfCreated => 'PDF succesvol gemaakt';

  @override
  String get pdfCreateFailed => 'Kan PDF niet maken';

  @override
  String get exportDocument => 'Document exporteren';

  @override
  String get chooseExportFormat => 'Kies een exportformaat';

  @override
  String get pdfFormat => 'PDF';

  @override
  String get pdfFormatDescription => 'Combineer alle pagina\'s in één PDF-bestand';

  @override
  String get jpegFormat => 'JPEG';

  @override
  String get jpegFormatDescription => 'Exporteer pagina\'s als JPEG-afbeeldingen';

  @override
  String get pngFormat => 'PNG';

  @override
  String get pngFormatDescription => 'Exporteer pagina\'s als PNG-afbeeldingen';

  @override
  String get myDocuments => 'Mijn documenten';

  @override
  String get searchDocuments => 'Documenten zoeken...';

  @override
  String get clearSearch => 'Zoekopdracht wissen';

  @override
  String get noMatchingDocuments => 'Geen overeenkomende documenten gevonden.';

  @override
  String get sortDocuments => 'Documenten sorteren';

  @override
  String get newestFirst => 'Nieuwste eerst';

  @override
  String get oldestFirst => 'Oudste eerst';

  @override
  String get sortAZ => 'A–Z';

  @override
  String get scanFirstDocument => 'Scan je eerste document of importeer foto\'s om te beginnen.';

  @override
  String get shareApp => 'App delen';

  @override
  String get rateApp => 'App beoordelen';

  @override
  String get checkForUpdates => 'Controleren op updates';

  @override
  String get help => 'Help';

  @override
  String get howToUse => 'Gebruiksaanwijzing';

  @override
  String get howToUseSubtitle => 'Leer hoe je scant, bewerkt, opslaat en deelt';

  @override
  String get howToUseIntro => 'Scan, orden, bewerk en deel je documenten in een paar stappen.';

  @override
  String get howToScanTitle => 'Scannen of importeren';

  @override
  String get howToScanDescription => 'Scan een document met je camera of importeer een of meer foto\'s uit je fotobibliotheek.';

  @override
  String get howToEditTitle => 'Controleren en bewerken';

  @override
  String get howToEditDescription => 'Snijd pagina\'s bij, draai ze, voeg ze toe, verwijder ze of wijzig de volgorde voordat je opslaat.';

  @override
  String get howToSaveTitle => 'Je document opslaan';

  @override
  String get howToSaveDescription => 'Geef je document een naam en sla het veilig op in de app.';

  @override
  String get howToManageTitle => 'Documenten beheren';

  @override
  String get howToManageDescription => 'Open, zoek, hernoem, bewerk of verwijder je opgeslagen documenten.';

  @override
  String get howToExportTitle => 'Delen en exporteren';

  @override
  String get howToUseTip => 'Tip: Je opgeslagen documenten blijven in Documentenscanner totdat je ze exporteert, deelt of verwijdert.';

  @override
  String get howToExportDescription => 'Je kunt je documenten op elk moment via andere apps delen als PDF, JPEG of PNG.';

  @override
  String get recognizeText => 'Tekst herkennen';

  @override
  String get editPage => 'Pagina bewerken';

  @override
  String get editPages => 'Pagina\'s bewerken';

  @override
  String get searchablePdf => 'Doorzoekbare PDF';

  @override
  String get searchablePdfDescription => 'Originele gescande pagina\'s met doorzoekbare tekst';

  @override
  String get searchablePdfFailed => 'Kan geen doorzoekbare PDF maken.';

  @override
  String get imageExportFailed => 'Kan afbeeldingen niet exporteren.';

  @override
  String get recognizeTextFailed => 'Kan tekst niet herkennen.';

  @override
  String get recognizedTextTitle => 'Herkende tekst';

  @override
  String get plainText => 'Platte tekst';

  @override
  String get preserveFormat => 'Opmaak behouden';

  @override
  String get preserveFormatFailed => 'Kan tekstopmaak niet behouden.';

  @override
  String get noTextFound => 'Geen tekst gevonden in dit document.';

  @override
  String get textCopied => 'Tekst gekopieerd!';

  @override
  String get copyText => 'Tekst kopiëren';

  @override
  String get shareText => 'Tekst delen';

  @override
  String get cropDocument => 'Document bijsnijden';

  @override
  String get crop => 'Bijsnijden';

  @override
  String get rotate => 'Draaien';

  @override
  String get addPage => 'Pagina toevoegen';

  @override
  String get scanNewPage => 'Nieuwe pagina scannen';

  @override
  String get useDocumentScanner => 'Documentenscanner gebruiken';

  @override
  String get chooseFromPhotos => 'Kiezen uit Foto\'s';

  @override
  String get selectOneOrMorePhotos => 'Selecteer een of meer foto\'s';

  @override
  String get reorder => 'Volgorde wijzigen';

  @override
  String get reorderPages => 'Paginavolgorde wijzigen';

  @override
  String get deleteCurrentPage => 'Huidige pagina verwijderen';

  @override
  String get deletePageTitle => 'Pagina verwijderen?';

  @override
  String get deletePageMessage => 'Deze pagina wordt uit het document verwijderd.';

  @override
  String get saveChanges => 'Wijzigingen opslaan';

  @override
  String get savingChanges => 'Opslaan...';

  @override
  String get dragToReorder => 'Sleep om de volgorde te wijzigen';

  @override
  String get cropImageFailed => 'Kan afbeelding niet bijsnijden.';

  @override
  String get rotateImageFailed => 'Kan afbeelding niet draaien.';

  @override
  String get addScannedPageFailed => 'Kan gescande pagina niet toevoegen.';

  @override
  String get addPhotoFailed => 'Kan foto niet toevoegen.';

  @override
  String get saveChangesFailed => 'Kan wijzigingen niet opslaan.';

  @override
  String get done => 'Gereed';
}
