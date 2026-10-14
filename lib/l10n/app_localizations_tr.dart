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
  String get exportDocument => 'Belgeyi Paylas';

  @override
  String get chooseExportFormat => 'Paylasma Formatını Seçin';

  @override
  String get pdfFormat => 'PDF';

  @override
  String get pdfFormatDescription => 'Tüm sayfaları tek bir PDF dosyasında birleştir';

  @override
  String get jpegFormat => 'JPEG';

  @override
  String get jpegFormatDescription => 'Sayfaları JPEG görselleri olarak paylasin';

  @override
  String get pngFormat => 'PNG';

  @override
  String get pngFormatDescription => 'Sayfaları PNG görselleri olarak paylasin';

  @override
  String get myDocuments => 'Belgelerim';

  @override
  String get searchDocuments => 'Belgelerde ara...';

  @override
  String get clearSearch => 'Aramayı temizle';

  @override
  String get noMatchingDocuments => 'Eşleşen belge bulunamadı.';

  @override
  String get sortDocuments => 'Belgeleri sırala';

  @override
  String get newestFirst => 'Önce en yeniler';

  @override
  String get oldestFirst => 'Önce en eskiler';

  @override
  String get sortAZ => 'A–Z';

  @override
  String get scanFirstDocument => 'Başlamak için ilk belgenizi tarayın veya galeriden fotoğraf ekleyin.';

  @override
  String get shareApp => 'Uygulamayı Paylaş';

  @override
  String get rateApp => 'Uygulamayı Değerlendir';

  @override
  String get checkForUpdates => 'Güncellemeleri Kontrol Et';

  @override
  String get help => 'Yardım';

  @override
  String get howToUse => 'Nasıl Kullanılır';

  @override
  String get howToUseSubtitle => 'Tarama, düzenleme, kaydetme ve paylaşmayı öğrenin';

  @override
  String get howToUseIntro => 'Belgelerinizi birkaç adımda tarayın, düzenleyin, organize edin ve paylaşın.';

  @override
  String get howToScanTitle => 'Tara veya İçe Aktar';

  @override
  String get howToScanDescription => 'Kameranızla bir belge tarayın veya fotoğraf galerinizden bir ya da birden fazla fotoğraf içe aktarın.';

  @override
  String get howToEditTitle => 'İncele ve Düzenle';

  @override
  String get howToEditDescription => 'Kaydetmeden önce sayfaları kırpın, döndürün, ekleyin, silin veya sıralarını değiştirin.';

  @override
  String get howToSaveTitle => 'Belgenizi Kaydedin';

  @override
  String get howToSaveDescription => 'Belgenize bir ad verin ve uygulama içinde güvenle kaydedin.';

  @override
  String get howToManageTitle => 'Belgeleri Yönet';

  @override
  String get howToManageDescription => 'Kaydedilen belgelerinizi açın, arayın, yeniden adlandırın, düzenleyin veya silin.';

  @override
  String get howToExportTitle => 'Paylaş';

  @override
  String get howToUseTip => 'İpucu: Kaydettiğiniz belgeler, siz dışa aktarana, paylaşana veya silene kadar Document Scanner uygulamasında kalır.';

  @override
  String get howToExportDescription => 'Belgelerinizi istediğiniz zaman PDF, JPEG veya PNG formatinda diğer uygulamalar araciligiyla paylaşabilirsiniz.';

  @override
  String get recognizeText => 'Metni Tanı';

  @override
  String get editPage => 'Sayfayı Düzenle';

  @override
  String get editPages => 'Sayfaları Düzenle';

  @override
  String get searchablePdf => 'Aranabilir PDF';

  @override
  String get searchablePdfDescription => 'Metin içinde arama yapılabilen orijinal taranmış sayfalar';

  @override
  String get searchablePdfFailed => 'Aranabilir PDF oluşturulamadı.';

  @override
  String get imageExportFailed => 'Görseller paylasilamadi.';

  @override
  String get recognizeTextFailed => 'Metin tanınamadı.';

  @override
  String get recognizedTextTitle => 'Tanınan Metin';

  @override
  String get plainText => 'Düz Metin';

  @override
  String get preserveFormat => 'Biçimi Koru';

  @override
  String get preserveFormatFailed => 'Metin biçimi korunamadı.';

  @override
  String get noTextFound => 'Bu belgede herhangi bir metin bulunamadı.';

  @override
  String get textCopied => 'Metin kopyalandı!';

  @override
  String get copyText => 'Metni Kopyala';

  @override
  String get shareText => 'Metni Paylaş';

  @override
  String get cropDocument => 'Belgeyi Kırp';

  @override
  String get crop => 'Kırp';

  @override
  String get rotate => 'Döndür';

  @override
  String get addPage => 'Sayfa Ekle';

  @override
  String get scanNewPage => 'Yeni Sayfa Tara';

  @override
  String get useDocumentScanner => 'Belge tarayıcıyı kullan';

  @override
  String get chooseFromPhotos => 'Galeriden Al';

  @override
  String get selectOneOrMorePhotos => 'Bir veya daha fazla fotoğraf seçin';

  @override
  String get reorder => 'Sırala';

  @override
  String get reorderPages => 'Sayfaları Sırala';

  @override
  String get deleteCurrentPage => 'Geçerli Sayfayı Sil';

  @override
  String get deletePageTitle => 'Sayfa Silinsin mi?';

  @override
  String get deletePageMessage => 'Bu sayfa belgeden kaldırılacak.';

  @override
  String get saveChanges => 'Değişiklikleri Kaydet';

  @override
  String get savingChanges => 'Kaydediliyor...';

  @override
  String get dragToReorder => 'Sıralamak için sürükleyin';

  @override
  String get cropImageFailed => 'Görsel kırpılamadı.';

  @override
  String get rotateImageFailed => 'Görsel döndürülemedi.';

  @override
  String get addScannedPageFailed => 'Taranan sayfa eklenemedi.';

  @override
  String get addPhotoFailed => 'Fotoğraf eklenemedi.';

  @override
  String get saveChangesFailed => 'Değişiklikler kaydedilemedi.';

  @override
  String get done => 'Tamamlandi';
}
