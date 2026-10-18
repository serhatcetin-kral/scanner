// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Kazakh (`kk`).
class AppLocalizationsKk extends AppLocalizations {
  AppLocalizationsKk([String locale = 'kk']) : super(locale);

  @override
  String get appName => 'Құжат сканері';

  @override
  String get selectLanguage => 'Тілді таңдаңыз';

  @override
  String get selectLanguageSubtitle => 'Өзіңізге ыңғайлы тілді таңдаңыз';

  @override
  String get english => 'English';

  @override
  String get turkish => 'Türkçe';

  @override
  String get continueButton => 'Жалғастыру';

  @override
  String get scanDocuments => 'Құжаттарды сканерлеу';

  @override
  String get scanDescription => 'Құжаттарды сканерлеп, оларды сапалы цифрлық файлдарға айналдырыңыз.';

  @override
  String get scanDocument => 'Құжатты сканерлеу';

  @override
  String get importFromPhotos => 'Фотосуреттерден импорттау';

  @override
  String get emptyDocuments => 'Сканерленген құжаттарыңыз осында көрсетіледі.';

  @override
  String get settings => 'Параметрлер';

  @override
  String get language => 'Тіл';

  @override
  String get documents => 'Құжаттар';

  @override
  String get recentScans => 'Соңғы сканерлеулер';

  @override
  String get reviewScan => 'Сканерлеуді тексеру';

  @override
  String get page => 'Бет';

  @override
  String get deletePage => 'Бетті жою';

  @override
  String get saveDocument => 'Құжатты сақтау';

  @override
  String get documentName => 'Құжат атауы';

  @override
  String get documentNameHint => 'Құжат атауын енгізіңіз';

  @override
  String get cancel => 'Бас тарту';

  @override
  String get save => 'Сақтау';

  @override
  String get documentSaved => 'Құжат сәтті сақталды';

  @override
  String get saveFailed => 'Құжатты сақтау мүмкін болмады';

  @override
  String pageCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count бет',
      one: '1 бет',
    );
    return '$_temp0';
  }

  @override
  String get noDocuments => 'Әзірге сақталған құжаттар жоқ';

  @override
  String get renameDocument => 'Құжат атауын өзгерту';

  @override
  String get deleteDocument => 'Құжатты жою';

  @override
  String get newDocumentName => 'Жаңа құжат атауы';

  @override
  String get deleteDocumentTitle => 'Құжат жойылсын ба?';

  @override
  String get deleteDocumentMessage => 'Бұл құжат және оның барлық беттері біржола жойылады.';

  @override
  String get delete => 'Жою';

  @override
  String get rename => 'Атын өзгерту';

  @override
  String get saveAsPdf => 'PDF ретінде сақтау';

  @override
  String get creatingPdf => 'PDF жасалуда...';

  @override
  String get pdfCreated => 'PDF сәтті жасалды';

  @override
  String get pdfCreateFailed => 'PDF жасау мүмкін болмады';

  @override
  String get exportDocument => 'Құжатты экспорттау';

  @override
  String get chooseExportFormat => 'Экспорт пішімін таңдаңыз';

  @override
  String get pdfFormat => 'PDF';

  @override
  String get pdfFormatDescription => 'Барлық беттерді бір PDF файлына біріктіру';

  @override
  String get jpegFormat => 'JPEG';

  @override
  String get jpegFormatDescription => 'Беттерді JPEG кескіндері ретінде экспорттау';

  @override
  String get pngFormat => 'PNG';

  @override
  String get pngFormatDescription => 'Беттерді PNG кескіндері ретінде экспорттау';

  @override
  String get myDocuments => 'Менің құжаттарым';

  @override
  String get searchDocuments => 'Құжаттарды іздеу...';

  @override
  String get clearSearch => 'Іздеуді тазалау';

  @override
  String get noMatchingDocuments => 'Сәйкес құжаттар табылмады.';

  @override
  String get sortDocuments => 'Құжаттарды сұрыптау';

  @override
  String get newestFirst => 'Алдымен жаңалары';

  @override
  String get oldestFirst => 'Алдымен ескілері';

  @override
  String get sortAZ => 'А–Я';

  @override
  String get scanFirstDocument => 'Бастау үшін алғашқы құжатыңызды сканерлеңіз немесе фотосуреттерді импорттаңыз.';

  @override
  String get shareApp => 'Қолданбаны бөлісу';

  @override
  String get rateApp => 'Қолданбаны бағалау';

  @override
  String get checkForUpdates => 'Жаңартуларды тексеру';

  @override
  String get help => 'Көмек';

  @override
  String get howToUse => 'Қолдану нұсқаулығы';

  @override
  String get howToUseSubtitle => 'Сканерлеуді, өңдеуді, сақтауды және бөлісуді үйреніңіз';

  @override
  String get howToUseIntro => 'Құжаттарды бірнеше қадаммен сканерлеңіз, реттеңіз, өңдеңіз және бөлісіңіз.';

  @override
  String get howToScanTitle => 'Сканерлеу немесе импорттау';

  @override
  String get howToScanDescription => 'Құжатты камерамен сканерлеңіз немесе фотокітапханадан бір не бірнеше фотосуретті импорттаңыз.';

  @override
  String get howToEditTitle => 'Тексеру және өңдеу';

  @override
  String get howToEditDescription => 'Сақтау алдында беттерді қиыңыз, бұрыңыз, қосыңыз, жойыңыз немесе ретін өзгертіңіз.';

  @override
  String get howToSaveTitle => 'Құжатты сақтау';

  @override
  String get howToSaveDescription => 'Құжатқа атау беріп, оны қолданбаның ішінде қауіпсіз сақтаңыз.';

  @override
  String get howToManageTitle => 'Құжаттарды басқару';

  @override
  String get howToManageDescription => 'Сақталған құжаттарды ашыңыз, іздеңіз, атауын өзгертіңіз, өңдеңіз немесе жойыңыз.';

  @override
  String get howToExportTitle => 'Бөлісу және экспорттау';

  @override
  String get howToUseTip => 'Кеңес: сақталған құжаттарыңыз оларды экспорттағанша, бөліскенше немесе жойғанша Құжат сканері қолданбасында қалады.';

  @override
  String get howToExportDescription => 'Құжаттарды кез келген уақытта басқа қолданбалар арқылы PDF, JPEG немесе PNG пішімінде бөлісе аласыз.';

  @override
  String get recognizeText => 'Мәтінді тану';

  @override
  String get editPage => 'Бетті өңдеу';

  @override
  String get editPages => 'Беттерді өңдеу';

  @override
  String get searchablePdf => 'Іздеуге болатын PDF';

  @override
  String get searchablePdfDescription => 'Іздеуге болатын мәтіні бар бастапқы сканерленген беттер';

  @override
  String get searchablePdfFailed => 'Іздеуге болатын PDF жасау мүмкін болмады.';

  @override
  String get imageExportFailed => 'Кескіндерді экспорттау мүмкін болмады.';

  @override
  String get recognizeTextFailed => 'Мәтінді тану мүмкін болмады.';

  @override
  String get recognizedTextTitle => 'Танылған мәтін';

  @override
  String get plainText => 'Қарапайым мәтін';

  @override
  String get preserveFormat => 'Пішімдеуді сақтау';

  @override
  String get preserveFormatFailed => 'Мәтін пішімін сақтау мүмкін болмады.';

  @override
  String get noTextFound => 'Бұл құжаттан мәтін табылмады.';

  @override
  String get textCopied => 'Мәтін көшірілді!';

  @override
  String get copyText => 'Мәтінді көшіру';

  @override
  String get shareText => 'Мәтінмен бөлісу';

  @override
  String get cropDocument => 'Құжатты қию';

  @override
  String get crop => 'Қию';

  @override
  String get rotate => 'Бұру';

  @override
  String get addPage => 'Бет қосу';

  @override
  String get scanNewPage => 'Жаңа бетті сканерлеу';

  @override
  String get useDocumentScanner => 'Құжат сканерін пайдалану';

  @override
  String get chooseFromPhotos => 'Фотосуреттерден таңдау';

  @override
  String get selectOneOrMorePhotos => 'Бір немесе бірнеше фотосуретті таңдаңыз';

  @override
  String get reorder => 'Ретін өзгерту';

  @override
  String get reorderPages => 'Беттердің ретін өзгерту';

  @override
  String get deleteCurrentPage => 'Ағымдағы бетті жою';

  @override
  String get deletePageTitle => 'Бет жойылсын ба?';

  @override
  String get deletePageMessage => 'Бұл бет құжаттан жойылады.';

  @override
  String get saveChanges => 'Өзгерістерді сақтау';

  @override
  String get savingChanges => 'Сақталуда...';

  @override
  String get dragToReorder => 'Ретін өзгерту үшін сүйреңіз';

  @override
  String get cropImageFailed => 'Кескінді қию мүмкін болмады.';

  @override
  String get rotateImageFailed => 'Кескінді бұру мүмкін болмады.';

  @override
  String get addScannedPageFailed => 'Сканерленген бетті қосу мүмкін болмады.';

  @override
  String get addPhotoFailed => 'Фотосуретті қосу мүмкін болмады.';

  @override
  String get saveChangesFailed => 'Өзгерістерді сақтау мүмкін болмады.';

  @override
  String get done => 'Дайын';
}
