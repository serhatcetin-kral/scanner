// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get appName => 'ماسح المستندات';

  @override
  String get selectLanguage => 'اختر اللغة';

  @override
  String get selectLanguageSubtitle => 'اختر لغتك المفضلة';

  @override
  String get english => 'English';

  @override
  String get turkish => 'Türkçe';

  @override
  String get continueButton => 'متابعة';

  @override
  String get scanDocuments => 'مسح المستندات ضوئيًا';

  @override
  String get scanDescription => 'امسح المستندات ضوئيًا وحوّلها إلى ملفات رقمية واضحة.';

  @override
  String get scanDocument => 'مسح مستند ضوئيًا';

  @override
  String get importFromPhotos => 'استيراد من الصور';

  @override
  String get emptyDocuments => 'ستظهر مستنداتك الممسوحة ضوئيًا هنا.';

  @override
  String get settings => 'الإعدادات';

  @override
  String get language => 'اللغة';

  @override
  String get documents => 'المستندات';

  @override
  String get recentScans => 'عمليات المسح الأخيرة';

  @override
  String get reviewScan => 'مراجعة المسح';

  @override
  String get page => 'صفحة';

  @override
  String get deletePage => 'حذف الصفحة';

  @override
  String get saveDocument => 'حفظ المستند';

  @override
  String get documentName => 'اسم المستند';

  @override
  String get documentNameHint => 'أدخل اسم المستند';

  @override
  String get cancel => 'إلغاء';

  @override
  String get save => 'حفظ';

  @override
  String get documentSaved => 'تم حفظ المستند بنجاح';

  @override
  String get saveFailed => 'تعذر حفظ المستند';

  @override
  String pageCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count صفحات',
      one: 'صفحة واحدة',
    );
    return '$_temp0';
  }

  @override
  String get noDocuments => 'لا توجد مستندات محفوظة بعد';

  @override
  String get renameDocument => 'إعادة تسمية المستند';

  @override
  String get deleteDocument => 'حذف المستند';

  @override
  String get newDocumentName => 'اسم المستند الجديد';

  @override
  String get deleteDocumentTitle => 'هل تريد حذف المستند؟';

  @override
  String get deleteDocumentMessage => 'سيُحذف هذا المستند وجميع صفحاته نهائيًا.';

  @override
  String get delete => 'حذف';

  @override
  String get rename => 'إعادة تسمية';

  @override
  String get saveAsPdf => 'حفظ بصيغة PDF';

  @override
  String get creatingPdf => 'جارٍ إنشاء ملف PDF...';

  @override
  String get pdfCreated => 'تم إنشاء ملف PDF بنجاح';

  @override
  String get pdfCreateFailed => 'تعذر إنشاء ملف PDF';

  @override
  String get exportDocument => 'تصدير المستند';

  @override
  String get chooseExportFormat => 'اختر صيغة التصدير';

  @override
  String get pdfFormat => 'PDF';

  @override
  String get pdfFormatDescription => 'دمج جميع الصفحات في ملف PDF واحد';

  @override
  String get jpegFormat => 'JPEG';

  @override
  String get jpegFormatDescription => 'تصدير الصفحات كصور JPEG';

  @override
  String get pngFormat => 'PNG';

  @override
  String get pngFormatDescription => 'تصدير الصفحات كصور PNG';

  @override
  String get myDocuments => 'مستنداتي';

  @override
  String get searchDocuments => 'البحث في المستندات...';

  @override
  String get clearSearch => 'مسح البحث';

  @override
  String get noMatchingDocuments => 'لم يتم العثور على مستندات مطابقة.';

  @override
  String get sortDocuments => 'ترتيب المستندات';

  @override
  String get newestFirst => 'الأحدث أولًا';

  @override
  String get oldestFirst => 'الأقدم أولًا';

  @override
  String get sortAZ => 'أ–ي';

  @override
  String get scanFirstDocument => 'امسح مستندك الأول ضوئيًا أو استورد صورًا للبدء.';

  @override
  String get shareApp => 'مشاركة التطبيق';

  @override
  String get rateApp => 'تقييم التطبيق';

  @override
  String get checkForUpdates => 'التحقق من التحديثات';

  @override
  String get help => 'المساعدة';

  @override
  String get howToUse => 'كيفية الاستخدام';

  @override
  String get howToUseSubtitle => 'تعرّف على كيفية المسح والتحرير والحفظ والمشاركة';

  @override
  String get howToUseIntro => 'امسح مستنداتك ونظّمها وحرّرها وشاركها في خطوات بسيطة.';

  @override
  String get howToScanTitle => 'المسح أو الاستيراد';

  @override
  String get howToScanDescription => 'امسح مستندًا باستخدام الكاميرا أو استورد صورة واحدة أو أكثر من مكتبة الصور.';

  @override
  String get howToEditTitle => 'المراجعة والتحرير';

  @override
  String get howToEditDescription => 'اقتص الصفحات أو دوّرها أو أضفها أو احذفها أو أعد ترتيبها قبل الحفظ.';

  @override
  String get howToSaveTitle => 'حفظ المستند';

  @override
  String get howToSaveDescription => 'أعطِ مستندك اسمًا واحفظه بأمان داخل التطبيق.';

  @override
  String get howToManageTitle => 'إدارة المستندات';

  @override
  String get howToManageDescription => 'افتح مستنداتك المحفوظة أو ابحث عنها أو أعد تسميتها أو حرّرها أو احذفها.';

  @override
  String get howToExportTitle => 'المشاركة والتصدير';

  @override
  String get howToUseTip => 'نصيحة: تبقى مستنداتك المحفوظة داخل تطبيق ماسح المستندات حتى تختار تصديرها أو مشاركتها أو حذفها.';

  @override
  String get howToExportDescription => 'يمكنك مشاركة مستنداتك في أي وقت بصيغة PDF أو JPEG أو PNG عبر تطبيقات أخرى.';

  @override
  String get recognizeText => 'التعرّف على النص';

  @override
  String get editPage => 'تحرير الصفحة';

  @override
  String get editPages => 'تحرير الصفحات';

  @override
  String get searchablePdf => 'ملف PDF قابل للبحث';

  @override
  String get searchablePdfDescription => 'الصفحات الأصلية الممسوحة ضوئيًا مع نص قابل للبحث';

  @override
  String get searchablePdfFailed => 'تعذر إنشاء ملف PDF قابل للبحث.';

  @override
  String get imageExportFailed => 'تعذر تصدير الصور.';

  @override
  String get recognizeTextFailed => 'تعذر التعرّف على النص.';

  @override
  String get recognizedTextTitle => 'النص المتعرّف عليه';

  @override
  String get plainText => 'نص عادي';

  @override
  String get preserveFormat => 'الاحتفاظ بالتنسيق';

  @override
  String get preserveFormatFailed => 'تعذر الاحتفاظ بتنسيق النص.';

  @override
  String get noTextFound => 'لم يتم العثور على نص في هذا المستند.';

  @override
  String get textCopied => 'تم نسخ النص!';

  @override
  String get copyText => 'نسخ النص';

  @override
  String get shareText => 'مشاركة النص';

  @override
  String get cropDocument => 'اقتصاص المستند';

  @override
  String get crop => 'اقتصاص';

  @override
  String get rotate => 'تدوير';

  @override
  String get addPage => 'إضافة صفحة';

  @override
  String get scanNewPage => 'مسح صفحة جديدة ضوئيًا';

  @override
  String get useDocumentScanner => 'استخدام ماسح المستندات';

  @override
  String get chooseFromPhotos => 'اختيار من الصور';

  @override
  String get selectOneOrMorePhotos => 'اختر صورة واحدة أو أكثر';

  @override
  String get reorder => 'إعادة الترتيب';

  @override
  String get reorderPages => 'إعادة ترتيب الصفحات';

  @override
  String get deleteCurrentPage => 'حذف الصفحة الحالية';

  @override
  String get deletePageTitle => 'هل تريد حذف الصفحة؟';

  @override
  String get deletePageMessage => 'ستُزال هذه الصفحة من المستند.';

  @override
  String get saveChanges => 'حفظ التغييرات';

  @override
  String get savingChanges => 'جارٍ الحفظ...';

  @override
  String get dragToReorder => 'اسحب لإعادة الترتيب';

  @override
  String get cropImageFailed => 'تعذر اقتصاص الصورة.';

  @override
  String get rotateImageFailed => 'تعذر تدوير الصورة.';

  @override
  String get addScannedPageFailed => 'تعذر إضافة الصفحة الممسوحة ضوئيًا.';

  @override
  String get addPhotoFailed => 'تعذر إضافة الصورة.';

  @override
  String get saveChangesFailed => 'تعذر حفظ التغييرات.';

  @override
  String get done => 'تم';
}
