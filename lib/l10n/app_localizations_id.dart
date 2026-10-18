// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Indonesian (`id`).
class AppLocalizationsId extends AppLocalizations {
  AppLocalizationsId([String locale = 'id']) : super(locale);

  @override
  String get appName => 'Pemindai Dokumen';

  @override
  String get selectLanguage => 'Pilih Bahasa';

  @override
  String get selectLanguageSubtitle => 'Pilih bahasa yang Anda inginkan';

  @override
  String get english => 'English';

  @override
  String get turkish => 'Türkçe';

  @override
  String get continueButton => 'Lanjutkan';

  @override
  String get scanDocuments => 'Pindai Dokumen';

  @override
  String get scanDescription => 'Pindai dokumen dan ubah menjadi berkas digital yang jelas.';

  @override
  String get scanDocument => 'Pindai Dokumen';

  @override
  String get importFromPhotos => 'Impor dari Foto';

  @override
  String get emptyDocuments => 'Dokumen yang Anda pindai akan muncul di sini.';

  @override
  String get settings => 'Pengaturan';

  @override
  String get language => 'Bahasa';

  @override
  String get documents => 'Dokumen';

  @override
  String get recentScans => 'Pemindaian Terbaru';

  @override
  String get reviewScan => 'Tinjau Hasil Pindaian';

  @override
  String get page => 'Halaman';

  @override
  String get deletePage => 'Hapus Halaman';

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
  String get documentSaved => 'Dokumen berhasil disimpan';

  @override
  String get saveFailed => 'Tidak dapat menyimpan dokumen';

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
  String get noDocuments => 'Belum ada dokumen tersimpan';

  @override
  String get renameDocument => 'Ubah Nama Dokumen';

  @override
  String get deleteDocument => 'Hapus Dokumen';

  @override
  String get newDocumentName => 'Nama dokumen baru';

  @override
  String get deleteDocumentTitle => 'Hapus Dokumen?';

  @override
  String get deleteDocumentMessage => 'Dokumen ini beserta seluruh halamannya akan dihapus secara permanen.';

  @override
  String get delete => 'Hapus';

  @override
  String get rename => 'Ubah Nama';

  @override
  String get saveAsPdf => 'Simpan sebagai PDF';

  @override
  String get creatingPdf => 'Membuat PDF...';

  @override
  String get pdfCreated => 'PDF berhasil dibuat';

  @override
  String get pdfCreateFailed => 'Tidak dapat membuat PDF';

  @override
  String get exportDocument => 'Ekspor Dokumen';

  @override
  String get chooseExportFormat => 'Pilih Format Ekspor';

  @override
  String get pdfFormat => 'PDF';

  @override
  String get pdfFormatDescription => 'Gabungkan semua halaman menjadi satu berkas PDF';

  @override
  String get jpegFormat => 'JPEG';

  @override
  String get jpegFormatDescription => 'Ekspor halaman sebagai gambar JPEG';

  @override
  String get pngFormat => 'PNG';

  @override
  String get pngFormatDescription => 'Ekspor halaman sebagai gambar PNG';

  @override
  String get myDocuments => 'Dokumen Saya';

  @override
  String get searchDocuments => 'Cari dokumen...';

  @override
  String get clearSearch => 'Hapus pencarian';

  @override
  String get noMatchingDocuments => 'Tidak ada dokumen yang cocok.';

  @override
  String get sortDocuments => 'Urutkan dokumen';

  @override
  String get newestFirst => 'Terbaru terlebih dahulu';

  @override
  String get oldestFirst => 'Terlama terlebih dahulu';

  @override
  String get sortAZ => 'A–Z';

  @override
  String get scanFirstDocument => 'Pindai dokumen pertama Anda atau impor foto untuk memulai.';

  @override
  String get shareApp => 'Bagikan Aplikasi';

  @override
  String get rateApp => 'Beri Penilaian';

  @override
  String get checkForUpdates => 'Periksa Pembaruan';

  @override
  String get help => 'Bantuan';

  @override
  String get howToUse => 'Cara Menggunakan';

  @override
  String get howToUseSubtitle => 'Pelajari cara memindai, mengedit, menyimpan, dan membagikan';

  @override
  String get howToUseIntro => 'Pindai, atur, edit, dan bagikan dokumen Anda hanya dalam beberapa langkah.';

  @override
  String get howToScanTitle => 'Pindai atau Impor';

  @override
  String get howToScanDescription => 'Pindai dokumen dengan kamera atau impor satu atau beberapa foto dari galeri foto Anda.';

  @override
  String get howToEditTitle => 'Tinjau & Edit';

  @override
  String get howToEditDescription => 'Pangkas, putar, tambah, hapus, atau ubah urutan halaman sebelum menyimpan.';

  @override
  String get howToSaveTitle => 'Simpan Dokumen Anda';

  @override
  String get howToSaveDescription => 'Beri nama dokumen Anda dan simpan dengan aman di dalam aplikasi.';

  @override
  String get howToManageTitle => 'Kelola Dokumen';

  @override
  String get howToManageDescription => 'Buka, cari, ubah nama, edit, atau hapus dokumen yang tersimpan.';

  @override
  String get howToExportTitle => 'Bagikan & Ekspor';

  @override
  String get howToUseTip => 'Tips: Dokumen yang disimpan tetap berada di dalam aplikasi Pemindai Dokumen hingga Anda mengekspor, membagikan, atau menghapusnya.';

  @override
  String get howToExportDescription => 'Anda dapat membagikan dokumen kapan saja dalam format PDF, JPEG, atau PNG melalui aplikasi lain.';

  @override
  String get recognizeText => 'Kenali Teks';

  @override
  String get editPage => 'Edit Halaman';

  @override
  String get editPages => 'Edit Halaman';

  @override
  String get searchablePdf => 'PDF yang Dapat Dicari';

  @override
  String get searchablePdfDescription => 'Halaman hasil pindaian asli dengan teks yang dapat dicari';

  @override
  String get searchablePdfFailed => 'Tidak dapat membuat PDF yang dapat dicari.';

  @override
  String get imageExportFailed => 'Tidak dapat mengekspor gambar.';

  @override
  String get recognizeTextFailed => 'Tidak dapat mengenali teks.';

  @override
  String get recognizedTextTitle => 'Teks yang Dikenali';

  @override
  String get plainText => 'Teks Biasa';

  @override
  String get preserveFormat => 'Pertahankan Format';

  @override
  String get preserveFormatFailed => 'Tidak dapat mempertahankan format teks.';

  @override
  String get noTextFound => 'Tidak ada teks yang ditemukan dalam dokumen ini.';

  @override
  String get textCopied => 'Teks disalin!';

  @override
  String get copyText => 'Salin Teks';

  @override
  String get shareText => 'Bagikan Teks';

  @override
  String get cropDocument => 'Pangkas Dokumen';

  @override
  String get crop => 'Pangkas';

  @override
  String get rotate => 'Putar';

  @override
  String get addPage => 'Tambah Halaman';

  @override
  String get scanNewPage => 'Pindai Halaman Baru';

  @override
  String get useDocumentScanner => 'Gunakan pemindai dokumen';

  @override
  String get chooseFromPhotos => 'Pilih dari Foto';

  @override
  String get selectOneOrMorePhotos => 'Pilih satu atau beberapa foto';

  @override
  String get reorder => 'Ubah Urutan';

  @override
  String get reorderPages => 'Ubah Urutan Halaman';

  @override
  String get deleteCurrentPage => 'Hapus Halaman Saat Ini';

  @override
  String get deletePageTitle => 'Hapus Halaman?';

  @override
  String get deletePageMessage => 'Halaman ini akan dihapus dari dokumen.';

  @override
  String get saveChanges => 'Simpan Perubahan';

  @override
  String get savingChanges => 'Menyimpan...';

  @override
  String get dragToReorder => 'Seret untuk mengubah urutan';

  @override
  String get cropImageFailed => 'Tidak dapat memangkas gambar.';

  @override
  String get rotateImageFailed => 'Tidak dapat memutar gambar.';

  @override
  String get addScannedPageFailed => 'Tidak dapat menambahkan halaman hasil pindaian.';

  @override
  String get addPhotoFailed => 'Tidak dapat menambahkan foto.';

  @override
  String get saveChangesFailed => 'Tidak dapat menyimpan perubahan.';

  @override
  String get done => 'Selesai';
}
