// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get appName => 'Escáner de documentos';

  @override
  String get selectLanguage => 'Seleccionar idioma';

  @override
  String get selectLanguageSubtitle => 'Elige tu idioma preferido';

  @override
  String get english => 'Inglés';

  @override
  String get turkish => 'Turco';

  @override
  String get continueButton => 'Continuar';

  @override
  String get scanDocuments => 'Escanear documentos';

  @override
  String get scanDescription => 'Escanea documentos y conviértelos en archivos digitales nítidos.';

  @override
  String get scanDocument => 'Escanear documento';

  @override
  String get importFromPhotos => 'Importar desde Fotos';

  @override
  String get emptyDocuments => 'Tus documentos escaneados aparecerán aquí.';

  @override
  String get settings => 'Configuración';

  @override
  String get language => 'Idioma';

  @override
  String get documents => 'Documentos';

  @override
  String get recentScans => 'Escaneos recientes';

  @override
  String get reviewScan => 'Revisar escaneo';

  @override
  String get page => 'Página';

  @override
  String get deletePage => 'Eliminar página';

  @override
  String get saveDocument => 'Guardar documento';

  @override
  String get documentName => 'Nombre del documento';

  @override
  String get documentNameHint => 'Introduce el nombre del documento';

  @override
  String get cancel => 'Cancelar';

  @override
  String get save => 'Guardar';

  @override
  String get documentSaved => 'Documento guardado correctamente';

  @override
  String get saveFailed => 'No se pudo guardar el documento';

  @override
  String pageCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count páginas',
      one: '1 página',
    );
    return '$_temp0';
  }

  @override
  String get noDocuments => 'Todavía no hay documentos guardados';

  @override
  String get renameDocument => 'Cambiar nombre del documento';

  @override
  String get deleteDocument => 'Eliminar documento';

  @override
  String get newDocumentName => 'Nuevo nombre del documento';

  @override
  String get deleteDocumentTitle => '¿Eliminar documento?';

  @override
  String get deleteDocumentMessage => 'Este documento y todas sus páginas se eliminarán permanentemente.';

  @override
  String get delete => 'Eliminar';

  @override
  String get rename => 'Cambiar nombre';

  @override
  String get saveAsPdf => 'Guardar como PDF';

  @override
  String get creatingPdf => 'Creando PDF...';

  @override
  String get pdfCreated => 'PDF creado correctamente';

  @override
  String get pdfCreateFailed => 'No se pudo crear el PDF';

  @override
  String get exportDocument => 'Exportar documento';

  @override
  String get chooseExportFormat => 'Elegir formato de exportación';

  @override
  String get pdfFormat => 'PDF';

  @override
  String get pdfFormatDescription => 'Combina todas las páginas en un único archivo PDF';

  @override
  String get jpegFormat => 'JPEG';

  @override
  String get jpegFormatDescription => 'Exporta las páginas como imágenes JPEG';

  @override
  String get pngFormat => 'PNG';

  @override
  String get pngFormatDescription => 'Exporta las páginas como imágenes PNG';

  @override
  String get myDocuments => 'Mis documentos';

  @override
  String get searchDocuments => 'Buscar documentos...';

  @override
  String get clearSearch => 'Borrar búsqueda';

  @override
  String get noMatchingDocuments => 'No se encontraron documentos que coincidan.';

  @override
  String get sortDocuments => 'Ordenar documentos';

  @override
  String get newestFirst => 'Más recientes primero';

  @override
  String get oldestFirst => 'Más antiguos primero';

  @override
  String get sortAZ => 'A–Z';

  @override
  String get scanFirstDocument => 'Escanea tu primer documento o importa fotos para comenzar.';

  @override
  String get shareApp => 'Compartir aplicación';

  @override
  String get rateApp => 'Valorar aplicación';

  @override
  String get checkForUpdates => 'Buscar actualizaciones';

  @override
  String get help => 'Ayuda';

  @override
  String get howToUse => 'Cómo usar la aplicación';

  @override
  String get howToUseSubtitle => 'Aprende a escanear, editar, guardar y compartir';

  @override
  String get howToUseIntro => 'Escanea, organiza, edita y comparte tus documentos en unos pocos pasos.';

  @override
  String get howToScanTitle => 'Escanear o importar';

  @override
  String get howToScanDescription => 'Escanea un documento con la cámara o importa una o varias fotos de tu galería.';

  @override
  String get howToEditTitle => 'Revisar y editar';

  @override
  String get howToEditDescription => 'Recorta, gira, añade, elimina o reordena las páginas antes de guardar.';

  @override
  String get howToSaveTitle => 'Guardar tu documento';

  @override
  String get howToSaveDescription => 'Asigna un nombre a tu documento y guárdalo de forma segura dentro de la aplicación.';

  @override
  String get howToManageTitle => 'Gestionar documentos';

  @override
  String get howToManageDescription => 'Abre, busca, cambia el nombre, edita o elimina tus documentos guardados.';

  @override
  String get howToExportTitle => 'Compartir y exportar';

  @override
  String get howToUseTip => 'Consejo: Tus documentos guardados permanecen en Document Scanner hasta que decidas exportarlos, compartirlos o eliminarlos.';

  @override
  String get howToExportDescription => 'Puedes compartir tus documentos en cualquier momento en formato PDF, JPEG o PNG mediante otras aplicaciones.';

  @override
  String get recognizeText => 'Reconocer texto';

  @override
  String get editPage => 'Editar página';

  @override
  String get editPages => 'Editar páginas';

  @override
  String get searchablePdf => 'PDF con texto buscable';

  @override
  String get searchablePdfDescription => 'Páginas escaneadas originales con texto que se puede buscar';

  @override
  String get searchablePdfFailed => 'No se pudo crear el PDF con texto buscable.';

  @override
  String get imageExportFailed => 'No se pudieron exportar las imágenes.';

  @override
  String get recognizeTextFailed => 'No se pudo reconocer el texto.';

  @override
  String get recognizedTextTitle => 'Texto reconocido';

  @override
  String get plainText => 'Texto sin formato';

  @override
  String get preserveFormat => 'Conservar formato';

  @override
  String get preserveFormatFailed => 'No se pudo conservar el formato del texto.';

  @override
  String get noTextFound => 'No se encontró texto en este documento.';

  @override
  String get textCopied => '¡Texto copiado!';

  @override
  String get copyText => 'Copiar texto';

  @override
  String get shareText => 'Compartir texto';

  @override
  String get cropDocument => 'Recortar documento';

  @override
  String get crop => 'Recortar';

  @override
  String get rotate => 'Girar';

  @override
  String get addPage => 'Añadir página';

  @override
  String get scanNewPage => 'Escanear nueva página';

  @override
  String get useDocumentScanner => 'Usar el escáner de documentos';

  @override
  String get chooseFromPhotos => 'Elegir de Fotos';

  @override
  String get selectOneOrMorePhotos => 'Selecciona una o varias fotos';

  @override
  String get reorder => 'Reordenar';

  @override
  String get reorderPages => 'Reordenar páginas';

  @override
  String get deleteCurrentPage => 'Eliminar página actual';

  @override
  String get deletePageTitle => '¿Eliminar página?';

  @override
  String get deletePageMessage => 'Esta página se eliminará del documento.';

  @override
  String get saveChanges => 'Guardar cambios';

  @override
  String get savingChanges => 'Guardando...';

  @override
  String get dragToReorder => 'Arrastra para reordenar';

  @override
  String get cropImageFailed => 'No se pudo recortar la imagen.';

  @override
  String get rotateImageFailed => 'No se pudo girar la imagen.';

  @override
  String get addScannedPageFailed => 'No se pudo añadir la página escaneada.';

  @override
  String get addPhotoFailed => 'No se pudo añadir la foto.';

  @override
  String get saveChangesFailed => 'No se pudieron guardar los cambios.';

  @override
  String get done => 'Listo';
}
