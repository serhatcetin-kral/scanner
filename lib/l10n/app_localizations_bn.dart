// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Bengali Bangla (`bn`).
class AppLocalizationsBn extends AppLocalizations {
  AppLocalizationsBn([String locale = 'bn']) : super(locale);

  @override
  String get appName => 'ডকুমেন্ট স্ক্যানার';

  @override
  String get selectLanguage => 'ভাষা নির্বাচন করুন';

  @override
  String get selectLanguageSubtitle => 'আপনার পছন্দের ভাষা বেছে নিন';

  @override
  String get english => 'English';

  @override
  String get turkish => 'Türkçe';

  @override
  String get continueButton => 'চালিয়ে যান';

  @override
  String get scanDocuments => 'ডকুমেন্ট স্ক্যান করুন';

  @override
  String get scanDescription => 'ডকুমেন্ট স্ক্যান করে সেগুলোকে পরিষ্কার ডিজিটাল ফাইলে রূপান্তর করুন।';

  @override
  String get scanDocument => 'ডকুমেন্ট স্ক্যান করুন';

  @override
  String get importFromPhotos => 'ছবি থেকে আমদানি করুন';

  @override
  String get emptyDocuments => 'আপনার স্ক্যান করা ডকুমেন্ট এখানে দেখা যাবে।';

  @override
  String get settings => 'সেটিংস';

  @override
  String get language => 'ভাষা';

  @override
  String get documents => 'ডকুমেন্টসমূহ';

  @override
  String get recentScans => 'সাম্প্রতিক স্ক্যান';

  @override
  String get reviewScan => 'স্ক্যান পর্যালোচনা করুন';

  @override
  String get page => 'পৃষ্ঠা';

  @override
  String get deletePage => 'পৃষ্ঠা মুছুন';

  @override
  String get saveDocument => 'ডকুমেন্ট সংরক্ষণ করুন';

  @override
  String get documentName => 'ডকুমেন্টের নাম';

  @override
  String get documentNameHint => 'ডকুমেন্টের নাম লিখুন';

  @override
  String get cancel => 'বাতিল করুন';

  @override
  String get save => 'সংরক্ষণ করুন';

  @override
  String get documentSaved => 'ডকুমেন্ট সফলভাবে সংরক্ষিত হয়েছে';

  @override
  String get saveFailed => 'ডকুমেন্ট সংরক্ষণ করা যায়নি';

  @override
  String pageCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countটি পৃষ্ঠা',
      one: '১টি পৃষ্ঠা',
    );
    return '$_temp0';
  }

  @override
  String get noDocuments => 'এখনও কোনো সংরক্ষিত ডকুমেন্ট নেই';

  @override
  String get renameDocument => 'ডকুমেন্টের নাম পরিবর্তন করুন';

  @override
  String get deleteDocument => 'ডকুমেন্ট মুছুন';

  @override
  String get newDocumentName => 'ডকুমেন্টের নতুন নাম';

  @override
  String get deleteDocumentTitle => 'ডকুমেন্ট মুছবেন?';

  @override
  String get deleteDocumentMessage => 'এই ডকুমেন্ট এবং এর সব পৃষ্ঠা স্থায়ীভাবে মুছে ফেলা হবে।';

  @override
  String get delete => 'মুছুন';

  @override
  String get rename => 'নাম পরিবর্তন করুন';

  @override
  String get saveAsPdf => 'PDF হিসেবে সংরক্ষণ করুন';

  @override
  String get creatingPdf => 'PDF তৈরি হচ্ছে...';

  @override
  String get pdfCreated => 'PDF সফলভাবে তৈরি হয়েছে';

  @override
  String get pdfCreateFailed => 'PDF তৈরি করা যায়নি';

  @override
  String get exportDocument => 'ডকুমেন্ট রপ্তানি করুন';

  @override
  String get chooseExportFormat => 'রপ্তানির ফরম্যাট নির্বাচন করুন';

  @override
  String get pdfFormat => 'PDF';

  @override
  String get pdfFormatDescription => 'সব পৃষ্ঠা একটি PDF ফাইলে একত্র করুন';

  @override
  String get jpegFormat => 'JPEG';

  @override
  String get jpegFormatDescription => 'পৃষ্ঠাগুলো JPEG ছবি হিসেবে রপ্তানি করুন';

  @override
  String get pngFormat => 'PNG';

  @override
  String get pngFormatDescription => 'পৃষ্ঠাগুলো PNG ছবি হিসেবে রপ্তানি করুন';

  @override
  String get myDocuments => 'আমার ডকুমেন্ট';

  @override
  String get searchDocuments => 'ডকুমেন্ট খুঁজুন...';

  @override
  String get clearSearch => 'অনুসন্ধান মুছুন';

  @override
  String get noMatchingDocuments => 'কোনো মিল থাকা ডকুমেন্ট পাওয়া যায়নি।';

  @override
  String get sortDocuments => 'ডকুমেন্ট সাজান';

  @override
  String get newestFirst => 'নতুনগুলো আগে';

  @override
  String get oldestFirst => 'পুরোনোগুলো আগে';

  @override
  String get sortAZ => 'A–Z';

  @override
  String get scanFirstDocument => 'শুরু করতে প্রথম ডকুমেন্টটি স্ক্যান করুন অথবা ছবি আমদানি করুন।';

  @override
  String get shareApp => 'অ্যাপ শেয়ার করুন';

  @override
  String get rateApp => 'অ্যাপকে রেটিং দিন';

  @override
  String get checkForUpdates => 'আপডেট আছে কি না দেখুন';

  @override
  String get help => 'সহায়তা';

  @override
  String get howToUse => 'ব্যবহারের নিয়ম';

  @override
  String get howToUseSubtitle => 'স্ক্যান, সম্পাদনা, সংরক্ষণ ও শেয়ার করার পদ্ধতি জানুন';

  @override
  String get howToUseIntro => 'মাত্র কয়েকটি ধাপে আপনার ডকুমেন্ট স্ক্যান, সাজানো, সম্পাদনা ও শেয়ার করুন।';

  @override
  String get howToScanTitle => 'স্ক্যান বা আমদানি করুন';

  @override
  String get howToScanDescription => 'ক্যামেরা দিয়ে ডকুমেন্ট স্ক্যান করুন অথবা ফটো লাইব্রেরি থেকে এক বা একাধিক ছবি আমদানি করুন।';

  @override
  String get howToEditTitle => 'পর্যালোচনা ও সম্পাদনা';

  @override
  String get howToEditDescription => 'সংরক্ষণের আগে পৃষ্ঠা ক্রপ করুন, ঘোরান, যোগ করুন, মুছুন বা ক্রম পরিবর্তন করুন।';

  @override
  String get howToSaveTitle => 'আপনার ডকুমেন্ট সংরক্ষণ করুন';

  @override
  String get howToSaveDescription => 'ডকুমেন্টের একটি নাম দিন এবং অ্যাপের মধ্যে নিরাপদে সংরক্ষণ করুন।';

  @override
  String get howToManageTitle => 'ডকুমেন্ট পরিচালনা করুন';

  @override
  String get howToManageDescription => 'সংরক্ষিত ডকুমেন্ট খুলুন, খুঁজুন, নাম পরিবর্তন করুন, সম্পাদনা করুন বা মুছুন।';

  @override
  String get howToExportTitle => 'শেয়ার ও রপ্তানি';

  @override
  String get howToUseTip => 'পরামর্শ: আপনি রপ্তানি, শেয়ার বা মুছে না ফেলা পর্যন্ত সংরক্ষিত ডকুমেন্ট ডকুমেন্ট স্ক্যানার অ্যাপের মধ্যেই থাকবে।';

  @override
  String get howToExportDescription => 'আপনি যেকোনো সময় অন্য অ্যাপের মাধ্যমে PDF, JPEG বা PNG ফরম্যাটে ডকুমেন্ট শেয়ার করতে পারবেন।';

  @override
  String get recognizeText => 'লেখা শনাক্ত করুন';

  @override
  String get editPage => 'পৃষ্ঠা সম্পাদনা করুন';

  @override
  String get editPages => 'পৃষ্ঠাগুলো সম্পাদনা করুন';

  @override
  String get searchablePdf => 'অনুসন্ধানযোগ্য PDF';

  @override
  String get searchablePdfDescription => 'অনুসন্ধানযোগ্য লেখাসহ মূল স্ক্যান করা পৃষ্ঠাগুলো';

  @override
  String get searchablePdfFailed => 'অনুসন্ধানযোগ্য PDF তৈরি করা যায়নি।';

  @override
  String get imageExportFailed => 'ছবি রপ্তানি করা যায়নি।';

  @override
  String get recognizeTextFailed => 'লেখা শনাক্ত করা যায়নি।';

  @override
  String get recognizedTextTitle => 'শনাক্ত করা লেখা';

  @override
  String get plainText => 'সাধারণ লেখা';

  @override
  String get preserveFormat => 'বিন্যাস অক্ষুণ্ণ রাখুন';

  @override
  String get preserveFormatFailed => 'লেখার বিন্যাস অক্ষুণ্ণ রাখা যায়নি।';

  @override
  String get noTextFound => 'এই ডকুমেন্টে কোনো লেখা পাওয়া যায়নি।';

  @override
  String get textCopied => 'লেখা কপি হয়েছে!';

  @override
  String get copyText => 'লেখা কপি করুন';

  @override
  String get shareText => 'লেখা শেয়ার করুন';

  @override
  String get cropDocument => 'ডকুমেন্ট ক্রপ করুন';

  @override
  String get crop => 'ক্রপ করুন';

  @override
  String get rotate => 'ঘোরান';

  @override
  String get addPage => 'পৃষ্ঠা যোগ করুন';

  @override
  String get scanNewPage => 'নতুন পৃষ্ঠা স্ক্যান করুন';

  @override
  String get useDocumentScanner => 'ডকুমেন্ট স্ক্যানার ব্যবহার করুন';

  @override
  String get chooseFromPhotos => 'ছবি থেকে বেছে নিন';

  @override
  String get selectOneOrMorePhotos => 'এক বা একাধিক ছবি নির্বাচন করুন';

  @override
  String get reorder => 'ক্রম পরিবর্তন করুন';

  @override
  String get reorderPages => 'পৃষ্ঠাগুলোর ক্রম পরিবর্তন করুন';

  @override
  String get deleteCurrentPage => 'বর্তমান পৃষ্ঠা মুছুন';

  @override
  String get deletePageTitle => 'পৃষ্ঠা মুছবেন?';

  @override
  String get deletePageMessage => 'এই পৃষ্ঠাটি ডকুমেন্ট থেকে সরিয়ে দেওয়া হবে।';

  @override
  String get saveChanges => 'পরিবর্তনগুলো সংরক্ষণ করুন';

  @override
  String get savingChanges => 'সংরক্ষণ করা হচ্ছে...';

  @override
  String get dragToReorder => 'ক্রম পরিবর্তন করতে টেনে আনুন';

  @override
  String get cropImageFailed => 'ছবি ক্রপ করা যায়নি।';

  @override
  String get rotateImageFailed => 'ছবি ঘোরানো যায়নি।';

  @override
  String get addScannedPageFailed => 'স্ক্যান করা পৃষ্ঠা যোগ করা যায়নি।';

  @override
  String get addPhotoFailed => 'ছবি যোগ করা যায়নি।';

  @override
  String get saveChangesFailed => 'পরিবর্তনগুলো সংরক্ষণ করা যায়নি।';

  @override
  String get done => 'সম্পন্ন';
}
