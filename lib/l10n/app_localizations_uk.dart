// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Ukrainian (`uk`).
class AppLocalizationsUk extends AppLocalizations {
  AppLocalizationsUk([String locale = 'uk']) : super(locale);

  @override
  String get appName => 'Сканер документів';

  @override
  String get selectLanguage => 'Виберіть мову';

  @override
  String get selectLanguageSubtitle => 'Виберіть бажану мову';

  @override
  String get english => 'English';

  @override
  String get turkish => 'Türkçe';

  @override
  String get continueButton => 'Продовжити';

  @override
  String get scanDocuments => 'Сканувати документи';

  @override
  String get scanDescription => 'Скануйте документи та перетворюйте їх на чіткі цифрові файли.';

  @override
  String get scanDocument => 'Сканувати документ';

  @override
  String get importFromPhotos => 'Імпортувати з фото';

  @override
  String get emptyDocuments => 'Тут з’являться ваші відскановані документи.';

  @override
  String get settings => 'Налаштування';

  @override
  String get language => 'Мова';

  @override
  String get documents => 'Документи';

  @override
  String get recentScans => 'Останні сканування';

  @override
  String get reviewScan => 'Переглянути скан';

  @override
  String get page => 'Сторінка';

  @override
  String get deletePage => 'Видалити сторінку';

  @override
  String get saveDocument => 'Зберегти документ';

  @override
  String get documentName => 'Назва документа';

  @override
  String get documentNameHint => 'Введіть назву документа';

  @override
  String get cancel => 'Скасувати';

  @override
  String get save => 'Зберегти';

  @override
  String get documentSaved => 'Документ успішно збережено';

  @override
  String get saveFailed => 'Не вдалося зберегти документ';

  @override
  String pageCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count сторінки',
      many: '$count сторінок',
      few: '$count сторінки',
      one: '1 сторінка',
    );
    return '$_temp0';
  }

  @override
  String get noDocuments => 'Збережених документів ще немає';

  @override
  String get renameDocument => 'Перейменувати документ';

  @override
  String get deleteDocument => 'Видалити документ';

  @override
  String get newDocumentName => 'Нова назва документа';

  @override
  String get deleteDocumentTitle => 'Видалити документ?';

  @override
  String get deleteDocumentMessage => 'Цей документ і всі його сторінки буде видалено назавжди.';

  @override
  String get delete => 'Видалити';

  @override
  String get rename => 'Перейменувати';

  @override
  String get saveAsPdf => 'Зберегти як PDF';

  @override
  String get creatingPdf => 'Створення PDF...';

  @override
  String get pdfCreated => 'PDF успішно створено';

  @override
  String get pdfCreateFailed => 'Не вдалося створити PDF';

  @override
  String get exportDocument => 'Експортувати документ';

  @override
  String get chooseExportFormat => 'Виберіть формат експорту';

  @override
  String get pdfFormat => 'PDF';

  @override
  String get pdfFormatDescription => 'Об’єднати всі сторінки в один PDF-файл';

  @override
  String get jpegFormat => 'JPEG';

  @override
  String get jpegFormatDescription => 'Експортувати сторінки як зображення JPEG';

  @override
  String get pngFormat => 'PNG';

  @override
  String get pngFormatDescription => 'Експортувати сторінки як зображення PNG';

  @override
  String get myDocuments => 'Мої документи';

  @override
  String get searchDocuments => 'Пошук документів...';

  @override
  String get clearSearch => 'Очистити пошук';

  @override
  String get noMatchingDocuments => 'Документів не знайдено.';

  @override
  String get sortDocuments => 'Сортувати документи';

  @override
  String get newestFirst => 'Спочатку новіші';

  @override
  String get oldestFirst => 'Спочатку старіші';

  @override
  String get sortAZ => 'За алфавітом (А–Я)';

  @override
  String get scanFirstDocument => 'Для початку відскануйте перший документ або імпортуйте фото.';

  @override
  String get shareApp => 'Поділитися застосунком';

  @override
  String get rateApp => 'Оцінити застосунок';

  @override
  String get checkForUpdates => 'Перевірити оновлення';

  @override
  String get help => 'Допомога';

  @override
  String get howToUse => 'Як користуватися';

  @override
  String get howToUseSubtitle => 'Дізнайтеся, як сканувати, редагувати, зберігати та ділитися';

  @override
  String get howToUseIntro => 'Скануйте, упорядковуйте, редагуйте та діліться документами за кілька кроків.';

  @override
  String get howToScanTitle => 'Сканування або імпорт';

  @override
  String get howToScanDescription => 'Відскануйте документ камерою або імпортуйте одне чи кілька фото з фотогалереї.';

  @override
  String get howToEditTitle => 'Перегляд і редагування';

  @override
  String get howToEditDescription => 'Обрізайте, повертайте, додавайте, видаляйте або змінюйте порядок сторінок перед збереженням.';

  @override
  String get howToSaveTitle => 'Збереження документа';

  @override
  String get howToSaveDescription => 'Назвіть документ і безпечно збережіть його в застосунку.';

  @override
  String get howToManageTitle => 'Керування документами';

  @override
  String get howToManageDescription => 'Відкривайте, шукайте, перейменовуйте, редагуйте або видаляйте збережені документи.';

  @override
  String get howToExportTitle => 'Поширення та експорт';

  @override
  String get howToUseTip => 'Порада: збережені документи залишаються в застосунку «Сканер документів», доки ви не експортуєте, не поширите або не видалите їх.';

  @override
  String get howToExportDescription => 'Ви можете будь-коли поділитися документами у форматі PDF, JPEG або PNG через інші застосунки.';

  @override
  String get recognizeText => 'Розпізнати текст';

  @override
  String get editPage => 'Редагувати сторінку';

  @override
  String get editPages => 'Редагувати сторінки';

  @override
  String get searchablePdf => 'PDF із можливістю пошуку';

  @override
  String get searchablePdfDescription => 'Оригінальні відскановані сторінки з текстом, доступним для пошуку';

  @override
  String get searchablePdfFailed => 'Не вдалося створити PDF із можливістю пошуку.';

  @override
  String get imageExportFailed => 'Не вдалося експортувати зображення.';

  @override
  String get recognizeTextFailed => 'Не вдалося розпізнати текст.';

  @override
  String get recognizedTextTitle => 'Розпізнаний текст';

  @override
  String get plainText => 'Звичайний текст';

  @override
  String get preserveFormat => 'Зберегти форматування';

  @override
  String get preserveFormatFailed => 'Не вдалося зберегти форматування тексту.';

  @override
  String get noTextFound => 'У цьому документі текст не знайдено.';

  @override
  String get textCopied => 'Текст скопійовано!';

  @override
  String get copyText => 'Копіювати текст';

  @override
  String get shareText => 'Поділитися текстом';

  @override
  String get cropDocument => 'Обрізати документ';

  @override
  String get crop => 'Обрізати';

  @override
  String get rotate => 'Повернути';

  @override
  String get addPage => 'Додати сторінку';

  @override
  String get scanNewPage => 'Сканувати нову сторінку';

  @override
  String get useDocumentScanner => 'Використати сканер документів';

  @override
  String get chooseFromPhotos => 'Вибрати з фото';

  @override
  String get selectOneOrMorePhotos => 'Виберіть одне або кілька фото';

  @override
  String get reorder => 'Змінити порядок';

  @override
  String get reorderPages => 'Змінити порядок сторінок';

  @override
  String get deleteCurrentPage => 'Видалити поточну сторінку';

  @override
  String get deletePageTitle => 'Видалити сторінку?';

  @override
  String get deletePageMessage => 'Цю сторінку буде видалено з документа.';

  @override
  String get saveChanges => 'Зберегти зміни';

  @override
  String get savingChanges => 'Збереження...';

  @override
  String get dragToReorder => 'Перетягніть, щоб змінити порядок';

  @override
  String get cropImageFailed => 'Не вдалося обрізати зображення.';

  @override
  String get rotateImageFailed => 'Не вдалося повернути зображення.';

  @override
  String get addScannedPageFailed => 'Не вдалося додати відскановану сторінку.';

  @override
  String get addPhotoFailed => 'Не вдалося додати фото.';

  @override
  String get saveChangesFailed => 'Не вдалося зберегти зміни.';

  @override
  String get done => 'Готово';
}
