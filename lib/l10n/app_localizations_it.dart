// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Italian (`it`).
class AppLocalizationsIt extends AppLocalizations {
  AppLocalizationsIt([String locale = 'it']) : super(locale);

  @override
  String get appName => 'Scanner di documenti';

  @override
  String get selectLanguage => 'Seleziona la lingua';

  @override
  String get selectLanguageSubtitle => 'Scegli la lingua che preferisci';

  @override
  String get english => 'English';

  @override
  String get turkish => 'Türkçe';

  @override
  String get continueButton => 'Continua';

  @override
  String get scanDocuments => 'Scansiona documenti';

  @override
  String get scanDescription => 'Scansiona i documenti e trasformali in file digitali nitidi.';

  @override
  String get scanDocument => 'Scansiona documento';

  @override
  String get importFromPhotos => 'Importa dalle foto';

  @override
  String get emptyDocuments => 'I documenti scansionati appariranno qui.';

  @override
  String get settings => 'Impostazioni';

  @override
  String get language => 'Lingua';

  @override
  String get documents => 'Documenti';

  @override
  String get recentScans => 'Scansioni recenti';

  @override
  String get reviewScan => 'Controlla la scansione';

  @override
  String get page => 'Pagina';

  @override
  String get deletePage => 'Elimina pagina';

  @override
  String get saveDocument => 'Salva documento';

  @override
  String get documentName => 'Nome del documento';

  @override
  String get documentNameHint => 'Inserisci il nome del documento';

  @override
  String get cancel => 'Annulla';

  @override
  String get save => 'Salva';

  @override
  String get documentSaved => 'Documento salvato correttamente';

  @override
  String get saveFailed => 'Impossibile salvare il documento';

  @override
  String pageCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count pagine',
      one: '1 pagina',
    );
    return '$_temp0';
  }

  @override
  String get noDocuments => 'Nessun documento salvato';

  @override
  String get renameDocument => 'Rinomina documento';

  @override
  String get deleteDocument => 'Elimina documento';

  @override
  String get newDocumentName => 'Nuovo nome del documento';

  @override
  String get deleteDocumentTitle => 'Eliminare il documento?';

  @override
  String get deleteDocumentMessage => 'Questo documento e tutte le sue pagine verranno eliminati definitivamente.';

  @override
  String get delete => 'Elimina';

  @override
  String get rename => 'Rinomina';

  @override
  String get saveAsPdf => 'Salva come PDF';

  @override
  String get creatingPdf => 'Creazione del PDF...';

  @override
  String get pdfCreated => 'PDF creato correttamente';

  @override
  String get pdfCreateFailed => 'Impossibile creare il PDF';

  @override
  String get exportDocument => 'Esporta documento';

  @override
  String get chooseExportFormat => 'Scegli il formato di esportazione';

  @override
  String get pdfFormat => 'PDF';

  @override
  String get pdfFormatDescription => 'Unisci tutte le pagine in un unico file PDF';

  @override
  String get jpegFormat => 'JPEG';

  @override
  String get jpegFormatDescription => 'Esporta le pagine come immagini JPEG';

  @override
  String get pngFormat => 'PNG';

  @override
  String get pngFormatDescription => 'Esporta le pagine come immagini PNG';

  @override
  String get myDocuments => 'I miei documenti';

  @override
  String get searchDocuments => 'Cerca documenti...';

  @override
  String get clearSearch => 'Cancella la ricerca';

  @override
  String get noMatchingDocuments => 'Nessun documento corrispondente.';

  @override
  String get sortDocuments => 'Ordina documenti';

  @override
  String get newestFirst => 'Dal più recente';

  @override
  String get oldestFirst => 'Dal meno recente';

  @override
  String get sortAZ => 'A–Z';

  @override
  String get scanFirstDocument => 'Per iniziare, scansiona il tuo primo documento o importa delle foto.';

  @override
  String get shareApp => 'Condividi app';

  @override
  String get rateApp => 'Valuta l’app';

  @override
  String get checkForUpdates => 'Controlla aggiornamenti';

  @override
  String get help => 'Aiuto';

  @override
  String get howToUse => 'Come si usa';

  @override
  String get howToUseSubtitle => 'Scopri come scansionare, modificare, salvare e condividere';

  @override
  String get howToUseIntro => 'Scansiona, organizza, modifica e condividi i tuoi documenti in pochi passaggi.';

  @override
  String get howToScanTitle => 'Scansiona o importa';

  @override
  String get howToScanDescription => 'Scansiona un documento con la fotocamera oppure importa una o più foto dalla libreria.';

  @override
  String get howToEditTitle => 'Controlla e modifica';

  @override
  String get howToEditDescription => 'Ritaglia, ruota, aggiungi, elimina o riordina le pagine prima di salvare.';

  @override
  String get howToSaveTitle => 'Salva il documento';

  @override
  String get howToSaveDescription => 'Assegna un nome al documento e salvalo in modo sicuro all’interno dell’app.';

  @override
  String get howToManageTitle => 'Gestisci i documenti';

  @override
  String get howToManageDescription => 'Apri, cerca, rinomina, modifica o elimina i documenti salvati.';

  @override
  String get howToExportTitle => 'Condividi ed esporta';

  @override
  String get howToUseTip => 'Suggerimento: i documenti salvati rimangono all’interno di Document Scanner finché non decidi di esportarli, condividerli o eliminarli.';

  @override
  String get howToExportDescription => 'Puoi condividere i tuoi documenti in qualsiasi momento in formato PDF, JPEG o PNG tramite altre app.';

  @override
  String get recognizeText => 'Riconosci testo';

  @override
  String get editPage => 'Modifica pagina';

  @override
  String get editPages => 'Modifica pagine';

  @override
  String get searchablePdf => 'PDF ricercabile';

  @override
  String get searchablePdfDescription => 'Pagine scansionate originali con testo ricercabile';

  @override
  String get searchablePdfFailed => 'Impossibile creare il PDF ricercabile.';

  @override
  String get imageExportFailed => 'Impossibile esportare le immagini.';

  @override
  String get recognizeTextFailed => 'Impossibile riconoscere il testo.';

  @override
  String get recognizedTextTitle => 'Testo riconosciuto';

  @override
  String get plainText => 'Testo semplice';

  @override
  String get preserveFormat => 'Mantieni formattazione';

  @override
  String get preserveFormatFailed => 'Impossibile mantenere la formattazione del testo.';

  @override
  String get noTextFound => 'Nessun testo trovato in questo documento.';

  @override
  String get textCopied => 'Testo copiato!';

  @override
  String get copyText => 'Copia testo';

  @override
  String get shareText => 'Condividi testo';

  @override
  String get cropDocument => 'Ritaglia documento';

  @override
  String get crop => 'Ritaglia';

  @override
  String get rotate => 'Ruota';

  @override
  String get addPage => 'Aggiungi pagina';

  @override
  String get scanNewPage => 'Scansiona nuova pagina';

  @override
  String get useDocumentScanner => 'Usa lo scanner di documenti';

  @override
  String get chooseFromPhotos => 'Scegli dalle foto';

  @override
  String get selectOneOrMorePhotos => 'Seleziona una o più foto';

  @override
  String get reorder => 'Riordina';

  @override
  String get reorderPages => 'Riordina pagine';

  @override
  String get deleteCurrentPage => 'Elimina pagina corrente';

  @override
  String get deletePageTitle => 'Eliminare la pagina?';

  @override
  String get deletePageMessage => 'Questa pagina verrà rimossa dal documento.';

  @override
  String get saveChanges => 'Salva modifiche';

  @override
  String get savingChanges => 'Salvataggio...';

  @override
  String get dragToReorder => 'Trascina per riordinare';

  @override
  String get cropImageFailed => 'Impossibile ritagliare l’immagine.';

  @override
  String get rotateImageFailed => 'Impossibile ruotare l’immagine.';

  @override
  String get addScannedPageFailed => 'Impossibile aggiungere la pagina scansionata.';

  @override
  String get addPhotoFailed => 'Impossibile aggiungere la foto.';

  @override
  String get saveChangesFailed => 'Impossibile salvare le modifiche.';

  @override
  String get done => 'Fine';
}
