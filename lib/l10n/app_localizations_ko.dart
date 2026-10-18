// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Korean (`ko`).
class AppLocalizationsKo extends AppLocalizations {
  AppLocalizationsKo([String locale = 'ko']) : super(locale);

  @override
  String get appName => '문서 스캐너';

  @override
  String get selectLanguage => '언어 선택';

  @override
  String get selectLanguageSubtitle => '사용할 언어를 선택하세요';

  @override
  String get english => 'English';

  @override
  String get turkish => 'Türkçe';

  @override
  String get continueButton => '계속';

  @override
  String get scanDocuments => '문서 스캔';

  @override
  String get scanDescription => '문서를 스캔하여 선명한 디지털 파일로 변환하세요.';

  @override
  String get scanDocument => '문서 스캔';

  @override
  String get importFromPhotos => '사진에서 가져오기';

  @override
  String get emptyDocuments => '스캔한 문서가 여기에 표시됩니다.';

  @override
  String get settings => '설정';

  @override
  String get language => '언어';

  @override
  String get documents => '문서';

  @override
  String get recentScans => '최근 스캔';

  @override
  String get reviewScan => '스캔 확인';

  @override
  String get page => '페이지';

  @override
  String get deletePage => '페이지 삭제';

  @override
  String get saveDocument => '문서 저장';

  @override
  String get documentName => '문서 이름';

  @override
  String get documentNameHint => '문서 이름 입력';

  @override
  String get cancel => '취소';

  @override
  String get save => '저장';

  @override
  String get documentSaved => '문서가 저장되었습니다';

  @override
  String get saveFailed => '문서를 저장할 수 없습니다';

  @override
  String pageCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count페이지',
      one: '1페이지',
    );
    return '$_temp0';
  }

  @override
  String get noDocuments => '저장된 문서가 없습니다';

  @override
  String get renameDocument => '문서 이름 변경';

  @override
  String get deleteDocument => '문서 삭제';

  @override
  String get newDocumentName => '새 문서 이름';

  @override
  String get deleteDocumentTitle => '문서를 삭제할까요?';

  @override
  String get deleteDocumentMessage => '이 문서와 모든 페이지가 영구적으로 삭제됩니다.';

  @override
  String get delete => '삭제';

  @override
  String get rename => '이름 변경';

  @override
  String get saveAsPdf => 'PDF로 저장';

  @override
  String get creatingPdf => 'PDF 생성 중...';

  @override
  String get pdfCreated => 'PDF가 생성되었습니다';

  @override
  String get pdfCreateFailed => 'PDF를 생성할 수 없습니다';

  @override
  String get exportDocument => '문서 내보내기';

  @override
  String get chooseExportFormat => '내보내기 형식 선택';

  @override
  String get pdfFormat => 'PDF';

  @override
  String get pdfFormatDescription => '모든 페이지를 하나의 PDF 파일로 합칩니다';

  @override
  String get jpegFormat => 'JPEG';

  @override
  String get jpegFormatDescription => '페이지를 JPEG 이미지로 내보냅니다';

  @override
  String get pngFormat => 'PNG';

  @override
  String get pngFormatDescription => '페이지를 PNG 이미지로 내보냅니다';

  @override
  String get myDocuments => '내 문서';

  @override
  String get searchDocuments => '문서 검색...';

  @override
  String get clearSearch => '검색어 지우기';

  @override
  String get noMatchingDocuments => '일치하는 문서가 없습니다.';

  @override
  String get sortDocuments => '문서 정렬';

  @override
  String get newestFirst => '최신순';

  @override
  String get oldestFirst => '오래된순';

  @override
  String get sortAZ => '가나다순';

  @override
  String get scanFirstDocument => '첫 문서를 스캔하거나 사진을 가져와 시작하세요.';

  @override
  String get shareApp => '앱 공유';

  @override
  String get rateApp => '앱 평가';

  @override
  String get checkForUpdates => '업데이트 확인';

  @override
  String get help => '도움말';

  @override
  String get howToUse => '사용 방법';

  @override
  String get howToUseSubtitle => '스캔, 편집, 저장 및 공유 방법 알아보기';

  @override
  String get howToUseIntro => '몇 단계만으로 문서를 스캔하고 정리하고 편집하고 공유하세요.';

  @override
  String get howToScanTitle => '스캔 또는 가져오기';

  @override
  String get howToScanDescription => '카메라로 문서를 스캔하거나 사진 보관함에서 한 장 이상의 사진을 가져오세요.';

  @override
  String get howToEditTitle => '확인 및 편집';

  @override
  String get howToEditDescription => '저장하기 전에 페이지를 자르거나 회전하고 추가, 삭제 또는 순서 변경할 수 있습니다.';

  @override
  String get howToSaveTitle => '문서 저장';

  @override
  String get howToSaveDescription => '문서에 이름을 지정하고 앱 안에 안전하게 저장하세요.';

  @override
  String get howToManageTitle => '문서 관리';

  @override
  String get howToManageDescription => '저장된 문서를 열고 검색하거나 이름을 변경하고 편집 또는 삭제하세요.';

  @override
  String get howToExportTitle => '공유 및 내보내기';

  @override
  String get howToUseTip => '팁: 저장된 문서는 내보내거나 공유하거나 삭제하기 전까지 문서 스캐너 앱 안에 보관됩니다.';

  @override
  String get howToExportDescription => '언제든지 다른 앱을 통해 문서를 PDF, JPEG 또는 PNG 형식으로 공유할 수 있습니다.';

  @override
  String get recognizeText => '텍스트 인식';

  @override
  String get editPage => '페이지 편집';

  @override
  String get editPages => '페이지 편집';

  @override
  String get searchablePdf => '검색 가능한 PDF';

  @override
  String get searchablePdfDescription => '검색 가능한 텍스트가 포함된 원본 스캔 페이지';

  @override
  String get searchablePdfFailed => '검색 가능한 PDF를 생성할 수 없습니다.';

  @override
  String get imageExportFailed => '이미지를 내보낼 수 없습니다.';

  @override
  String get recognizeTextFailed => '텍스트를 인식할 수 없습니다.';

  @override
  String get recognizedTextTitle => '인식된 텍스트';

  @override
  String get plainText => '일반 텍스트';

  @override
  String get preserveFormat => '서식 유지';

  @override
  String get preserveFormatFailed => '텍스트 서식을 유지할 수 없습니다.';

  @override
  String get noTextFound => '이 문서에서 텍스트를 찾지 못했습니다.';

  @override
  String get textCopied => '텍스트가 복사되었습니다!';

  @override
  String get copyText => '텍스트 복사';

  @override
  String get shareText => '텍스트 공유';

  @override
  String get cropDocument => '문서 자르기';

  @override
  String get crop => '자르기';

  @override
  String get rotate => '회전';

  @override
  String get addPage => '페이지 추가';

  @override
  String get scanNewPage => '새 페이지 스캔';

  @override
  String get useDocumentScanner => '문서 스캐너 사용';

  @override
  String get chooseFromPhotos => '사진에서 선택';

  @override
  String get selectOneOrMorePhotos => '사진 한 장 이상 선택';

  @override
  String get reorder => '순서 변경';

  @override
  String get reorderPages => '페이지 순서 변경';

  @override
  String get deleteCurrentPage => '현재 페이지 삭제';

  @override
  String get deletePageTitle => '페이지를 삭제할까요?';

  @override
  String get deletePageMessage => '이 페이지가 문서에서 제거됩니다.';

  @override
  String get saveChanges => '변경 사항 저장';

  @override
  String get savingChanges => '저장 중...';

  @override
  String get dragToReorder => '드래그하여 순서 변경';

  @override
  String get cropImageFailed => '이미지를 자를 수 없습니다.';

  @override
  String get rotateImageFailed => '이미지를 회전할 수 없습니다.';

  @override
  String get addScannedPageFailed => '스캔한 페이지를 추가할 수 없습니다.';

  @override
  String get addPhotoFailed => '사진을 추가할 수 없습니다.';

  @override
  String get saveChangesFailed => '변경 사항을 저장할 수 없습니다.';

  @override
  String get done => '완료';
}
