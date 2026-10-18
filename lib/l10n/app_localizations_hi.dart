// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hindi (`hi`).
class AppLocalizationsHi extends AppLocalizations {
  AppLocalizationsHi([String locale = 'hi']) : super(locale);

  @override
  String get appName => 'दस्तावेज़ स्कैनर';

  @override
  String get selectLanguage => 'भाषा चुनें';

  @override
  String get selectLanguageSubtitle => 'अपनी पसंदीदा भाषा चुनें';

  @override
  String get english => 'English';

  @override
  String get turkish => 'Türkçe';

  @override
  String get continueButton => 'जारी रखें';

  @override
  String get scanDocuments => 'दस्तावेज़ स्कैन करें';

  @override
  String get scanDescription => 'दस्तावेज़ स्कैन करें और उन्हें साफ़ डिजिटल फ़ाइलों में बदलें।';

  @override
  String get scanDocument => 'दस्तावेज़ स्कैन करें';

  @override
  String get importFromPhotos => 'फ़ोटो से आयात करें';

  @override
  String get emptyDocuments => 'आपके स्कैन किए गए दस्तावेज़ यहाँ दिखाई देंगे।';

  @override
  String get settings => 'सेटिंग्स';

  @override
  String get language => 'भाषा';

  @override
  String get documents => 'दस्तावेज़';

  @override
  String get recentScans => 'हाल के स्कैन';

  @override
  String get reviewScan => 'स्कैन की समीक्षा करें';

  @override
  String get page => 'पृष्ठ';

  @override
  String get deletePage => 'पृष्ठ हटाएँ';

  @override
  String get saveDocument => 'दस्तावेज़ सहेजें';

  @override
  String get documentName => 'दस्तावेज़ का नाम';

  @override
  String get documentNameHint => 'दस्तावेज़ का नाम दर्ज करें';

  @override
  String get cancel => 'रद्द करें';

  @override
  String get save => 'सहेजें';

  @override
  String get documentSaved => 'दस्तावेज़ सफलतापूर्वक सहेजा गया';

  @override
  String get saveFailed => 'दस्तावेज़ सहेजा नहीं जा सका';

  @override
  String pageCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count पृष्ठ',
      one: '1 पृष्ठ',
    );
    return '$_temp0';
  }

  @override
  String get noDocuments => 'अभी कोई सहेजा गया दस्तावेज़ नहीं है';

  @override
  String get renameDocument => 'दस्तावेज़ का नाम बदलें';

  @override
  String get deleteDocument => 'दस्तावेज़ हटाएँ';

  @override
  String get newDocumentName => 'दस्तावेज़ का नया नाम';

  @override
  String get deleteDocumentTitle => 'दस्तावेज़ हटाएँ?';

  @override
  String get deleteDocumentMessage => 'यह दस्तावेज़ और इसके सभी पृष्ठ स्थायी रूप से हटा दिए जाएँगे।';

  @override
  String get delete => 'हटाएँ';

  @override
  String get rename => 'नाम बदलें';

  @override
  String get saveAsPdf => 'PDF के रूप में सहेजें';

  @override
  String get creatingPdf => 'PDF बनाया जा रहा है...';

  @override
  String get pdfCreated => 'PDF सफलतापूर्वक बनाया गया';

  @override
  String get pdfCreateFailed => 'PDF नहीं बनाया जा सका';

  @override
  String get exportDocument => 'दस्तावेज़ निर्यात करें';

  @override
  String get chooseExportFormat => 'निर्यात प्रारूप चुनें';

  @override
  String get pdfFormat => 'PDF';

  @override
  String get pdfFormatDescription => 'सभी पृष्ठों को एक PDF फ़ाइल में जोड़ें';

  @override
  String get jpegFormat => 'JPEG';

  @override
  String get jpegFormatDescription => 'पृष्ठों को JPEG छवियों के रूप में निर्यात करें';

  @override
  String get pngFormat => 'PNG';

  @override
  String get pngFormatDescription => 'पृष्ठों को PNG छवियों के रूप में निर्यात करें';

  @override
  String get myDocuments => 'मेरे दस्तावेज़';

  @override
  String get searchDocuments => 'दस्तावेज़ खोजें...';

  @override
  String get clearSearch => 'खोज साफ़ करें';

  @override
  String get noMatchingDocuments => 'कोई मेल खाता दस्तावेज़ नहीं मिला।';

  @override
  String get sortDocuments => 'दस्तावेज़ क्रमबद्ध करें';

  @override
  String get newestFirst => 'सबसे नए पहले';

  @override
  String get oldestFirst => 'सबसे पुराने पहले';

  @override
  String get sortAZ => 'A–Z';

  @override
  String get scanFirstDocument => 'शुरू करने के लिए अपना पहला दस्तावेज़ स्कैन करें या फ़ोटो आयात करें।';

  @override
  String get shareApp => 'ऐप साझा करें';

  @override
  String get rateApp => 'ऐप को रेटिंग दें';

  @override
  String get checkForUpdates => 'अपडेट जाँचें';

  @override
  String get help => 'सहायता';

  @override
  String get howToUse => 'उपयोग कैसे करें';

  @override
  String get howToUseSubtitle => 'स्कैन करना, संपादित करना, सहेजना और साझा करना सीखें';

  @override
  String get howToUseIntro => 'कुछ आसान चरणों में अपने दस्तावेज़ स्कैन करें, व्यवस्थित करें, संपादित करें और साझा करें।';

  @override
  String get howToScanTitle => 'स्कैन करें या आयात करें';

  @override
  String get howToScanDescription => 'कैमरे से दस्तावेज़ स्कैन करें या अपनी फ़ोटो लाइब्रेरी से एक या अधिक फ़ोटो आयात करें।';

  @override
  String get howToEditTitle => 'समीक्षा और संपादन';

  @override
  String get howToEditDescription => 'सहेजने से पहले पृष्ठों को क्रॉप करें, घुमाएँ, जोड़ें, हटाएँ या उनका क्रम बदलें।';

  @override
  String get howToSaveTitle => 'अपना दस्तावेज़ सहेजें';

  @override
  String get howToSaveDescription => 'दस्तावेज़ को नाम दें और उसे ऐप के भीतर सुरक्षित रूप से सहेजें।';

  @override
  String get howToManageTitle => 'दस्तावेज़ प्रबंधित करें';

  @override
  String get howToManageDescription => 'सहेजे गए दस्तावेज़ खोलें, खोजें, उनका नाम बदलें, संपादित करें या हटाएँ।';

  @override
  String get howToExportTitle => 'साझा करें और निर्यात करें';

  @override
  String get howToUseTip => 'सुझाव: आपके सहेजे गए दस्तावेज़ तब तक दस्तावेज़ स्कैनर ऐप में रहते हैं, जब तक आप उन्हें निर्यात, साझा या हटा नहीं देते।';

  @override
  String get howToExportDescription => 'आप अपने दस्तावेज़ कभी भी अन्य ऐप्स के माध्यम से PDF, JPEG या PNG प्रारूप में साझा कर सकते हैं।';

  @override
  String get recognizeText => 'टेक्स्ट पहचानें';

  @override
  String get editPage => 'पृष्ठ संपादित करें';

  @override
  String get editPages => 'पृष्ठ संपादित करें';

  @override
  String get searchablePdf => 'खोजने योग्य PDF';

  @override
  String get searchablePdfDescription => 'खोजने योग्य टेक्स्ट के साथ मूल स्कैन किए गए पृष्ठ';

  @override
  String get searchablePdfFailed => 'खोजने योग्य PDF नहीं बनाया जा सका।';

  @override
  String get imageExportFailed => 'छवियाँ निर्यात नहीं की जा सकीं।';

  @override
  String get recognizeTextFailed => 'टेक्स्ट पहचाना नहीं जा सका।';

  @override
  String get recognizedTextTitle => 'पहचाना गया टेक्स्ट';

  @override
  String get plainText => 'सादा टेक्स्ट';

  @override
  String get preserveFormat => 'फ़ॉर्मैट बनाए रखें';

  @override
  String get preserveFormatFailed => 'टेक्स्ट का फ़ॉर्मैट बनाए नहीं रखा जा सका।';

  @override
  String get noTextFound => 'इस दस्तावेज़ में कोई टेक्स्ट नहीं मिला।';

  @override
  String get textCopied => 'टेक्स्ट कॉपी हो गया!';

  @override
  String get copyText => 'टेक्स्ट कॉपी करें';

  @override
  String get shareText => 'टेक्स्ट साझा करें';

  @override
  String get cropDocument => 'दस्तावेज़ क्रॉप करें';

  @override
  String get crop => 'क्रॉप करें';

  @override
  String get rotate => 'घुमाएँ';

  @override
  String get addPage => 'पृष्ठ जोड़ें';

  @override
  String get scanNewPage => 'नया पृष्ठ स्कैन करें';

  @override
  String get useDocumentScanner => 'दस्तावेज़ स्कैनर का उपयोग करें';

  @override
  String get chooseFromPhotos => 'फ़ोटो से चुनें';

  @override
  String get selectOneOrMorePhotos => 'एक या अधिक फ़ोटो चुनें';

  @override
  String get reorder => 'क्रम बदलें';

  @override
  String get reorderPages => 'पृष्ठों का क्रम बदलें';

  @override
  String get deleteCurrentPage => 'वर्तमान पृष्ठ हटाएँ';

  @override
  String get deletePageTitle => 'पृष्ठ हटाएँ?';

  @override
  String get deletePageMessage => 'यह पृष्ठ दस्तावेज़ से हटा दिया जाएगा।';

  @override
  String get saveChanges => 'बदलाव सहेजें';

  @override
  String get savingChanges => 'सहेजा जा रहा है...';

  @override
  String get dragToReorder => 'क्रम बदलने के लिए खींचें';

  @override
  String get cropImageFailed => 'छवि क्रॉप नहीं की जा सकी।';

  @override
  String get rotateImageFailed => 'छवि घुमाई नहीं जा सकी।';

  @override
  String get addScannedPageFailed => 'स्कैन किया गया पृष्ठ जोड़ा नहीं जा सका।';

  @override
  String get addPhotoFailed => 'फ़ोटो जोड़ी नहीं जा सकी।';

  @override
  String get saveChangesFailed => 'बदलाव सहेजे नहीं जा सके।';

  @override
  String get done => 'हो गया';
}
