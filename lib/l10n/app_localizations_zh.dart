// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class AppLocalizationsZh extends AppLocalizations {
  AppLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String get appName => '文档扫描仪';

  @override
  String get selectLanguage => '选择语言';

  @override
  String get selectLanguageSubtitle => '选择您的首选语言';

  @override
  String get english => 'English';

  @override
  String get turkish => 'Türkçe';

  @override
  String get continueButton => '继续';

  @override
  String get scanDocuments => '扫描文档';

  @override
  String get scanDescription => '扫描文档并将其转换为清晰的数字文件。';

  @override
  String get scanDocument => '扫描文档';

  @override
  String get importFromPhotos => '从照片导入';

  @override
  String get emptyDocuments => '您扫描的文档将显示在这里。';

  @override
  String get settings => '设置';

  @override
  String get language => '语言';

  @override
  String get documents => '文档';

  @override
  String get recentScans => '最近扫描';

  @override
  String get reviewScan => '检查扫描结果';

  @override
  String get page => '页面';

  @override
  String get deletePage => '删除页面';

  @override
  String get saveDocument => '保存文档';

  @override
  String get documentName => '文档名称';

  @override
  String get documentNameHint => '输入文档名称';

  @override
  String get cancel => '取消';

  @override
  String get save => '保存';

  @override
  String get documentSaved => '文档已成功保存';

  @override
  String get saveFailed => '无法保存文档';

  @override
  String pageCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 页',
      one: '1 页',
    );
    return '$_temp0';
  }

  @override
  String get noDocuments => '暂无已保存的文档';

  @override
  String get renameDocument => '重命名文档';

  @override
  String get deleteDocument => '删除文档';

  @override
  String get newDocumentName => '新文档名称';

  @override
  String get deleteDocumentTitle => '删除文档？';

  @override
  String get deleteDocumentMessage => '此文档及其所有页面将被永久删除。';

  @override
  String get delete => '删除';

  @override
  String get rename => '重命名';

  @override
  String get saveAsPdf => '保存为 PDF';

  @override
  String get creatingPdf => '正在创建 PDF...';

  @override
  String get pdfCreated => 'PDF 创建成功';

  @override
  String get pdfCreateFailed => '无法创建 PDF';

  @override
  String get exportDocument => '导出文档';

  @override
  String get chooseExportFormat => '选择导出格式';

  @override
  String get pdfFormat => 'PDF';

  @override
  String get pdfFormatDescription => '将所有页面合并为一个 PDF 文件';

  @override
  String get jpegFormat => 'JPEG';

  @override
  String get jpegFormatDescription => '将页面导出为 JPEG 图片';

  @override
  String get pngFormat => 'PNG';

  @override
  String get pngFormatDescription => '将页面导出为 PNG 图片';

  @override
  String get myDocuments => '我的文档';

  @override
  String get searchDocuments => '搜索文档...';

  @override
  String get clearSearch => '清除搜索';

  @override
  String get noMatchingDocuments => '没有找到匹配的文档。';

  @override
  String get sortDocuments => '文档排序';

  @override
  String get newestFirst => '最新优先';

  @override
  String get oldestFirst => '最早优先';

  @override
  String get sortAZ => '按名称 A–Z 排序';

  @override
  String get scanFirstDocument => '扫描您的第一份文档或导入照片以开始使用。';

  @override
  String get shareApp => '分享应用';

  @override
  String get rateApp => '评价应用';

  @override
  String get checkForUpdates => '检查更新';

  @override
  String get help => '帮助';

  @override
  String get howToUse => '使用指南';

  @override
  String get howToUseSubtitle => '了解如何扫描、编辑、保存和分享';

  @override
  String get howToUseIntro => '只需几个步骤，即可扫描、整理、编辑和分享您的文档。';

  @override
  String get howToScanTitle => '扫描或导入';

  @override
  String get howToScanDescription => '使用相机扫描文档，或从照片图库导入一张或多张照片。';

  @override
  String get howToEditTitle => '检查与编辑';

  @override
  String get howToEditDescription => '保存前可以裁剪、旋转、添加、删除页面或调整页面顺序。';

  @override
  String get howToSaveTitle => '保存文档';

  @override
  String get howToSaveDescription => '为文档命名并安全地保存在应用内。';

  @override
  String get howToManageTitle => '管理文档';

  @override
  String get howToManageDescription => '打开、搜索、重命名、编辑或删除已保存的文档。';

  @override
  String get howToExportTitle => '分享与导出';

  @override
  String get howToUseTip => '提示：保存的文档会保留在文档扫描仪中，直到您选择导出、分享或删除。';

  @override
  String get howToExportDescription => '您可以随时通过其他应用以 PDF、JPEG 或 PNG 格式分享文档。';

  @override
  String get recognizeText => '识别文字';

  @override
  String get editPage => '编辑页面';

  @override
  String get editPages => '编辑页面';

  @override
  String get searchablePdf => '可搜索的 PDF';

  @override
  String get searchablePdfDescription => '包含可搜索文字的原始扫描页面';

  @override
  String get searchablePdfFailed => '无法创建可搜索的 PDF。';

  @override
  String get imageExportFailed => '无法导出图片。';

  @override
  String get recognizeTextFailed => '无法识别文字。';

  @override
  String get recognizedTextTitle => '识别出的文字';

  @override
  String get plainText => '纯文本';

  @override
  String get preserveFormat => '保留格式';

  @override
  String get preserveFormatFailed => '无法保留文字格式。';

  @override
  String get noTextFound => '此文档中未找到文字。';

  @override
  String get textCopied => '文字已复制！';

  @override
  String get copyText => '复制文字';

  @override
  String get shareText => '分享文字';

  @override
  String get cropDocument => '裁剪文档';

  @override
  String get crop => '裁剪';

  @override
  String get rotate => '旋转';

  @override
  String get addPage => '添加页面';

  @override
  String get scanNewPage => '扫描新页面';

  @override
  String get useDocumentScanner => '使用文档扫描仪';

  @override
  String get chooseFromPhotos => '从照片中选择';

  @override
  String get selectOneOrMorePhotos => '选择一张或多张照片';

  @override
  String get reorder => '调整顺序';

  @override
  String get reorderPages => '调整页面顺序';

  @override
  String get deleteCurrentPage => '删除当前页面';

  @override
  String get deletePageTitle => '删除页面？';

  @override
  String get deletePageMessage => '此页面将从文档中移除。';

  @override
  String get saveChanges => '保存更改';

  @override
  String get savingChanges => '正在保存...';

  @override
  String get dragToReorder => '拖动以调整顺序';

  @override
  String get cropImageFailed => '无法裁剪图片。';

  @override
  String get rotateImageFailed => '无法旋转图片。';

  @override
  String get addScannedPageFailed => '无法添加扫描页面。';

  @override
  String get addPhotoFailed => '无法添加照片。';

  @override
  String get saveChangesFailed => '无法保存更改。';

  @override
  String get done => '完成';
}

/// The translations for Chinese, as used in China (`zh_CN`).
class AppLocalizationsZhCn extends AppLocalizationsZh {
  AppLocalizationsZhCn(): super('zh_CN');

  @override
  String get appName => '文档扫描仪';

  @override
  String get selectLanguage => '选择语言';

  @override
  String get selectLanguageSubtitle => '选择您的首选语言';

  @override
  String get english => 'English';

  @override
  String get turkish => 'Türkçe';

  @override
  String get continueButton => '继续';

  @override
  String get scanDocuments => '扫描文档';

  @override
  String get scanDescription => '扫描文档并将其转换为清晰的数字文件。';

  @override
  String get scanDocument => '扫描文档';

  @override
  String get importFromPhotos => '从照片导入';

  @override
  String get emptyDocuments => '您扫描的文档将显示在这里。';

  @override
  String get settings => '设置';

  @override
  String get language => '语言';

  @override
  String get documents => '文档';

  @override
  String get recentScans => '最近扫描';

  @override
  String get reviewScan => '检查扫描结果';

  @override
  String get page => '页面';

  @override
  String get deletePage => '删除页面';

  @override
  String get saveDocument => '保存文档';

  @override
  String get documentName => '文档名称';

  @override
  String get documentNameHint => '输入文档名称';

  @override
  String get cancel => '取消';

  @override
  String get save => '保存';

  @override
  String get documentSaved => '文档已成功保存';

  @override
  String get saveFailed => '无法保存文档';

  @override
  String pageCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 页',
      one: '1 页',
    );
    return '$_temp0';
  }

  @override
  String get noDocuments => '暂无已保存的文档';

  @override
  String get renameDocument => '重命名文档';

  @override
  String get deleteDocument => '删除文档';

  @override
  String get newDocumentName => '新文档名称';

  @override
  String get deleteDocumentTitle => '删除文档？';

  @override
  String get deleteDocumentMessage => '此文档及其所有页面将被永久删除。';

  @override
  String get delete => '删除';

  @override
  String get rename => '重命名';

  @override
  String get saveAsPdf => '保存为 PDF';

  @override
  String get creatingPdf => '正在创建 PDF...';

  @override
  String get pdfCreated => 'PDF 创建成功';

  @override
  String get pdfCreateFailed => '无法创建 PDF';

  @override
  String get exportDocument => '导出文档';

  @override
  String get chooseExportFormat => '选择导出格式';

  @override
  String get pdfFormat => 'PDF';

  @override
  String get pdfFormatDescription => '将所有页面合并为一个 PDF 文件';

  @override
  String get jpegFormat => 'JPEG';

  @override
  String get jpegFormatDescription => '将页面导出为 JPEG 图片';

  @override
  String get pngFormat => 'PNG';

  @override
  String get pngFormatDescription => '将页面导出为 PNG 图片';

  @override
  String get myDocuments => '我的文档';

  @override
  String get searchDocuments => '搜索文档...';

  @override
  String get clearSearch => '清除搜索';

  @override
  String get noMatchingDocuments => '没有找到匹配的文档。';

  @override
  String get sortDocuments => '文档排序';

  @override
  String get newestFirst => '最新优先';

  @override
  String get oldestFirst => '最早优先';

  @override
  String get sortAZ => '按名称 A–Z 排序';

  @override
  String get scanFirstDocument => '扫描您的第一份文档或导入照片以开始使用。';

  @override
  String get shareApp => '分享应用';

  @override
  String get rateApp => '评价应用';

  @override
  String get checkForUpdates => '检查更新';

  @override
  String get help => '帮助';

  @override
  String get howToUse => '使用指南';

  @override
  String get howToUseSubtitle => '了解如何扫描、编辑、保存和分享';

  @override
  String get howToUseIntro => '只需几个步骤，即可扫描、整理、编辑和分享您的文档。';

  @override
  String get howToScanTitle => '扫描或导入';

  @override
  String get howToScanDescription => '使用相机扫描文档，或从照片图库导入一张或多张照片。';

  @override
  String get howToEditTitle => '检查与编辑';

  @override
  String get howToEditDescription => '保存前可以裁剪、旋转、添加、删除页面或调整页面顺序。';

  @override
  String get howToSaveTitle => '保存文档';

  @override
  String get howToSaveDescription => '为文档命名并安全地保存在应用内。';

  @override
  String get howToManageTitle => '管理文档';

  @override
  String get howToManageDescription => '打开、搜索、重命名、编辑或删除已保存的文档。';

  @override
  String get howToExportTitle => '分享与导出';

  @override
  String get howToUseTip => '提示：保存的文档会保留在文档扫描仪中，直到您选择导出、分享或删除。';

  @override
  String get howToExportDescription => '您可以随时通过其他应用以 PDF、JPEG 或 PNG 格式分享文档。';

  @override
  String get recognizeText => '识别文字';

  @override
  String get editPage => '编辑页面';

  @override
  String get editPages => '编辑页面';

  @override
  String get searchablePdf => '可搜索的 PDF';

  @override
  String get searchablePdfDescription => '包含可搜索文字的原始扫描页面';

  @override
  String get searchablePdfFailed => '无法创建可搜索的 PDF。';

  @override
  String get imageExportFailed => '无法导出图片。';

  @override
  String get recognizeTextFailed => '无法识别文字。';

  @override
  String get recognizedTextTitle => '识别出的文字';

  @override
  String get plainText => '纯文本';

  @override
  String get preserveFormat => '保留格式';

  @override
  String get preserveFormatFailed => '无法保留文字格式。';

  @override
  String get noTextFound => '此文档中未找到文字。';

  @override
  String get textCopied => '文字已复制！';

  @override
  String get copyText => '复制文字';

  @override
  String get shareText => '分享文字';

  @override
  String get cropDocument => '裁剪文档';

  @override
  String get crop => '裁剪';

  @override
  String get rotate => '旋转';

  @override
  String get addPage => '添加页面';

  @override
  String get scanNewPage => '扫描新页面';

  @override
  String get useDocumentScanner => '使用文档扫描仪';

  @override
  String get chooseFromPhotos => '从照片中选择';

  @override
  String get selectOneOrMorePhotos => '选择一张或多张照片';

  @override
  String get reorder => '调整顺序';

  @override
  String get reorderPages => '调整页面顺序';

  @override
  String get deleteCurrentPage => '删除当前页面';

  @override
  String get deletePageTitle => '删除页面？';

  @override
  String get deletePageMessage => '此页面将从文档中移除。';

  @override
  String get saveChanges => '保存更改';

  @override
  String get savingChanges => '正在保存...';

  @override
  String get dragToReorder => '拖动以调整顺序';

  @override
  String get cropImageFailed => '无法裁剪图片。';

  @override
  String get rotateImageFailed => '无法旋转图片。';

  @override
  String get addScannedPageFailed => '无法添加扫描页面。';

  @override
  String get addPhotoFailed => '无法添加照片。';

  @override
  String get saveChangesFailed => '无法保存更改。';

  @override
  String get done => '完成';
}
