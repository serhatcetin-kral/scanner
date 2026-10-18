// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Albanian (`sq`).
class AppLocalizationsSq extends AppLocalizations {
  AppLocalizationsSq([String locale = 'sq']) : super(locale);

  @override
  String get appName => 'Skaneri i Dokumenteve';

  @override
  String get selectLanguage => 'Zgjidh gjuhën';

  @override
  String get selectLanguageSubtitle => 'Zgjidh gjuhën tënde të preferuar';

  @override
  String get english => 'English';

  @override
  String get turkish => 'Türkçe';

  @override
  String get continueButton => 'Vazhdo';

  @override
  String get scanDocuments => 'Skano dokumente';

  @override
  String get scanDescription => 'Skano dokumente dhe ktheji në skedarë dixhitalë të qartë.';

  @override
  String get scanDocument => 'Skano dokument';

  @override
  String get importFromPhotos => 'Importo nga fotot';

  @override
  String get emptyDocuments => 'Dokumentet e skanuara do të shfaqen këtu.';

  @override
  String get settings => 'Cilësimet';

  @override
  String get language => 'Gjuha';

  @override
  String get documents => 'Dokumentet';

  @override
  String get recentScans => 'Skanimet e fundit';

  @override
  String get reviewScan => 'Shiko skanimin';

  @override
  String get page => 'Faqja';

  @override
  String get deletePage => 'Fshi faqen';

  @override
  String get saveDocument => 'Ruaj dokumentin';

  @override
  String get documentName => 'Emri i dokumentit';

  @override
  String get documentNameHint => 'Shkruaj emrin e dokumentit';

  @override
  String get cancel => 'Anulo';

  @override
  String get save => 'Ruaj';

  @override
  String get documentSaved => 'Dokumenti u ruajt me sukses';

  @override
  String get saveFailed => 'Dokumenti nuk mund të ruhej';

  @override
  String pageCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count faqe',
      one: '1 faqe',
    );
    return '$_temp0';
  }

  @override
  String get noDocuments => 'Ende nuk ka dokumente të ruajtura';

  @override
  String get renameDocument => 'Riemërto dokumentin';

  @override
  String get deleteDocument => 'Fshi dokumentin';

  @override
  String get newDocumentName => 'Emri i ri i dokumentit';

  @override
  String get deleteDocumentTitle => 'Të fshihet dokumenti?';

  @override
  String get deleteDocumentMessage => 'Ky dokument dhe të gjitha faqet e tij do të fshihen përgjithmonë.';

  @override
  String get delete => 'Fshi';

  @override
  String get rename => 'Riemërto';

  @override
  String get saveAsPdf => 'Ruaj si PDF';

  @override
  String get creatingPdf => 'Po krijohet PDF-ja...';

  @override
  String get pdfCreated => 'PDF-ja u krijua me sukses';

  @override
  String get pdfCreateFailed => 'PDF-ja nuk mund të krijohej';

  @override
  String get exportDocument => 'Eksporto dokumentin';

  @override
  String get chooseExportFormat => 'Zgjidh formatin e eksportimit';

  @override
  String get pdfFormat => 'PDF';

  @override
  String get pdfFormatDescription => 'Bashko të gjitha faqet në një skedar PDF';

  @override
  String get jpegFormat => 'JPEG';

  @override
  String get jpegFormatDescription => 'Eksporto faqet si imazhe JPEG';

  @override
  String get pngFormat => 'PNG';

  @override
  String get pngFormatDescription => 'Eksporto faqet si imazhe PNG';

  @override
  String get myDocuments => 'Dokumentet e mia';

  @override
  String get searchDocuments => 'Kërko dokumente...';

  @override
  String get clearSearch => 'Pastro kërkimin';

  @override
  String get noMatchingDocuments => 'Nuk u gjet asnjë dokument që përputhet.';

  @override
  String get sortDocuments => 'Rendit dokumentet';

  @override
  String get newestFirst => 'Më të rejat në fillim';

  @override
  String get oldestFirst => 'Më të vjetrat në fillim';

  @override
  String get sortAZ => 'A–Z';

  @override
  String get scanFirstDocument => 'Skano dokumentin tënd të parë ose importo foto për të filluar.';

  @override
  String get shareApp => 'Ndaj aplikacionin';

  @override
  String get rateApp => 'Vlerëso aplikacionin';

  @override
  String get checkForUpdates => 'Kontrollo për përditësime';

  @override
  String get help => 'Ndihmë';

  @override
  String get howToUse => 'Si të përdoret';

  @override
  String get howToUseSubtitle => 'Mëso si të skanosh, modifikosh, ruash dhe ndash';

  @override
  String get howToUseIntro => 'Skano, organizo, modifiko dhe ndaj dokumentet në vetëm disa hapa.';

  @override
  String get howToScanTitle => 'Skano ose importo';

  @override
  String get howToScanDescription => 'Skano një dokument me kamerë ose importo një apo më shumë foto nga biblioteka e fotove.';

  @override
  String get howToEditTitle => 'Shiko dhe modifiko';

  @override
  String get howToEditDescription => 'Prit, rrotullo, shto, fshi ose ndrysho rendin e faqeve përpara ruajtjes.';

  @override
  String get howToSaveTitle => 'Ruaj dokumentin tënd';

  @override
  String get howToSaveDescription => 'Jepi dokumentit një emër dhe ruaje në mënyrë të sigurt brenda aplikacionit.';

  @override
  String get howToManageTitle => 'Menaxho dokumentet';

  @override
  String get howToManageDescription => 'Hap, kërko, riemërto, modifiko ose fshi dokumentet e ruajtura.';

  @override
  String get howToExportTitle => 'Ndaj dhe eksporto';

  @override
  String get howToUseTip => 'Këshillë: Dokumentet e ruajtura mbeten brenda aplikacionit Document Scanner derisa të zgjedhësh t’i eksportosh, ndash ose fshish.';

  @override
  String get howToExportDescription => 'Mund t’i ndash dokumentet në çdo kohë në formatin PDF, JPEG ose PNG përmes aplikacioneve të tjera.';

  @override
  String get recognizeText => 'Njih tekstin';

  @override
  String get editPage => 'Modifiko faqen';

  @override
  String get editPages => 'Modifiko faqet';

  @override
  String get searchablePdf => 'PDF me tekst të kërkueshëm';

  @override
  String get searchablePdfDescription => 'Faqet origjinale të skanuara me tekst të kërkueshëm';

  @override
  String get searchablePdfFailed => 'PDF-ja me tekst të kërkueshëm nuk mund të krijohej.';

  @override
  String get imageExportFailed => 'Imazhet nuk mund të eksportoheshin.';

  @override
  String get recognizeTextFailed => 'Teksti nuk mund të njihej.';

  @override
  String get recognizedTextTitle => 'Teksti i njohur';

  @override
  String get plainText => 'Tekst i thjeshtë';

  @override
  String get preserveFormat => 'Ruaj formatimin';

  @override
  String get preserveFormatFailed => 'Formatimi i tekstit nuk mund të ruhej.';

  @override
  String get noTextFound => 'Nuk u gjet tekst në këtë dokument.';

  @override
  String get textCopied => 'Teksti u kopjua!';

  @override
  String get copyText => 'Kopjo tekstin';

  @override
  String get shareText => 'Ndaj tekstin';

  @override
  String get cropDocument => 'Prit dokumentin';

  @override
  String get crop => 'Prit';

  @override
  String get rotate => 'Rrotullo';

  @override
  String get addPage => 'Shto faqe';

  @override
  String get scanNewPage => 'Skano faqe të re';

  @override
  String get useDocumentScanner => 'Përdor skanerin e dokumenteve';

  @override
  String get chooseFromPhotos => 'Zgjidh nga fotot';

  @override
  String get selectOneOrMorePhotos => 'Zgjidh një ose më shumë foto';

  @override
  String get reorder => 'Ndrysho rendin';

  @override
  String get reorderPages => 'Ndrysho rendin e faqeve';

  @override
  String get deleteCurrentPage => 'Fshi faqen aktuale';

  @override
  String get deletePageTitle => 'Të fshihet faqja?';

  @override
  String get deletePageMessage => 'Kjo faqe do të hiqet nga dokumenti.';

  @override
  String get saveChanges => 'Ruaj ndryshimet';

  @override
  String get savingChanges => 'Po ruhen...';

  @override
  String get dragToReorder => 'Tërhiq për të ndryshuar rendin';

  @override
  String get cropImageFailed => 'Imazhi nuk mund të pritej.';

  @override
  String get rotateImageFailed => 'Imazhi nuk mund të rrotullohej.';

  @override
  String get addScannedPageFailed => 'Faqja e skanuar nuk mund të shtohej.';

  @override
  String get addPhotoFailed => 'Fotoja nuk mund të shtohej.';

  @override
  String get saveChangesFailed => 'Ndryshimet nuk mund të ruheshin.';

  @override
  String get done => 'U krye';
}
