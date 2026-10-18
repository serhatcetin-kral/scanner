// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get appName => 'Сканер документов';

  @override
  String get selectLanguage => 'Выберите язык';

  @override
  String get selectLanguageSubtitle => 'Выберите предпочитаемый язык';

  @override
  String get english => 'English';

  @override
  String get turkish => 'Türkçe';

  @override
  String get continueButton => 'Продолжить';

  @override
  String get scanDocuments => 'Сканировать документы';

  @override
  String get scanDescription => 'Сканируйте документы и превращайте их в качественные цифровые файлы.';

  @override
  String get scanDocument => 'Сканировать документ';

  @override
  String get importFromPhotos => 'Импортировать из фото';

  @override
  String get emptyDocuments => 'Здесь появятся ваши отсканированные документы.';

  @override
  String get settings => 'Настройки';

  @override
  String get language => 'Язык';

  @override
  String get documents => 'Документы';

  @override
  String get recentScans => 'Недавние сканы';

  @override
  String get reviewScan => 'Просмотр скана';

  @override
  String get page => 'Страница';

  @override
  String get deletePage => 'Удалить страницу';

  @override
  String get saveDocument => 'Сохранить документ';

  @override
  String get documentName => 'Название документа';

  @override
  String get documentNameHint => 'Введите название документа';

  @override
  String get cancel => 'Отмена';

  @override
  String get save => 'Сохранить';

  @override
  String get documentSaved => 'Документ успешно сохранён';

  @override
  String get saveFailed => 'Не удалось сохранить документ';

  @override
  String pageCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count страницы',
      many: '$count страниц',
      few: '$count страницы',
      one: '1 страница',
    );
    return '$_temp0';
  }

  @override
  String get noDocuments => 'Сохранённых документов пока нет';

  @override
  String get renameDocument => 'Переименовать документ';

  @override
  String get deleteDocument => 'Удалить документ';

  @override
  String get newDocumentName => 'Новое название документа';

  @override
  String get deleteDocumentTitle => 'Удалить документ?';

  @override
  String get deleteDocumentMessage => 'Этот документ и все его страницы будут удалены без возможности восстановления.';

  @override
  String get delete => 'Удалить';

  @override
  String get rename => 'Переименовать';

  @override
  String get saveAsPdf => 'Сохранить как PDF';

  @override
  String get creatingPdf => 'Создание PDF...';

  @override
  String get pdfCreated => 'PDF успешно создан';

  @override
  String get pdfCreateFailed => 'Не удалось создать PDF';

  @override
  String get exportDocument => 'Экспортировать документ';

  @override
  String get chooseExportFormat => 'Выберите формат экспорта';

  @override
  String get pdfFormat => 'PDF';

  @override
  String get pdfFormatDescription => 'Объединить все страницы в один PDF-файл';

  @override
  String get jpegFormat => 'JPEG';

  @override
  String get jpegFormatDescription => 'Экспортировать страницы как изображения JPEG';

  @override
  String get pngFormat => 'PNG';

  @override
  String get pngFormatDescription => 'Экспортировать страницы как изображения PNG';

  @override
  String get myDocuments => 'Мои документы';

  @override
  String get searchDocuments => 'Поиск документов...';

  @override
  String get clearSearch => 'Очистить поиск';

  @override
  String get noMatchingDocuments => 'Документы не найдены.';

  @override
  String get sortDocuments => 'Сортировка документов';

  @override
  String get newestFirst => 'Сначала новые';

  @override
  String get oldestFirst => 'Сначала старые';

  @override
  String get sortAZ => 'А–Я';

  @override
  String get scanFirstDocument => 'Чтобы начать, отсканируйте первый документ или импортируйте фотографии.';

  @override
  String get shareApp => 'Поделиться приложением';

  @override
  String get rateApp => 'Оценить приложение';

  @override
  String get checkForUpdates => 'Проверить обновления';

  @override
  String get help => 'Помощь';

  @override
  String get howToUse => 'Как пользоваться';

  @override
  String get howToUseSubtitle => 'Узнайте, как сканировать, редактировать, сохранять и отправлять документы';

  @override
  String get howToUseIntro => 'Сканируйте, упорядочивайте, редактируйте и отправляйте документы за несколько простых шагов.';

  @override
  String get howToScanTitle => 'Сканирование или импорт';

  @override
  String get howToScanDescription => 'Отсканируйте документ камерой или импортируйте одну или несколько фотографий из галереи.';

  @override
  String get howToEditTitle => 'Просмотр и редактирование';

  @override
  String get howToEditDescription => 'Обрезайте, поворачивайте, добавляйте, удаляйте или меняйте порядок страниц перед сохранением.';

  @override
  String get howToSaveTitle => 'Сохранение документа';

  @override
  String get howToSaveDescription => 'Назовите документ и безопасно сохраните его внутри приложения.';

  @override
  String get howToManageTitle => 'Управление документами';

  @override
  String get howToManageDescription => 'Открывайте, ищите, переименовывайте, редактируйте и удаляйте сохранённые документы.';

  @override
  String get howToExportTitle => 'Отправка и экспорт';

  @override
  String get howToUseTip => 'Совет: сохранённые документы остаются в приложении «Сканер документов», пока вы не решите экспортировать, отправить или удалить их.';

  @override
  String get howToExportDescription => 'Вы можете в любой момент отправить документы через другие приложения в формате PDF, JPEG или PNG.';

  @override
  String get recognizeText => 'Распознать текст';

  @override
  String get editPage => 'Редактировать страницу';

  @override
  String get editPages => 'Редактировать страницы';

  @override
  String get searchablePdf => 'PDF с поиском по тексту';

  @override
  String get searchablePdfDescription => 'Исходные отсканированные страницы с возможностью поиска по тексту';

  @override
  String get searchablePdfFailed => 'Не удалось создать PDF с поиском по тексту.';

  @override
  String get imageExportFailed => 'Не удалось экспортировать изображения.';

  @override
  String get recognizeTextFailed => 'Не удалось распознать текст.';

  @override
  String get recognizedTextTitle => 'Распознанный текст';

  @override
  String get plainText => 'Обычный текст';

  @override
  String get preserveFormat => 'Сохранить форматирование';

  @override
  String get preserveFormatFailed => 'Не удалось сохранить форматирование текста.';

  @override
  String get noTextFound => 'В этом документе текст не найден.';

  @override
  String get textCopied => 'Текст скопирован!';

  @override
  String get copyText => 'Копировать текст';

  @override
  String get shareText => 'Поделиться текстом';

  @override
  String get cropDocument => 'Обрезать документ';

  @override
  String get crop => 'Обрезать';

  @override
  String get rotate => 'Повернуть';

  @override
  String get addPage => 'Добавить страницу';

  @override
  String get scanNewPage => 'Сканировать новую страницу';

  @override
  String get useDocumentScanner => 'Использовать сканер документов';

  @override
  String get chooseFromPhotos => 'Выбрать из фото';

  @override
  String get selectOneOrMorePhotos => 'Выберите одну или несколько фотографий';

  @override
  String get reorder => 'Изменить порядок';

  @override
  String get reorderPages => 'Изменить порядок страниц';

  @override
  String get deleteCurrentPage => 'Удалить текущую страницу';

  @override
  String get deletePageTitle => 'Удалить страницу?';

  @override
  String get deletePageMessage => 'Эта страница будет удалена из документа.';

  @override
  String get saveChanges => 'Сохранить изменения';

  @override
  String get savingChanges => 'Сохранение...';

  @override
  String get dragToReorder => 'Перетащите, чтобы изменить порядок';

  @override
  String get cropImageFailed => 'Не удалось обрезать изображение.';

  @override
  String get rotateImageFailed => 'Не удалось повернуть изображение.';

  @override
  String get addScannedPageFailed => 'Не удалось добавить отсканированную страницу.';

  @override
  String get addPhotoFailed => 'Не удалось добавить фотографию.';

  @override
  String get saveChangesFailed => 'Не удалось сохранить изменения.';

  @override
  String get done => 'Готово';
}
