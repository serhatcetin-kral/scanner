// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Thai (`th`).
class AppLocalizationsTh extends AppLocalizations {
  AppLocalizationsTh([String locale = 'th']) : super(locale);

  @override
  String get appName => 'เครื่องสแกนเอกสาร';

  @override
  String get selectLanguage => 'เลือกภาษา';

  @override
  String get selectLanguageSubtitle => 'เลือกภาษาที่คุณต้องการ';

  @override
  String get english => 'English';

  @override
  String get turkish => 'Türkçe';

  @override
  String get continueButton => 'ดำเนินการต่อ';

  @override
  String get scanDocuments => 'สแกนเอกสาร';

  @override
  String get scanDescription => 'สแกนเอกสารและแปลงเป็นไฟล์ดิจิทัลที่คมชัด';

  @override
  String get scanDocument => 'สแกนเอกสาร';

  @override
  String get importFromPhotos => 'นำเข้าจากรูปภาพ';

  @override
  String get emptyDocuments => 'เอกสารที่สแกนจะแสดงที่นี่';

  @override
  String get settings => 'การตั้งค่า';

  @override
  String get language => 'ภาษา';

  @override
  String get documents => 'เอกสาร';

  @override
  String get recentScans => 'รายการสแกนล่าสุด';

  @override
  String get reviewScan => 'ตรวจสอบเอกสารที่สแกน';

  @override
  String get page => 'หน้า';

  @override
  String get deletePage => 'ลบหน้า';

  @override
  String get saveDocument => 'บันทึกเอกสาร';

  @override
  String get documentName => 'ชื่อเอกสาร';

  @override
  String get documentNameHint => 'ป้อนชื่อเอกสาร';

  @override
  String get cancel => 'ยกเลิก';

  @override
  String get save => 'บันทึก';

  @override
  String get documentSaved => 'บันทึกเอกสารเรียบร้อยแล้ว';

  @override
  String get saveFailed => 'ไม่สามารถบันทึกเอกสารได้';

  @override
  String pageCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count หน้า',
      one: '1 หน้า',
    );
    return '$_temp0';
  }

  @override
  String get noDocuments => 'ยังไม่มีเอกสารที่บันทึกไว้';

  @override
  String get renameDocument => 'เปลี่ยนชื่อเอกสาร';

  @override
  String get deleteDocument => 'ลบเอกสาร';

  @override
  String get newDocumentName => 'ชื่อเอกสารใหม่';

  @override
  String get deleteDocumentTitle => 'ลบเอกสารหรือไม่?';

  @override
  String get deleteDocumentMessage => 'เอกสารนี้และทุกหน้าจะถูกลบอย่างถาวร';

  @override
  String get delete => 'ลบ';

  @override
  String get rename => 'เปลี่ยนชื่อ';

  @override
  String get saveAsPdf => 'บันทึกเป็น PDF';

  @override
  String get creatingPdf => 'กำลังสร้าง PDF...';

  @override
  String get pdfCreated => 'สร้าง PDF เรียบร้อยแล้ว';

  @override
  String get pdfCreateFailed => 'ไม่สามารถสร้าง PDF ได้';

  @override
  String get exportDocument => 'ส่งออกเอกสาร';

  @override
  String get chooseExportFormat => 'เลือกรูปแบบการส่งออก';

  @override
  String get pdfFormat => 'PDF';

  @override
  String get pdfFormatDescription => 'รวมทุกหน้าเป็นไฟล์ PDF เดียว';

  @override
  String get jpegFormat => 'JPEG';

  @override
  String get jpegFormatDescription => 'ส่งออกหน้าเป็นรูปภาพ JPEG';

  @override
  String get pngFormat => 'PNG';

  @override
  String get pngFormatDescription => 'ส่งออกหน้าเป็นรูปภาพ PNG';

  @override
  String get myDocuments => 'เอกสารของฉัน';

  @override
  String get searchDocuments => 'ค้นหาเอกสาร...';

  @override
  String get clearSearch => 'ล้างการค้นหา';

  @override
  String get noMatchingDocuments => 'ไม่พบเอกสารที่ตรงกับการค้นหา';

  @override
  String get sortDocuments => 'จัดเรียงเอกสาร';

  @override
  String get newestFirst => 'ใหม่ที่สุดก่อน';

  @override
  String get oldestFirst => 'เก่าที่สุดก่อน';

  @override
  String get sortAZ => 'เรียงตาม A–Z';

  @override
  String get scanFirstDocument => 'สแกนเอกสารแรกของคุณหรือนำเข้ารูปภาพเพื่อเริ่มต้น';

  @override
  String get shareApp => 'แชร์แอป';

  @override
  String get rateApp => 'ให้คะแนนแอป';

  @override
  String get checkForUpdates => 'ตรวจสอบการอัปเดต';

  @override
  String get help => 'ช่วยเหลือ';

  @override
  String get howToUse => 'วิธีใช้งาน';

  @override
  String get howToUseSubtitle => 'เรียนรู้วิธีสแกน แก้ไข บันทึก และแชร์';

  @override
  String get howToUseIntro => 'สแกน จัดระเบียบ แก้ไข และแชร์เอกสารได้ในไม่กี่ขั้นตอน';

  @override
  String get howToScanTitle => 'สแกนหรือนำเข้า';

  @override
  String get howToScanDescription => 'สแกนเอกสารด้วยกล้องหรือนำเข้ารูปภาพหนึ่งรูปหรือหลายรูปจากคลังรูปภาพ';

  @override
  String get howToEditTitle => 'ตรวจสอบและแก้ไข';

  @override
  String get howToEditDescription => 'ครอบตัด หมุน เพิ่ม ลบ หรือจัดลำดับหน้าใหม่ก่อนบันทึก';

  @override
  String get howToSaveTitle => 'บันทึกเอกสารของคุณ';

  @override
  String get howToSaveDescription => 'ตั้งชื่อเอกสารและบันทึกไว้อย่างปลอดภัยภายในแอป';

  @override
  String get howToManageTitle => 'จัดการเอกสาร';

  @override
  String get howToManageDescription => 'เปิด ค้นหา เปลี่ยนชื่อ แก้ไข หรือลบเอกสารที่บันทึกไว้';

  @override
  String get howToExportTitle => 'แชร์และส่งออก';

  @override
  String get howToUseTip => 'เคล็ดลับ: เอกสารที่บันทึกไว้จะอยู่ภายในแอปเครื่องสแกนเอกสารจนกว่าคุณจะส่งออก แชร์ หรือลบ';

  @override
  String get howToExportDescription => 'คุณสามารถแชร์เอกสารในรูปแบบ PDF, JPEG หรือ PNG ผ่านแอปอื่นได้ทุกเมื่อ';

  @override
  String get recognizeText => 'รู้จำข้อความ';

  @override
  String get editPage => 'แก้ไขหน้า';

  @override
  String get editPages => 'แก้ไขหน้า';

  @override
  String get searchablePdf => 'PDF ที่ค้นหาข้อความได้';

  @override
  String get searchablePdfDescription => 'หน้าที่สแกนต้นฉบับพร้อมข้อความที่ค้นหาได้';

  @override
  String get searchablePdfFailed => 'ไม่สามารถสร้าง PDF ที่ค้นหาข้อความได้';

  @override
  String get imageExportFailed => 'ไม่สามารถส่งออกรูปภาพได้';

  @override
  String get recognizeTextFailed => 'ไม่สามารถรู้จำข้อความได้';

  @override
  String get recognizedTextTitle => 'ข้อความที่รู้จำได้';

  @override
  String get plainText => 'ข้อความธรรมดา';

  @override
  String get preserveFormat => 'คงรูปแบบเดิม';

  @override
  String get preserveFormatFailed => 'ไม่สามารถคงรูปแบบข้อความเดิมได้';

  @override
  String get noTextFound => 'ไม่พบข้อความในเอกสารนี้';

  @override
  String get textCopied => 'คัดลอกข้อความแล้ว!';

  @override
  String get copyText => 'คัดลอกข้อความ';

  @override
  String get shareText => 'แชร์ข้อความ';

  @override
  String get cropDocument => 'ครอบตัดเอกสาร';

  @override
  String get crop => 'ครอบตัด';

  @override
  String get rotate => 'หมุน';

  @override
  String get addPage => 'เพิ่มหน้า';

  @override
  String get scanNewPage => 'สแกนหน้าใหม่';

  @override
  String get useDocumentScanner => 'ใช้เครื่องสแกนเอกสาร';

  @override
  String get chooseFromPhotos => 'เลือกจากรูปภาพ';

  @override
  String get selectOneOrMorePhotos => 'เลือกรูปภาพหนึ่งรูปหรือหลายรูป';

  @override
  String get reorder => 'จัดลำดับใหม่';

  @override
  String get reorderPages => 'จัดลำดับหน้าใหม่';

  @override
  String get deleteCurrentPage => 'ลบหน้าปัจจุบัน';

  @override
  String get deletePageTitle => 'ลบหน้าหรือไม่?';

  @override
  String get deletePageMessage => 'หน้านี้จะถูกนำออกจากเอกสาร';

  @override
  String get saveChanges => 'บันทึกการเปลี่ยนแปลง';

  @override
  String get savingChanges => 'กำลังบันทึก...';

  @override
  String get dragToReorder => 'ลากเพื่อจัดลำดับใหม่';

  @override
  String get cropImageFailed => 'ไม่สามารถครอบตัดรูปภาพได้';

  @override
  String get rotateImageFailed => 'ไม่สามารถหมุนรูปภาพได้';

  @override
  String get addScannedPageFailed => 'ไม่สามารถเพิ่มหน้าที่สแกนได้';

  @override
  String get addPhotoFailed => 'ไม่สามารถเพิ่มรูปภาพได้';

  @override
  String get saveChangesFailed => 'ไม่สามารถบันทึกการเปลี่ยนแปลงได้';

  @override
  String get done => 'เสร็จสิ้น';
}
