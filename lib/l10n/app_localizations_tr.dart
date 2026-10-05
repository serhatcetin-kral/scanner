// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Turkish (`tr`).
class AppLocalizationsTr extends AppLocalizations {
  AppLocalizationsTr([String locale = 'tr']) : super(locale);

  @override
  String get appName => 'Belge Tarayıcı';

  @override
  String get selectLanguage => 'Dil Seçin';

  @override
  String get selectLanguageSubtitle => 'Tercih ettiğiniz dili seçin';

  @override
  String get english => 'English';

  @override
  String get turkish => 'Türkçe';

  @override
  String get continueButton => 'Devam Et';

  @override
  String get scanDocuments => 'Belgeleri Tara';

  @override
  String get scanDescription => 'Belgeleri tarayın ve temiz dijital dosyalara dönüştürün.';

  @override
  String get scanDocument => 'Belge Tara';

  @override
  String get importFromPhotos => 'Galeriden Al';

  @override
  String get emptyDocuments => 'Taranan belgeleriniz burada görünecek.';

  @override
  String get settings => 'Ayarlar';

  @override
  String get language => 'Dil';

  @override
  String get documents => 'Belgeler';

  @override
  String get recentScans => 'Son Taramalar';

  @override
  String get reviewScan => 'Taramayı İncele';

  @override
  String get page => 'Sayfa';

  @override
  String get deletePage => 'Sayfayı Sil';

  @override
  String get saveDocument => 'Belgeyi Kaydet';

  @override
  String get documentName => 'Belge Adı';

  @override
  String get documentNameHint => 'Belge adını girin';

  @override
  String get cancel => 'İptal';

  @override
  String get save => 'Kaydet';

  @override
  String get documentSaved => 'Belge başarıyla kaydedildi';

  @override
  String get saveFailed => 'Belge kaydedilemedi';

  @override
  String pageCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count sayfa',
      one: '1 sayfa',
    );
    return '$_temp0';
  }

  @override
  String get noDocuments => 'Henüz kaydedilmiş belge yok';

  @override
  String get renameDocument => 'Belgeyi Yeniden Adlandır';

  @override
  String get deleteDocument => 'Belgeyi Sil';

  @override
  String get newDocumentName => 'Yeni belge adı';

  @override
  String get deleteDocumentTitle => 'Belge Silinsin mi?';

  @override
  String get deleteDocumentMessage => 'Bu belge ve tüm sayfaları kalıcı olarak silinecek.';

  @override
  String get delete => 'Sil';

  @override
  String get rename => 'Yeniden Adlandır';

  @override
  String get saveAsPdf => 'PDF Olarak Kaydet';

  @override
  String get creatingPdf => 'PDF oluşturuluyor...';

  @override
  String get pdfCreated => 'PDF başarıyla oluşturuldu';

  @override
  String get pdfCreateFailed => 'PDF oluşturulamadı';

  @override
  String get exportDocument => 'Belgeyi Dışa Aktar';

  @override
  String get chooseExportFormat => 'Dışa Aktarma Formatını Seçin';

  @override
  String get pdfFormat => 'PDF';

  @override
  String get pdfFormatDescription => 'Tüm sayfaları tek bir PDF dosyasında birleştir';

  @override
  String get jpegFormat => 'JPEG';

  @override
  String get jpegFormatDescription => 'Sayfaları JPEG görselleri olarak dışa aktar';

  @override
  String get pngFormat => 'PNG';

  @override
  String get pngFormatDescription => 'Sayfaları PNG görselleri olarak dışa aktar';
}
