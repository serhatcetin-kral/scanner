// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Urdu (`ur`).
class AppLocalizationsUr extends AppLocalizations {
  AppLocalizationsUr([String locale = 'ur']) : super(locale);

  @override
  String get appName => 'دستاویز اسکینر';

  @override
  String get selectLanguage => 'زبان منتخب کریں';

  @override
  String get selectLanguageSubtitle => 'اپنی پسندیدہ زبان منتخب کریں';

  @override
  String get english => 'English';

  @override
  String get turkish => 'Türkçe';

  @override
  String get continueButton => 'جاری رکھیں';

  @override
  String get scanDocuments => 'دستاویزات اسکین کریں';

  @override
  String get scanDescription => 'دستاویزات اسکین کریں اور انہیں صاف ڈیجیٹل فائلوں میں تبدیل کریں۔';

  @override
  String get scanDocument => 'دستاویز اسکین کریں';

  @override
  String get importFromPhotos => 'تصاویر سے درآمد کریں';

  @override
  String get emptyDocuments => 'آپ کی اسکین کردہ دستاویزات یہاں نظر آئیں گی۔';

  @override
  String get settings => 'ترتیبات';

  @override
  String get language => 'زبان';

  @override
  String get documents => 'دستاویزات';

  @override
  String get recentScans => 'حالیہ اسکین';

  @override
  String get reviewScan => 'اسکین کا جائزہ لیں';

  @override
  String get page => 'صفحہ';

  @override
  String get deletePage => 'صفحہ حذف کریں';

  @override
  String get saveDocument => 'دستاویز محفوظ کریں';

  @override
  String get documentName => 'دستاویز کا نام';

  @override
  String get documentNameHint => 'دستاویز کا نام درج کریں';

  @override
  String get cancel => 'منسوخ کریں';

  @override
  String get save => 'محفوظ کریں';

  @override
  String get documentSaved => 'دستاویز کامیابی سے محفوظ ہو گئی';

  @override
  String get saveFailed => 'دستاویز محفوظ نہیں کی جا سکی';

  @override
  String pageCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count صفحات',
      one: '1 صفحہ',
    );
    return '$_temp0';
  }

  @override
  String get noDocuments => 'ابھی کوئی محفوظ شدہ دستاویز نہیں';

  @override
  String get renameDocument => 'دستاویز کا نام تبدیل کریں';

  @override
  String get deleteDocument => 'دستاویز حذف کریں';

  @override
  String get newDocumentName => 'دستاویز کا نیا نام';

  @override
  String get deleteDocumentTitle => 'دستاویز حذف کریں؟';

  @override
  String get deleteDocumentMessage => 'یہ دستاویز اور اس کے تمام صفحات مستقل طور پر حذف ہو جائیں گے۔';

  @override
  String get delete => 'حذف کریں';

  @override
  String get rename => 'نام تبدیل کریں';

  @override
  String get saveAsPdf => 'PDF کے طور پر محفوظ کریں';

  @override
  String get creatingPdf => 'PDF بنائی جا رہی ہے...';

  @override
  String get pdfCreated => 'PDF کامیابی سے بن گئی';

  @override
  String get pdfCreateFailed => 'PDF نہیں بنائی جا سکی';

  @override
  String get exportDocument => 'دستاویز برآمد کریں';

  @override
  String get chooseExportFormat => 'برآمد کرنے کا فارمیٹ منتخب کریں';

  @override
  String get pdfFormat => 'PDF';

  @override
  String get pdfFormatDescription => 'تمام صفحات کو ایک PDF فائل میں یکجا کریں';

  @override
  String get jpegFormat => 'JPEG';

  @override
  String get jpegFormatDescription => 'صفحات کو JPEG تصاویر کے طور پر برآمد کریں';

  @override
  String get pngFormat => 'PNG';

  @override
  String get pngFormatDescription => 'صفحات کو PNG تصاویر کے طور پر برآمد کریں';

  @override
  String get myDocuments => 'میری دستاویزات';

  @override
  String get searchDocuments => 'دستاویزات تلاش کریں...';

  @override
  String get clearSearch => 'تلاش صاف کریں';

  @override
  String get noMatchingDocuments => 'کوئی مماثل دستاویز نہیں ملی۔';

  @override
  String get sortDocuments => 'دستاویزات ترتیب دیں';

  @override
  String get newestFirst => 'نئی پہلے';

  @override
  String get oldestFirst => 'پرانی پہلے';

  @override
  String get sortAZ => 'A–Z';

  @override
  String get scanFirstDocument => 'شروع کرنے کے لیے اپنی پہلی دستاویز اسکین کریں یا تصاویر درآمد کریں۔';

  @override
  String get shareApp => 'ایپ شیئر کریں';

  @override
  String get rateApp => 'ایپ کی درجہ بندی کریں';

  @override
  String get checkForUpdates => 'اپ ڈیٹس چیک کریں';

  @override
  String get help => 'مدد';

  @override
  String get howToUse => 'استعمال کا طریقہ';

  @override
  String get howToUseSubtitle => 'اسکین کرنا، ترمیم کرنا، محفوظ کرنا اور شیئر کرنا سیکھیں';

  @override
  String get howToUseIntro => 'چند آسان مراحل میں اپنی دستاویزات اسکین کریں، منظم کریں، ان میں ترمیم کریں اور شیئر کریں۔';

  @override
  String get howToScanTitle => 'اسکین یا درآمد کریں';

  @override
  String get howToScanDescription => 'کیمرے سے دستاویز اسکین کریں یا اپنی فوٹو لائبریری سے ایک یا زیادہ تصاویر درآمد کریں۔';

  @override
  String get howToEditTitle => 'جائزہ اور ترمیم';

  @override
  String get howToEditDescription => 'محفوظ کرنے سے پہلے صفحات کو کراپ کریں، گھمائیں، شامل کریں، حذف کریں یا ان کی ترتیب بدلیں۔';

  @override
  String get howToSaveTitle => 'اپنی دستاویز محفوظ کریں';

  @override
  String get howToSaveDescription => 'دستاویز کو نام دیں اور اسے ایپ کے اندر محفوظ طریقے سے رکھیں۔';

  @override
  String get howToManageTitle => 'دستاویزات کا انتظام';

  @override
  String get howToManageDescription => 'محفوظ شدہ دستاویزات کھولیں، تلاش کریں، نام بدلیں، ترمیم کریں یا حذف کریں۔';

  @override
  String get howToExportTitle => 'شیئر اور برآمد کریں';

  @override
  String get howToUseTip => 'مشورہ: آپ کی محفوظ شدہ دستاویزات اس وقت تک دستاویز اسکینر میں رہتی ہیں جب تک آپ انہیں برآمد، شیئر یا حذف نہ کریں۔';

  @override
  String get howToExportDescription => 'آپ اپنی دستاویزات کسی بھی وقت دیگر ایپس کے ذریعے PDF، JPEG یا PNG فارمیٹ میں شیئر کر سکتے ہیں۔';

  @override
  String get recognizeText => 'متن شناخت کریں';

  @override
  String get editPage => 'صفحے میں ترمیم کریں';

  @override
  String get editPages => 'صفحات میں ترمیم کریں';

  @override
  String get searchablePdf => 'تلاش کے قابل PDF';

  @override
  String get searchablePdfDescription => 'تلاش کے قابل متن کے ساتھ اصل اسکین شدہ صفحات';

  @override
  String get searchablePdfFailed => 'تلاش کے قابل PDF نہیں بنائی جا سکی۔';

  @override
  String get imageExportFailed => 'تصاویر برآمد نہیں کی جا سکیں۔';

  @override
  String get recognizeTextFailed => 'متن شناخت نہیں کیا جا سکا۔';

  @override
  String get recognizedTextTitle => 'شناخت شدہ متن';

  @override
  String get plainText => 'سادہ متن';

  @override
  String get preserveFormat => 'فارمیٹ برقرار رکھیں';

  @override
  String get preserveFormatFailed => 'متن کا فارمیٹ برقرار نہیں رکھا جا سکا۔';

  @override
  String get noTextFound => 'اس دستاویز میں کوئی متن نہیں ملا۔';

  @override
  String get textCopied => 'متن کاپی ہو گیا!';

  @override
  String get copyText => 'متن کاپی کریں';

  @override
  String get shareText => 'متن شیئر کریں';

  @override
  String get cropDocument => 'دستاویز کراپ کریں';

  @override
  String get crop => 'کراپ کریں';

  @override
  String get rotate => 'گھمائیں';

  @override
  String get addPage => 'صفحہ شامل کریں';

  @override
  String get scanNewPage => 'نیا صفحہ اسکین کریں';

  @override
  String get useDocumentScanner => 'دستاویز اسکینر استعمال کریں';

  @override
  String get chooseFromPhotos => 'تصاویر میں سے منتخب کریں';

  @override
  String get selectOneOrMorePhotos => 'ایک یا زیادہ تصاویر منتخب کریں';

  @override
  String get reorder => 'ترتیب بدلیں';

  @override
  String get reorderPages => 'صفحات کی ترتیب بدلیں';

  @override
  String get deleteCurrentPage => 'موجودہ صفحہ حذف کریں';

  @override
  String get deletePageTitle => 'صفحہ حذف کریں؟';

  @override
  String get deletePageMessage => 'یہ صفحہ دستاویز سے ہٹا دیا جائے گا۔';

  @override
  String get saveChanges => 'تبدیلیاں محفوظ کریں';

  @override
  String get savingChanges => 'محفوظ کیا جا رہا ہے...';

  @override
  String get dragToReorder => 'ترتیب بدلنے کے لیے کھینچیں';

  @override
  String get cropImageFailed => 'تصویر کراپ نہیں کی جا سکی۔';

  @override
  String get rotateImageFailed => 'تصویر گھمائی نہیں جا سکی۔';

  @override
  String get addScannedPageFailed => 'اسکین شدہ صفحہ شامل نہیں کیا جا سکا۔';

  @override
  String get addPhotoFailed => 'تصویر شامل نہیں کی جا سکی۔';

  @override
  String get saveChangesFailed => 'تبدیلیاں محفوظ نہیں کی جا سکیں۔';

  @override
  String get done => 'مکمل';
}
