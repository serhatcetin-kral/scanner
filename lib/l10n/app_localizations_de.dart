// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get appName => 'Dokumentenscanner';

  @override
  String get selectLanguage => 'Sprache auswählen';

  @override
  String get selectLanguageSubtitle => 'Wählen Sie Ihre bevorzugte Sprache';

  @override
  String get english => 'Englisch';

  @override
  String get turkish => 'Türkisch';

  @override
  String get continueButton => 'Weiter';

  @override
  String get scanDocuments => 'Dokumente scannen';

  @override
  String get scanDescription => 'Scannen Sie Dokumente und wandeln Sie sie in gut lesbare digitale Dateien um.';

  @override
  String get scanDocument => 'Dokument scannen';

  @override
  String get importFromPhotos => 'Aus Fotos importieren';

  @override
  String get emptyDocuments => 'Ihre gescannten Dokumente werden hier angezeigt.';

  @override
  String get settings => 'Einstellungen';

  @override
  String get language => 'Sprache';

  @override
  String get documents => 'Dokumente';

  @override
  String get recentScans => 'Letzte Scans';

  @override
  String get reviewScan => 'Scan überprüfen';

  @override
  String get page => 'Seite';

  @override
  String get deletePage => 'Seite löschen';

  @override
  String get saveDocument => 'Dokument speichern';

  @override
  String get documentName => 'Dokumentname';

  @override
  String get documentNameHint => 'Dokumentnamen eingeben';

  @override
  String get cancel => 'Abbrechen';

  @override
  String get save => 'Speichern';

  @override
  String get documentSaved => 'Dokument erfolgreich gespeichert';

  @override
  String get saveFailed => 'Dokument konnte nicht gespeichert werden';

  @override
  String pageCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Seiten',
      one: '1 Seite',
    );
    return '$_temp0';
  }

  @override
  String get noDocuments => 'Noch keine Dokumente gespeichert';

  @override
  String get renameDocument => 'Dokument umbenennen';

  @override
  String get deleteDocument => 'Dokument löschen';

  @override
  String get newDocumentName => 'Neuer Dokumentname';

  @override
  String get deleteDocumentTitle => 'Dokument löschen?';

  @override
  String get deleteDocumentMessage => 'Dieses Dokument und alle seine Seiten werden dauerhaft gelöscht.';

  @override
  String get delete => 'Löschen';

  @override
  String get rename => 'Umbenennen';

  @override
  String get saveAsPdf => 'Als PDF speichern';

  @override
  String get creatingPdf => 'PDF wird erstellt ...';

  @override
  String get pdfCreated => 'PDF erfolgreich erstellt';

  @override
  String get pdfCreateFailed => 'PDF konnte nicht erstellt werden';

  @override
  String get exportDocument => 'Dokument exportieren';

  @override
  String get chooseExportFormat => 'Exportformat auswählen';

  @override
  String get pdfFormat => 'PDF';

  @override
  String get pdfFormatDescription => 'Alle Seiten in einer PDF-Datei zusammenfassen';

  @override
  String get jpegFormat => 'JPEG';

  @override
  String get jpegFormatDescription => 'Seiten als JPEG-Bilder exportieren';

  @override
  String get pngFormat => 'PNG';

  @override
  String get pngFormatDescription => 'Seiten als PNG-Bilder exportieren';

  @override
  String get myDocuments => 'Meine Dokumente';

  @override
  String get searchDocuments => 'Dokumente suchen ...';

  @override
  String get clearSearch => 'Suche löschen';

  @override
  String get noMatchingDocuments => 'Keine passenden Dokumente gefunden.';

  @override
  String get sortDocuments => 'Dokumente sortieren';

  @override
  String get newestFirst => 'Neueste zuerst';

  @override
  String get oldestFirst => 'Älteste zuerst';

  @override
  String get sortAZ => 'A–Z';

  @override
  String get scanFirstDocument => 'Scannen Sie Ihr erstes Dokument oder importieren Sie Fotos, um loszulegen.';

  @override
  String get shareApp => 'App teilen';

  @override
  String get rateApp => 'App bewerten';

  @override
  String get checkForUpdates => 'Nach Updates suchen';

  @override
  String get help => 'Hilfe';

  @override
  String get howToUse => 'Anleitung';

  @override
  String get howToUseSubtitle => 'Erfahren Sie, wie Sie scannen, bearbeiten, speichern und teilen';

  @override
  String get howToUseIntro => 'Scannen, organisieren, bearbeiten und teilen Sie Ihre Dokumente in wenigen Schritten.';

  @override
  String get howToScanTitle => 'Scannen oder importieren';

  @override
  String get howToScanDescription => 'Scannen Sie ein Dokument mit Ihrer Kamera oder importieren Sie ein oder mehrere Fotos aus Ihrer Fotomediathek.';

  @override
  String get howToEditTitle => 'Überprüfen und bearbeiten';

  @override
  String get howToEditDescription => 'Schneiden Sie Seiten zu, drehen, ergänzen, löschen oder sortieren Sie sie vor dem Speichern neu.';

  @override
  String get howToSaveTitle => 'Dokument speichern';

  @override
  String get howToSaveDescription => 'Geben Sie Ihrem Dokument einen Namen und speichern Sie es sicher in der App.';

  @override
  String get howToManageTitle => 'Dokumente verwalten';

  @override
  String get howToManageDescription => 'Öffnen, suchen, umbenennen, bearbeiten oder löschen Sie Ihre gespeicherten Dokumente.';

  @override
  String get howToExportTitle => 'Teilen und exportieren';

  @override
  String get howToUseTip => 'Tipp: Ihre gespeicherten Dokumente bleiben in Document Scanner, bis Sie sie exportieren, teilen oder löschen.';

  @override
  String get howToExportDescription => 'Sie können Ihre Dokumente jederzeit über andere Apps als PDF, JPEG oder PNG teilen.';

  @override
  String get recognizeText => 'Text erkennen';

  @override
  String get editPage => 'Seite bearbeiten';

  @override
  String get editPages => 'Seiten bearbeiten';

  @override
  String get searchablePdf => 'Durchsuchbare PDF';

  @override
  String get searchablePdfDescription => 'Originale Scanseiten mit durchsuchbarem Text';

  @override
  String get searchablePdfFailed => 'Durchsuchbare PDF konnte nicht erstellt werden.';

  @override
  String get imageExportFailed => 'Bilder konnten nicht exportiert werden.';

  @override
  String get recognizeTextFailed => 'Text konnte nicht erkannt werden.';

  @override
  String get recognizedTextTitle => 'Erkannter Text';

  @override
  String get plainText => 'Nur Text';

  @override
  String get preserveFormat => 'Formatierung beibehalten';

  @override
  String get preserveFormatFailed => 'Textformatierung konnte nicht beibehalten werden.';

  @override
  String get noTextFound => 'In diesem Dokument wurde kein Text gefunden.';

  @override
  String get textCopied => 'Text kopiert!';

  @override
  String get copyText => 'Text kopieren';

  @override
  String get shareText => 'Text teilen';

  @override
  String get cropDocument => 'Dokument zuschneiden';

  @override
  String get crop => 'Zuschneiden';

  @override
  String get rotate => 'Drehen';

  @override
  String get addPage => 'Seite hinzufügen';

  @override
  String get scanNewPage => 'Neue Seite scannen';

  @override
  String get useDocumentScanner => 'Dokumentenscanner verwenden';

  @override
  String get chooseFromPhotos => 'Aus Fotos auswählen';

  @override
  String get selectOneOrMorePhotos => 'Ein oder mehrere Fotos auswählen';

  @override
  String get reorder => 'Neu anordnen';

  @override
  String get reorderPages => 'Seiten neu anordnen';

  @override
  String get deleteCurrentPage => 'Aktuelle Seite löschen';

  @override
  String get deletePageTitle => 'Seite löschen?';

  @override
  String get deletePageMessage => 'Diese Seite wird aus dem Dokument entfernt.';

  @override
  String get saveChanges => 'Änderungen speichern';

  @override
  String get savingChanges => 'Wird gespeichert ...';

  @override
  String get dragToReorder => 'Zum Neuordnen ziehen';

  @override
  String get cropImageFailed => 'Bild konnte nicht zugeschnitten werden.';

  @override
  String get rotateImageFailed => 'Bild konnte nicht gedreht werden.';

  @override
  String get addScannedPageFailed => 'Gescannte Seite konnte nicht hinzugefügt werden.';

  @override
  String get addPhotoFailed => 'Foto konnte nicht hinzugefügt werden.';

  @override
  String get saveChangesFailed => 'Änderungen konnten nicht gespeichert werden.';

  @override
  String get done => 'Fertig';
}
