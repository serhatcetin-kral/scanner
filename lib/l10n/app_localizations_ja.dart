// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class AppLocalizationsJa extends AppLocalizations {
  AppLocalizationsJa([String locale = 'ja']) : super(locale);

  @override
  String get appName => 'ドキュメントスキャナー';

  @override
  String get selectLanguage => '言語を選択';

  @override
  String get selectLanguageSubtitle => '使用する言語を選択してください';

  @override
  String get english => 'English';

  @override
  String get turkish => 'Türkçe';

  @override
  String get continueButton => '続ける';

  @override
  String get scanDocuments => '書類をスキャン';

  @override
  String get scanDescription => '書類をスキャンして、見やすいデジタルファイルに変換します。';

  @override
  String get scanDocument => '書類をスキャン';

  @override
  String get importFromPhotos => '写真から取り込む';

  @override
  String get emptyDocuments => 'スキャンした書類はここに表示されます。';

  @override
  String get settings => '設定';

  @override
  String get language => '言語';

  @override
  String get documents => '書類';

  @override
  String get recentScans => '最近のスキャン';

  @override
  String get reviewScan => 'スキャンを確認';

  @override
  String get page => 'ページ';

  @override
  String get deletePage => 'ページを削除';

  @override
  String get saveDocument => '書類を保存';

  @override
  String get documentName => '書類名';

  @override
  String get documentNameHint => '書類名を入力';

  @override
  String get cancel => 'キャンセル';

  @override
  String get save => '保存';

  @override
  String get documentSaved => '書類を保存しました';

  @override
  String get saveFailed => '書類を保存できませんでした';

  @override
  String pageCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countページ',
      one: '1ページ',
    );
    return '$_temp0';
  }

  @override
  String get noDocuments => '保存済みの書類はまだありません';

  @override
  String get renameDocument => '書類名を変更';

  @override
  String get deleteDocument => '書類を削除';

  @override
  String get newDocumentName => '新しい書類名';

  @override
  String get deleteDocumentTitle => '書類を削除しますか？';

  @override
  String get deleteDocumentMessage => 'この書類とすべてのページが完全に削除されます。';

  @override
  String get delete => '削除';

  @override
  String get rename => '名前を変更';

  @override
  String get saveAsPdf => 'PDFとして保存';

  @override
  String get creatingPdf => 'PDFを作成中...';

  @override
  String get pdfCreated => 'PDFを作成しました';

  @override
  String get pdfCreateFailed => 'PDFを作成できませんでした';

  @override
  String get exportDocument => '書類を書き出す';

  @override
  String get chooseExportFormat => '書き出し形式を選択';

  @override
  String get pdfFormat => 'PDF';

  @override
  String get pdfFormatDescription => 'すべてのページを1つのPDFファイルにまとめます';

  @override
  String get jpegFormat => 'JPEG';

  @override
  String get jpegFormatDescription => 'ページをJPEG画像として書き出します';

  @override
  String get pngFormat => 'PNG';

  @override
  String get pngFormatDescription => 'ページをPNG画像として書き出します';

  @override
  String get myDocuments => 'マイ書類';

  @override
  String get searchDocuments => '書類を検索...';

  @override
  String get clearSearch => '検索をクリア';

  @override
  String get noMatchingDocuments => '一致する書類がありません。';

  @override
  String get sortDocuments => '書類を並べ替え';

  @override
  String get newestFirst => '新しい順';

  @override
  String get oldestFirst => '古い順';

  @override
  String get sortAZ => '名前順（A〜Z）';

  @override
  String get scanFirstDocument => 'まず書類をスキャンするか、写真を取り込んでください。';

  @override
  String get shareApp => 'アプリを共有';

  @override
  String get rateApp => 'アプリを評価';

  @override
  String get checkForUpdates => 'アップデートを確認';

  @override
  String get help => 'ヘルプ';

  @override
  String get howToUse => '使い方';

  @override
  String get howToUseSubtitle => 'スキャン、編集、保存、共有の方法を確認';

  @override
  String get howToUseIntro => '簡単な操作で書類をスキャン、整理、編集、共有できます。';

  @override
  String get howToScanTitle => 'スキャンまたは取り込み';

  @override
  String get howToScanDescription => 'カメラで書類をスキャンするか、写真ライブラリから1枚以上の写真を取り込みます。';

  @override
  String get howToEditTitle => '確認と編集';

  @override
  String get howToEditDescription => '保存する前に、ページの切り抜き、回転、追加、削除、並べ替えができます。';

  @override
  String get howToSaveTitle => '書類を保存';

  @override
  String get howToSaveDescription => '書類に名前を付け、アプリ内に安全に保存します。';

  @override
  String get howToManageTitle => '書類を管理';

  @override
  String get howToManageDescription => '保存した書類を開く、検索する、名前を変更する、編集する、削除することができます。';

  @override
  String get howToExportTitle => '共有と書き出し';

  @override
  String get howToUseTip => 'ヒント：保存した書類は、書き出し、共有、削除するまでドキュメントスキャナー内に保持されます。';

  @override
  String get howToExportDescription => '書類はいつでもPDF、JPEG、PNG形式でほかのアプリに共有できます。';

  @override
  String get recognizeText => '文字を認識';

  @override
  String get editPage => 'ページを編集';

  @override
  String get editPages => 'ページを編集';

  @override
  String get searchablePdf => '検索可能なPDF';

  @override
  String get searchablePdfDescription => '元のスキャン画像に検索可能なテキストを追加';

  @override
  String get searchablePdfFailed => '検索可能なPDFを作成できませんでした。';

  @override
  String get imageExportFailed => '画像を書き出せませんでした。';

  @override
  String get recognizeTextFailed => '文字を認識できませんでした。';

  @override
  String get recognizedTextTitle => '認識したテキスト';

  @override
  String get plainText => 'プレーンテキスト';

  @override
  String get preserveFormat => '書式を保持';

  @override
  String get preserveFormatFailed => 'テキストの書式を保持できませんでした。';

  @override
  String get noTextFound => 'この書類にはテキストが見つかりませんでした。';

  @override
  String get textCopied => 'テキストをコピーしました！';

  @override
  String get copyText => 'テキストをコピー';

  @override
  String get shareText => 'テキストを共有';

  @override
  String get cropDocument => '書類を切り抜く';

  @override
  String get crop => '切り抜き';

  @override
  String get rotate => '回転';

  @override
  String get addPage => 'ページを追加';

  @override
  String get scanNewPage => '新しいページをスキャン';

  @override
  String get useDocumentScanner => '書類スキャナーを使用';

  @override
  String get chooseFromPhotos => '写真から選択';

  @override
  String get selectOneOrMorePhotos => '写真を1枚以上選択';

  @override
  String get reorder => '並べ替え';

  @override
  String get reorderPages => 'ページを並べ替え';

  @override
  String get deleteCurrentPage => '現在のページを削除';

  @override
  String get deletePageTitle => 'ページを削除しますか？';

  @override
  String get deletePageMessage => 'このページは書類から削除されます。';

  @override
  String get saveChanges => '変更を保存';

  @override
  String get savingChanges => '保存中...';

  @override
  String get dragToReorder => 'ドラッグして並べ替え';

  @override
  String get cropImageFailed => '画像を切り抜けませんでした。';

  @override
  String get rotateImageFailed => '画像を回転できませんでした。';

  @override
  String get addScannedPageFailed => 'スキャンしたページを追加できませんでした。';

  @override
  String get addPhotoFailed => '写真を追加できませんでした。';

  @override
  String get saveChangesFailed => '変更を保存できませんでした。';

  @override
  String get done => '完了';
}
