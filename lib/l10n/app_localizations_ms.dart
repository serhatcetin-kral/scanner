// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Malay (`ms`).
class AppLocalizationsMs extends AppLocalizations {
  AppLocalizationsMs([String locale = 'ms']) : super(locale);

  @override
  String get appName => 'Pengimbas Dokumen';

  @override
  String get selectLanguage => 'Pilih Bahasa';

  @override
  String get selectLanguageSubtitle => 'Pilih bahasa pilihan anda';

  @override
  String get english => 'English';

  @override
  String get turkish => 'Türkçe';

  @override
  String get continueButton => 'Teruskan';

  @override
  String get scanDocuments => 'Imbas Dokumen';

  @override
  String get scanDescription => 'Imbas dokumen dan tukarkannya menjadi fail digital yang jelas.';

  @override
  String get scanDocument => 'Imbas Dokumen';

  @override
  String get importFromPhotos => 'Import daripada Foto';

  @override
  String get emptyDocuments => 'Dokumen yang anda imbas akan dipaparkan di sini.';

  @override
  String get settings => 'Tetapan';

  @override
  String get language => 'Bahasa';

  @override
  String get documents => 'Dokumen';

  @override
  String get recentScans => 'Imbasan Terkini';

  @override
  String get reviewScan => 'Semak Imbasan';

  @override
  String get page => 'Halaman';

  @override
  String get deletePage => 'Padam Halaman';

  @override
  String get saveDocument => 'Simpan Dokumen';

  @override
  String get documentName => 'Nama Dokumen';

  @override
  String get documentNameHint => 'Masukkan nama dokumen';

  @override
  String get cancel => 'Batal';

  @override
  String get save => 'Simpan';

  @override
  String get documentSaved => 'Dokumen berjaya disimpan';

  @override
  String get saveFailed => 'Dokumen tidak dapat disimpan';

  @override
  String pageCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count halaman',
      one: '1 halaman',
    );
    return '$_temp0';
  }

  @override
  String get noDocuments => 'Belum ada dokumen yang disimpan';

  @override
  String get renameDocument => 'Namakan Semula Dokumen';

  @override
  String get deleteDocument => 'Padam Dokumen';

  @override
  String get newDocumentName => 'Nama dokumen baharu';

  @override
  String get deleteDocumentTitle => 'Padam Dokumen?';

  @override
  String get deleteDocumentMessage => 'Dokumen ini dan semua halamannya akan dipadamkan secara kekal.';

  @override
  String get delete => 'Padam';

  @override
  String get rename => 'Namakan Semula';

  @override
  String get saveAsPdf => 'Simpan sebagai PDF';

  @override
  String get creatingPdf => 'Sedang mencipta PDF...';

  @override
  String get pdfCreated => 'PDF berjaya dicipta';

  @override
  String get pdfCreateFailed => 'PDF tidak dapat dicipta';

  @override
  String get exportDocument => 'Eksport Dokumen';

  @override
  String get chooseExportFormat => 'Pilih Format Eksport';

  @override
  String get pdfFormat => 'PDF';

  @override
  String get pdfFormatDescription => 'Gabungkan semua halaman dalam satu fail PDF';

  @override
  String get jpegFormat => 'JPEG';

  @override
  String get jpegFormatDescription => 'Eksport halaman sebagai imej JPEG';

  @override
  String get pngFormat => 'PNG';

  @override
  String get pngFormatDescription => 'Eksport halaman sebagai imej PNG';

  @override
  String get myDocuments => 'Dokumen Saya';

  @override
  String get searchDocuments => 'Cari dokumen...';

  @override
  String get clearSearch => 'Kosongkan carian';

  @override
  String get noMatchingDocuments => 'Tiada dokumen yang sepadan.';

  @override
  String get sortDocuments => 'Isih dokumen';

  @override
  String get newestFirst => 'Terbaharu dahulu';

  @override
  String get oldestFirst => 'Terlama dahulu';

  @override
  String get sortAZ => 'A–Z';

  @override
  String get scanFirstDocument => 'Imbas dokumen pertama anda atau import foto untuk bermula.';

  @override
  String get shareApp => 'Kongsi Aplikasi';

  @override
  String get rateApp => 'Nilaikan Aplikasi';

  @override
  String get checkForUpdates => 'Semak Kemas Kini';

  @override
  String get help => 'Bantuan';

  @override
  String get howToUse => 'Cara Menggunakan';

  @override
  String get howToUseSubtitle => 'Ketahui cara mengimbas, mengedit, menyimpan dan berkongsi';

  @override
  String get howToUseIntro => 'Imbas, susun, edit dan kongsi dokumen anda dalam beberapa langkah sahaja.';

  @override
  String get howToScanTitle => 'Imbas atau Import';

  @override
  String get howToScanDescription => 'Imbas dokumen menggunakan kamera atau import satu atau lebih foto daripada pustaka foto anda.';

  @override
  String get howToEditTitle => 'Semak & Edit';

  @override
  String get howToEditDescription => 'Pangkas, putar, tambah, padam atau susun semula halaman sebelum menyimpan.';

  @override
  String get howToSaveTitle => 'Simpan Dokumen Anda';

  @override
  String get howToSaveDescription => 'Berikan nama kepada dokumen dan simpan dengan selamat dalam aplikasi.';

  @override
  String get howToManageTitle => 'Urus Dokumen';

  @override
  String get howToManageDescription => 'Buka, cari, namakan semula, edit atau padam dokumen yang disimpan.';

  @override
  String get howToExportTitle => 'Kongsi & Eksport';

  @override
  String get howToUseTip => 'Petua: Dokumen yang disimpan kekal dalam Pengimbas Dokumen sehingga anda memilih untuk mengeksport, berkongsi atau memadamkannya.';

  @override
  String get howToExportDescription => 'Anda boleh berkongsi dokumen pada bila-bila masa dalam format PDF, JPEG atau PNG melalui aplikasi lain.';

  @override
  String get recognizeText => 'Kenal Pasti Teks';

  @override
  String get editPage => 'Edit Halaman';

  @override
  String get editPages => 'Edit Halaman';

  @override
  String get searchablePdf => 'PDF Boleh Cari';

  @override
  String get searchablePdfDescription => 'Halaman imbasan asal dengan teks yang boleh dicari';

  @override
  String get searchablePdfFailed => 'PDF boleh cari tidak dapat dicipta.';

  @override
  String get imageExportFailed => 'Imej tidak dapat dieksport.';

  @override
  String get recognizeTextFailed => 'Teks tidak dapat dikenal pasti.';

  @override
  String get recognizedTextTitle => 'Teks yang Dikenal Pasti';

  @override
  String get plainText => 'Teks Biasa';

  @override
  String get preserveFormat => 'Kekalkan Format';

  @override
  String get preserveFormatFailed => 'Pemformatan teks tidak dapat dikekalkan.';

  @override
  String get noTextFound => 'Tiada teks ditemui dalam dokumen ini.';

  @override
  String get textCopied => 'Teks disalin!';

  @override
  String get copyText => 'Salin Teks';

  @override
  String get shareText => 'Kongsi Teks';

  @override
  String get cropDocument => 'Pangkas Dokumen';

  @override
  String get crop => 'Pangkas';

  @override
  String get rotate => 'Putar';

  @override
  String get addPage => 'Tambah Halaman';

  @override
  String get scanNewPage => 'Imbas Halaman Baharu';

  @override
  String get useDocumentScanner => 'Gunakan pengimbas dokumen';

  @override
  String get chooseFromPhotos => 'Pilih daripada Foto';

  @override
  String get selectOneOrMorePhotos => 'Pilih satu atau lebih foto';

  @override
  String get reorder => 'Susun Semula';

  @override
  String get reorderPages => 'Susun Semula Halaman';

  @override
  String get deleteCurrentPage => 'Padam Halaman Semasa';

  @override
  String get deletePageTitle => 'Padam Halaman?';

  @override
  String get deletePageMessage => 'Halaman ini akan dialih keluar daripada dokumen.';

  @override
  String get saveChanges => 'Simpan Perubahan';

  @override
  String get savingChanges => 'Sedang menyimpan...';

  @override
  String get dragToReorder => 'Seret untuk menyusun semula';

  @override
  String get cropImageFailed => 'Imej tidak dapat dipangkas.';

  @override
  String get rotateImageFailed => 'Imej tidak dapat diputar.';

  @override
  String get addScannedPageFailed => 'Halaman yang diimbas tidak dapat ditambah.';

  @override
  String get addPhotoFailed => 'Foto tidak dapat ditambah.';

  @override
  String get saveChangesFailed => 'Perubahan tidak dapat disimpan.';

  @override
  String get done => 'Selesai';
}
