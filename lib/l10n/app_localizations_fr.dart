// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get appName => 'Scanner de documents';

  @override
  String get selectLanguage => 'Choisir la langue';

  @override
  String get selectLanguageSubtitle => 'Choisissez votre langue préférée';

  @override
  String get english => 'English';

  @override
  String get turkish => 'Türkçe';

  @override
  String get continueButton => 'Continuer';

  @override
  String get scanDocuments => 'Numériser des documents';

  @override
  String get scanDescription => 'Numérisez vos documents et transformez-les en fichiers numériques de qualité.';

  @override
  String get scanDocument => 'Numériser un document';

  @override
  String get importFromPhotos => 'Importer depuis les photos';

  @override
  String get emptyDocuments => 'Vos documents numérisés apparaîtront ici.';

  @override
  String get settings => 'Paramètres';

  @override
  String get language => 'Langue';

  @override
  String get documents => 'Documents';

  @override
  String get recentScans => 'Numérisations récentes';

  @override
  String get reviewScan => 'Vérifier la numérisation';

  @override
  String get page => 'Page';

  @override
  String get deletePage => 'Supprimer la page';

  @override
  String get saveDocument => 'Enregistrer le document';

  @override
  String get documentName => 'Nom du document';

  @override
  String get documentNameHint => 'Saisissez le nom du document';

  @override
  String get cancel => 'Annuler';

  @override
  String get save => 'Enregistrer';

  @override
  String get documentSaved => 'Document enregistré avec succès';

  @override
  String get saveFailed => 'Impossible d’enregistrer le document';

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
  String get noDocuments => 'Aucun document enregistré pour le moment';

  @override
  String get renameDocument => 'Renommer le document';

  @override
  String get deleteDocument => 'Supprimer le document';

  @override
  String get newDocumentName => 'Nouveau nom du document';

  @override
  String get deleteDocumentTitle => 'Supprimer le document ?';

  @override
  String get deleteDocumentMessage => 'Ce document et toutes ses pages seront définitivement supprimés.';

  @override
  String get delete => 'Supprimer';

  @override
  String get rename => 'Renommer';

  @override
  String get saveAsPdf => 'Enregistrer au format PDF';

  @override
  String get creatingPdf => 'Création du PDF...';

  @override
  String get pdfCreated => 'PDF créé avec succès';

  @override
  String get pdfCreateFailed => 'Impossible de créer le PDF';

  @override
  String get exportDocument => 'Exporter le document';

  @override
  String get chooseExportFormat => 'Choisir le format d’exportation';

  @override
  String get pdfFormat => 'PDF';

  @override
  String get pdfFormatDescription => 'Regrouper toutes les pages dans un seul fichier PDF';

  @override
  String get jpegFormat => 'JPEG';

  @override
  String get jpegFormatDescription => 'Exporter les pages sous forme d’images JPEG';

  @override
  String get pngFormat => 'PNG';

  @override
  String get pngFormatDescription => 'Exporter les pages sous forme d’images PNG';

  @override
  String get myDocuments => 'Mes documents';

  @override
  String get searchDocuments => 'Rechercher des documents...';

  @override
  String get clearSearch => 'Effacer la recherche';

  @override
  String get noMatchingDocuments => 'Aucun document correspondant.';

  @override
  String get sortDocuments => 'Trier les documents';

  @override
  String get newestFirst => 'Du plus récent au plus ancien';

  @override
  String get oldestFirst => 'Du plus ancien au plus récent';

  @override
  String get sortAZ => 'A–Z';

  @override
  String get scanFirstDocument => 'Numérisez votre premier document ou importez des photos pour commencer.';

  @override
  String get shareApp => 'Partager l’application';

  @override
  String get rateApp => 'Évaluer l’application';

  @override
  String get checkForUpdates => 'Rechercher des mises à jour';

  @override
  String get help => 'Aide';

  @override
  String get howToUse => 'Mode d’emploi';

  @override
  String get howToUseSubtitle => 'Apprenez à numériser, modifier, enregistrer et partager';

  @override
  String get howToUseIntro => 'Numérisez, organisez, modifiez et partagez vos documents en quelques étapes.';

  @override
  String get howToScanTitle => 'Numériser ou importer';

  @override
  String get howToScanDescription => 'Numérisez un document avec votre appareil photo ou importez une ou plusieurs photos depuis votre photothèque.';

  @override
  String get howToEditTitle => 'Vérifier et modifier';

  @override
  String get howToEditDescription => 'Recadrez, faites pivoter, ajoutez, supprimez ou réorganisez les pages avant de les enregistrer.';

  @override
  String get howToSaveTitle => 'Enregistrer votre document';

  @override
  String get howToSaveDescription => 'Donnez un nom à votre document et enregistrez-le en toute sécurité dans l’application.';

  @override
  String get howToManageTitle => 'Gérer les documents';

  @override
  String get howToManageDescription => 'Ouvrez, recherchez, renommez, modifiez ou supprimez vos documents enregistrés.';

  @override
  String get howToExportTitle => 'Partager et exporter';

  @override
  String get howToUseTip => 'Conseil : vos documents enregistrés restent dans Document Scanner jusqu’à ce que vous choisissiez de les exporter, de les partager ou de les supprimer.';

  @override
  String get howToExportDescription => 'Vous pouvez partager vos documents à tout moment au format PDF, JPEG ou PNG via d’autres applications.';

  @override
  String get recognizeText => 'Reconnaître le texte';

  @override
  String get editPage => 'Modifier la page';

  @override
  String get editPages => 'Modifier les pages';

  @override
  String get searchablePdf => 'PDF avec texte recherchable';

  @override
  String get searchablePdfDescription => 'Pages numérisées d’origine avec texte consultable par recherche';

  @override
  String get searchablePdfFailed => 'Impossible de créer le PDF avec texte recherchable.';

  @override
  String get imageExportFailed => 'Impossible d’exporter les images.';

  @override
  String get recognizeTextFailed => 'Impossible de reconnaître le texte.';

  @override
  String get recognizedTextTitle => 'Texte reconnu';

  @override
  String get plainText => 'Texte brut';

  @override
  String get preserveFormat => 'Conserver la mise en forme';

  @override
  String get preserveFormatFailed => 'Impossible de conserver la mise en forme du texte.';

  @override
  String get noTextFound => 'Aucun texte trouvé dans ce document.';

  @override
  String get textCopied => 'Texte copié !';

  @override
  String get copyText => 'Copier le texte';

  @override
  String get shareText => 'Partager le texte';

  @override
  String get cropDocument => 'Recadrer le document';

  @override
  String get crop => 'Recadrer';

  @override
  String get rotate => 'Faire pivoter';

  @override
  String get addPage => 'Ajouter une page';

  @override
  String get scanNewPage => 'Numériser une nouvelle page';

  @override
  String get useDocumentScanner => 'Utiliser le scanner de documents';

  @override
  String get chooseFromPhotos => 'Choisir dans les photos';

  @override
  String get selectOneOrMorePhotos => 'Sélectionnez une ou plusieurs photos';

  @override
  String get reorder => 'Réorganiser';

  @override
  String get reorderPages => 'Réorganiser les pages';

  @override
  String get deleteCurrentPage => 'Supprimer la page actuelle';

  @override
  String get deletePageTitle => 'Supprimer la page ?';

  @override
  String get deletePageMessage => 'Cette page sera retirée du document.';

  @override
  String get saveChanges => 'Enregistrer les modifications';

  @override
  String get savingChanges => 'Enregistrement...';

  @override
  String get dragToReorder => 'Faites glisser pour réorganiser';

  @override
  String get cropImageFailed => 'Impossible de recadrer l’image.';

  @override
  String get rotateImageFailed => 'Impossible de faire pivoter l’image.';

  @override
  String get addScannedPageFailed => 'Impossible d’ajouter la page numérisée.';

  @override
  String get addPhotoFailed => 'Impossible d’ajouter la photo.';

  @override
  String get saveChangesFailed => 'Impossible d’enregistrer les modifications.';

  @override
  String get done => 'Terminé';
}
