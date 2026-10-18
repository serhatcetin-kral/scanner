// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get appName => 'Scanner de Documentos';

  @override
  String get selectLanguage => 'Selecionar idioma';

  @override
  String get selectLanguageSubtitle => 'Escolha seu idioma preferido';

  @override
  String get english => 'English';

  @override
  String get turkish => 'Türkçe';

  @override
  String get continueButton => 'Continuar';

  @override
  String get scanDocuments => 'Digitalizar documentos';

  @override
  String get scanDescription => 'Digitalize documentos e transforme-os em arquivos digitais nítidos.';

  @override
  String get scanDocument => 'Digitalizar documento';

  @override
  String get importFromPhotos => 'Importar da galeria';

  @override
  String get emptyDocuments => 'Seus documentos digitalizados aparecerão aqui.';

  @override
  String get settings => 'Configurações';

  @override
  String get language => 'Idioma';

  @override
  String get documents => 'Documentos';

  @override
  String get recentScans => 'Digitalizações recentes';

  @override
  String get reviewScan => 'Revisar digitalização';

  @override
  String get page => 'Página';

  @override
  String get deletePage => 'Excluir página';

  @override
  String get saveDocument => 'Salvar documento';

  @override
  String get documentName => 'Nome do documento';

  @override
  String get documentNameHint => 'Digite o nome do documento';

  @override
  String get cancel => 'Cancelar';

  @override
  String get save => 'Salvar';

  @override
  String get documentSaved => 'Documento salvo com sucesso';

  @override
  String get saveFailed => 'Não foi possível salvar o documento';

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
  String get noDocuments => 'Nenhum documento salvo ainda';

  @override
  String get renameDocument => 'Renomear documento';

  @override
  String get deleteDocument => 'Excluir documento';

  @override
  String get newDocumentName => 'Novo nome do documento';

  @override
  String get deleteDocumentTitle => 'Excluir documento?';

  @override
  String get deleteDocumentMessage => 'Este documento e todas as suas páginas serão excluídos permanentemente.';

  @override
  String get delete => 'Excluir';

  @override
  String get rename => 'Renomear';

  @override
  String get saveAsPdf => 'Salvar como PDF';

  @override
  String get creatingPdf => 'Criando PDF...';

  @override
  String get pdfCreated => 'PDF criado com sucesso';

  @override
  String get pdfCreateFailed => 'Não foi possível criar o PDF';

  @override
  String get exportDocument => 'Exportar documento';

  @override
  String get chooseExportFormat => 'Escolha o formato de exportação';

  @override
  String get pdfFormat => 'PDF';

  @override
  String get pdfFormatDescription => 'Combine todas as páginas em um único arquivo PDF';

  @override
  String get jpegFormat => 'JPEG';

  @override
  String get jpegFormatDescription => 'Exporte as páginas como imagens JPEG';

  @override
  String get pngFormat => 'PNG';

  @override
  String get pngFormatDescription => 'Exporte as páginas como imagens PNG';

  @override
  String get myDocuments => 'Meus documentos';

  @override
  String get searchDocuments => 'Pesquisar documentos...';

  @override
  String get clearSearch => 'Limpar pesquisa';

  @override
  String get noMatchingDocuments => 'Nenhum documento encontrado.';

  @override
  String get sortDocuments => 'Ordenar documentos';

  @override
  String get newestFirst => 'Mais recentes primeiro';

  @override
  String get oldestFirst => 'Mais antigos primeiro';

  @override
  String get sortAZ => 'A–Z';

  @override
  String get scanFirstDocument => 'Digitalize seu primeiro documento ou importe fotos para começar.';

  @override
  String get shareApp => 'Compartilhar aplicativo';

  @override
  String get rateApp => 'Avaliar aplicativo';

  @override
  String get checkForUpdates => 'Verificar atualizações';

  @override
  String get help => 'Ajuda';

  @override
  String get howToUse => 'Como usar';

  @override
  String get howToUseSubtitle => 'Aprenda a digitalizar, editar, salvar e compartilhar';

  @override
  String get howToUseIntro => 'Digitalize, organize, edite e compartilhe seus documentos em poucos passos.';

  @override
  String get howToScanTitle => 'Digitalizar ou importar';

  @override
  String get howToScanDescription => 'Digitalize um documento com a câmera ou importe uma ou mais fotos da galeria.';

  @override
  String get howToEditTitle => 'Revisar e editar';

  @override
  String get howToEditDescription => 'Recorte, gire, adicione, exclua ou reordene páginas antes de salvar.';

  @override
  String get howToSaveTitle => 'Salvar seu documento';

  @override
  String get howToSaveDescription => 'Dê um nome ao documento e salve-o com segurança no aplicativo.';

  @override
  String get howToManageTitle => 'Gerenciar documentos';

  @override
  String get howToManageDescription => 'Abra, pesquise, renomeie, edite ou exclua seus documentos salvos.';

  @override
  String get howToExportTitle => 'Compartilhar e exportar';

  @override
  String get howToUseTip => 'Dica: seus documentos salvos permanecem no Document Scanner até que você decida exportá-los, compartilhá-los ou excluí-los.';

  @override
  String get howToExportDescription => 'Você pode compartilhar seus documentos a qualquer momento em formato PDF, JPEG ou PNG por meio de outros aplicativos.';

  @override
  String get recognizeText => 'Reconhecer texto';

  @override
  String get editPage => 'Editar página';

  @override
  String get editPages => 'Editar páginas';

  @override
  String get searchablePdf => 'PDF pesquisável';

  @override
  String get searchablePdfDescription => 'Páginas digitalizadas originais com texto pesquisável';

  @override
  String get searchablePdfFailed => 'Não foi possível criar o PDF pesquisável.';

  @override
  String get imageExportFailed => 'Não foi possível exportar as imagens.';

  @override
  String get recognizeTextFailed => 'Não foi possível reconhecer o texto.';

  @override
  String get recognizedTextTitle => 'Texto reconhecido';

  @override
  String get plainText => 'Texto simples';

  @override
  String get preserveFormat => 'Preservar formatação';

  @override
  String get preserveFormatFailed => 'Não foi possível preservar a formatação do texto.';

  @override
  String get noTextFound => 'Nenhum texto foi encontrado neste documento.';

  @override
  String get textCopied => 'Texto copiado!';

  @override
  String get copyText => 'Copiar texto';

  @override
  String get shareText => 'Compartilhar texto';

  @override
  String get cropDocument => 'Recortar documento';

  @override
  String get crop => 'Recortar';

  @override
  String get rotate => 'Girar';

  @override
  String get addPage => 'Adicionar página';

  @override
  String get scanNewPage => 'Digitalizar nova página';

  @override
  String get useDocumentScanner => 'Usar o scanner de documentos';

  @override
  String get chooseFromPhotos => 'Escolher da galeria';

  @override
  String get selectOneOrMorePhotos => 'Selecione uma ou mais fotos';

  @override
  String get reorder => 'Reordenar';

  @override
  String get reorderPages => 'Reordenar páginas';

  @override
  String get deleteCurrentPage => 'Excluir página atual';

  @override
  String get deletePageTitle => 'Excluir página?';

  @override
  String get deletePageMessage => 'Esta página será removida do documento.';

  @override
  String get saveChanges => 'Salvar alterações';

  @override
  String get savingChanges => 'Salvando...';

  @override
  String get dragToReorder => 'Arraste para reordenar';

  @override
  String get cropImageFailed => 'Não foi possível recortar a imagem.';

  @override
  String get rotateImageFailed => 'Não foi possível girar a imagem.';

  @override
  String get addScannedPageFailed => 'Não foi possível adicionar a página digitalizada.';

  @override
  String get addPhotoFailed => 'Não foi possível adicionar a foto.';

  @override
  String get saveChangesFailed => 'Não foi possível salvar as alterações.';

  @override
  String get done => 'Concluído';
}

/// The translations for Portuguese, as used in Brazil (`pt_BR`).
class AppLocalizationsPtBr extends AppLocalizationsPt {
  AppLocalizationsPtBr(): super('pt_BR');

  @override
  String get appName => 'Scanner de Documentos';

  @override
  String get selectLanguage => 'Selecionar idioma';

  @override
  String get selectLanguageSubtitle => 'Escolha seu idioma preferido';

  @override
  String get english => 'English';

  @override
  String get turkish => 'Türkçe';

  @override
  String get continueButton => 'Continuar';

  @override
  String get scanDocuments => 'Digitalizar documentos';

  @override
  String get scanDescription => 'Digitalize documentos e transforme-os em arquivos digitais nítidos.';

  @override
  String get scanDocument => 'Digitalizar documento';

  @override
  String get importFromPhotos => 'Importar da galeria';

  @override
  String get emptyDocuments => 'Seus documentos digitalizados aparecerão aqui.';

  @override
  String get settings => 'Configurações';

  @override
  String get language => 'Idioma';

  @override
  String get documents => 'Documentos';

  @override
  String get recentScans => 'Digitalizações recentes';

  @override
  String get reviewScan => 'Revisar digitalização';

  @override
  String get page => 'Página';

  @override
  String get deletePage => 'Excluir página';

  @override
  String get saveDocument => 'Salvar documento';

  @override
  String get documentName => 'Nome do documento';

  @override
  String get documentNameHint => 'Digite o nome do documento';

  @override
  String get cancel => 'Cancelar';

  @override
  String get save => 'Salvar';

  @override
  String get documentSaved => 'Documento salvo com sucesso';

  @override
  String get saveFailed => 'Não foi possível salvar o documento';

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
  String get noDocuments => 'Nenhum documento salvo ainda';

  @override
  String get renameDocument => 'Renomear documento';

  @override
  String get deleteDocument => 'Excluir documento';

  @override
  String get newDocumentName => 'Novo nome do documento';

  @override
  String get deleteDocumentTitle => 'Excluir documento?';

  @override
  String get deleteDocumentMessage => 'Este documento e todas as suas páginas serão excluídos permanentemente.';

  @override
  String get delete => 'Excluir';

  @override
  String get rename => 'Renomear';

  @override
  String get saveAsPdf => 'Salvar como PDF';

  @override
  String get creatingPdf => 'Criando PDF...';

  @override
  String get pdfCreated => 'PDF criado com sucesso';

  @override
  String get pdfCreateFailed => 'Não foi possível criar o PDF';

  @override
  String get exportDocument => 'Exportar documento';

  @override
  String get chooseExportFormat => 'Escolha o formato de exportação';

  @override
  String get pdfFormat => 'PDF';

  @override
  String get pdfFormatDescription => 'Combine todas as páginas em um único arquivo PDF';

  @override
  String get jpegFormat => 'JPEG';

  @override
  String get jpegFormatDescription => 'Exporte as páginas como imagens JPEG';

  @override
  String get pngFormat => 'PNG';

  @override
  String get pngFormatDescription => 'Exporte as páginas como imagens PNG';

  @override
  String get myDocuments => 'Meus documentos';

  @override
  String get searchDocuments => 'Pesquisar documentos...';

  @override
  String get clearSearch => 'Limpar pesquisa';

  @override
  String get noMatchingDocuments => 'Nenhum documento encontrado.';

  @override
  String get sortDocuments => 'Ordenar documentos';

  @override
  String get newestFirst => 'Mais recentes primeiro';

  @override
  String get oldestFirst => 'Mais antigos primeiro';

  @override
  String get sortAZ => 'A–Z';

  @override
  String get scanFirstDocument => 'Digitalize seu primeiro documento ou importe fotos para começar.';

  @override
  String get shareApp => 'Compartilhar aplicativo';

  @override
  String get rateApp => 'Avaliar aplicativo';

  @override
  String get checkForUpdates => 'Verificar atualizações';

  @override
  String get help => 'Ajuda';

  @override
  String get howToUse => 'Como usar';

  @override
  String get howToUseSubtitle => 'Aprenda a digitalizar, editar, salvar e compartilhar';

  @override
  String get howToUseIntro => 'Digitalize, organize, edite e compartilhe seus documentos em poucos passos.';

  @override
  String get howToScanTitle => 'Digitalizar ou importar';

  @override
  String get howToScanDescription => 'Digitalize um documento com a câmera ou importe uma ou mais fotos da galeria.';

  @override
  String get howToEditTitle => 'Revisar e editar';

  @override
  String get howToEditDescription => 'Recorte, gire, adicione, exclua ou reordene páginas antes de salvar.';

  @override
  String get howToSaveTitle => 'Salvar seu documento';

  @override
  String get howToSaveDescription => 'Dê um nome ao documento e salve-o com segurança no aplicativo.';

  @override
  String get howToManageTitle => 'Gerenciar documentos';

  @override
  String get howToManageDescription => 'Abra, pesquise, renomeie, edite ou exclua seus documentos salvos.';

  @override
  String get howToExportTitle => 'Compartilhar e exportar';

  @override
  String get howToUseTip => 'Dica: seus documentos salvos permanecem no Document Scanner até que você decida exportá-los, compartilhá-los ou excluí-los.';

  @override
  String get howToExportDescription => 'Você pode compartilhar seus documentos a qualquer momento em formato PDF, JPEG ou PNG por meio de outros aplicativos.';

  @override
  String get recognizeText => 'Reconhecer texto';

  @override
  String get editPage => 'Editar página';

  @override
  String get editPages => 'Editar páginas';

  @override
  String get searchablePdf => 'PDF pesquisável';

  @override
  String get searchablePdfDescription => 'Páginas digitalizadas originais com texto pesquisável';

  @override
  String get searchablePdfFailed => 'Não foi possível criar o PDF pesquisável.';

  @override
  String get imageExportFailed => 'Não foi possível exportar as imagens.';

  @override
  String get recognizeTextFailed => 'Não foi possível reconhecer o texto.';

  @override
  String get recognizedTextTitle => 'Texto reconhecido';

  @override
  String get plainText => 'Texto simples';

  @override
  String get preserveFormat => 'Preservar formatação';

  @override
  String get preserveFormatFailed => 'Não foi possível preservar a formatação do texto.';

  @override
  String get noTextFound => 'Nenhum texto foi encontrado neste documento.';

  @override
  String get textCopied => 'Texto copiado!';

  @override
  String get copyText => 'Copiar texto';

  @override
  String get shareText => 'Compartilhar texto';

  @override
  String get cropDocument => 'Recortar documento';

  @override
  String get crop => 'Recortar';

  @override
  String get rotate => 'Girar';

  @override
  String get addPage => 'Adicionar página';

  @override
  String get scanNewPage => 'Digitalizar nova página';

  @override
  String get useDocumentScanner => 'Usar o scanner de documentos';

  @override
  String get chooseFromPhotos => 'Escolher da galeria';

  @override
  String get selectOneOrMorePhotos => 'Selecione uma ou mais fotos';

  @override
  String get reorder => 'Reordenar';

  @override
  String get reorderPages => 'Reordenar páginas';

  @override
  String get deleteCurrentPage => 'Excluir página atual';

  @override
  String get deletePageTitle => 'Excluir página?';

  @override
  String get deletePageMessage => 'Esta página será removida do documento.';

  @override
  String get saveChanges => 'Salvar alterações';

  @override
  String get savingChanges => 'Salvando...';

  @override
  String get dragToReorder => 'Arraste para reordenar';

  @override
  String get cropImageFailed => 'Não foi possível recortar a imagem.';

  @override
  String get rotateImageFailed => 'Não foi possível girar a imagem.';

  @override
  String get addScannedPageFailed => 'Não foi possível adicionar a página digitalizada.';

  @override
  String get addPhotoFailed => 'Não foi possível adicionar a foto.';

  @override
  String get saveChangesFailed => 'Não foi possível salvar as alterações.';

  @override
  String get done => 'Concluído';
}

/// The translations for Portuguese, as used in Portugal (`pt_PT`).
class AppLocalizationsPtPt extends AppLocalizationsPt {
  AppLocalizationsPtPt(): super('pt_PT');

  @override
  String get appName => 'Digitalizador de Documentos';

  @override
  String get selectLanguage => 'Selecionar idioma';

  @override
  String get selectLanguageSubtitle => 'Escolha o seu idioma preferido';

  @override
  String get english => 'English';

  @override
  String get turkish => 'Türkçe';

  @override
  String get continueButton => 'Continuar';

  @override
  String get scanDocuments => 'Digitalizar documentos';

  @override
  String get scanDescription => 'Digitalize documentos e transforme-os em ficheiros digitais nítidos.';

  @override
  String get scanDocument => 'Digitalizar documento';

  @override
  String get importFromPhotos => 'Importar das Fotografias';

  @override
  String get emptyDocuments => 'Os seus documentos digitalizados aparecerão aqui.';

  @override
  String get settings => 'Definições';

  @override
  String get language => 'Idioma';

  @override
  String get documents => 'Documentos';

  @override
  String get recentScans => 'Digitalizações recentes';

  @override
  String get reviewScan => 'Rever digitalização';

  @override
  String get page => 'Página';

  @override
  String get deletePage => 'Eliminar página';

  @override
  String get saveDocument => 'Guardar documento';

  @override
  String get documentName => 'Nome do documento';

  @override
  String get documentNameHint => 'Introduza o nome do documento';

  @override
  String get cancel => 'Cancelar';

  @override
  String get save => 'Guardar';

  @override
  String get documentSaved => 'Documento guardado com sucesso';

  @override
  String get saveFailed => 'Não foi possível guardar o documento';

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
  String get noDocuments => 'Ainda não existem documentos guardados';

  @override
  String get renameDocument => 'Mudar o nome do documento';

  @override
  String get deleteDocument => 'Eliminar documento';

  @override
  String get newDocumentName => 'Novo nome do documento';

  @override
  String get deleteDocumentTitle => 'Eliminar documento?';

  @override
  String get deleteDocumentMessage => 'Este documento e todas as suas páginas serão eliminados permanentemente.';

  @override
  String get delete => 'Eliminar';

  @override
  String get rename => 'Mudar o nome';

  @override
  String get saveAsPdf => 'Guardar como PDF';

  @override
  String get creatingPdf => 'A criar PDF...';

  @override
  String get pdfCreated => 'PDF criado com sucesso';

  @override
  String get pdfCreateFailed => 'Não foi possível criar o PDF';

  @override
  String get exportDocument => 'Exportar documento';

  @override
  String get chooseExportFormat => 'Escolha o formato de exportação';

  @override
  String get pdfFormat => 'PDF';

  @override
  String get pdfFormatDescription => 'Juntar todas as páginas num único ficheiro PDF';

  @override
  String get jpegFormat => 'JPEG';

  @override
  String get jpegFormatDescription => 'Exportar as páginas como imagens JPEG';

  @override
  String get pngFormat => 'PNG';

  @override
  String get pngFormatDescription => 'Exportar as páginas como imagens PNG';

  @override
  String get myDocuments => 'Os meus documentos';

  @override
  String get searchDocuments => 'Pesquisar documentos...';

  @override
  String get clearSearch => 'Limpar pesquisa';

  @override
  String get noMatchingDocuments => 'Não foram encontrados documentos correspondentes.';

  @override
  String get sortDocuments => 'Ordenar documentos';

  @override
  String get newestFirst => 'Mais recentes primeiro';

  @override
  String get oldestFirst => 'Mais antigos primeiro';

  @override
  String get sortAZ => 'A–Z';

  @override
  String get scanFirstDocument => 'Digitalize o seu primeiro documento ou importe fotografias para começar.';

  @override
  String get shareApp => 'Partilhar aplicação';

  @override
  String get rateApp => 'Avaliar aplicação';

  @override
  String get checkForUpdates => 'Procurar atualizações';

  @override
  String get help => 'Ajuda';

  @override
  String get howToUse => 'Como utilizar';

  @override
  String get howToUseSubtitle => 'Saiba como digitalizar, editar, guardar e partilhar';

  @override
  String get howToUseIntro => 'Digitalize, organize, edite e partilhe os seus documentos em poucos passos.';

  @override
  String get howToScanTitle => 'Digitalizar ou importar';

  @override
  String get howToScanDescription => 'Digitalize um documento com a câmara ou importe uma ou mais fotografias da biblioteca de fotografias.';

  @override
  String get howToEditTitle => 'Rever e editar';

  @override
  String get howToEditDescription => 'Recorte, rode, adicione, elimine ou reordene páginas antes de guardar.';

  @override
  String get howToSaveTitle => 'Guardar o documento';

  @override
  String get howToSaveDescription => 'Dê um nome ao documento e guarde-o em segurança na aplicação.';

  @override
  String get howToManageTitle => 'Gerir documentos';

  @override
  String get howToManageDescription => 'Abra, pesquise, mude o nome, edite ou elimine os seus documentos guardados.';

  @override
  String get howToExportTitle => 'Partilhar e exportar';

  @override
  String get howToUseTip => 'Sugestão: os documentos guardados permanecem na aplicação Document Scanner até optar por exportá-los, partilhá-los ou eliminá-los.';

  @override
  String get howToExportDescription => 'Pode partilhar os seus documentos a qualquer momento em formato PDF, JPEG ou PNG através de outras aplicações.';

  @override
  String get recognizeText => 'Reconhecer texto';

  @override
  String get editPage => 'Editar página';

  @override
  String get editPages => 'Editar páginas';

  @override
  String get searchablePdf => 'PDF pesquisável';

  @override
  String get searchablePdfDescription => 'Páginas digitalizadas originais com texto pesquisável';

  @override
  String get searchablePdfFailed => 'Não foi possível criar o PDF pesquisável.';

  @override
  String get imageExportFailed => 'Não foi possível exportar as imagens.';

  @override
  String get recognizeTextFailed => 'Não foi possível reconhecer o texto.';

  @override
  String get recognizedTextTitle => 'Texto reconhecido';

  @override
  String get plainText => 'Texto simples';

  @override
  String get preserveFormat => 'Manter formatação';

  @override
  String get preserveFormatFailed => 'Não foi possível manter a formatação do texto.';

  @override
  String get noTextFound => 'Não foi encontrado texto neste documento.';

  @override
  String get textCopied => 'Texto copiado!';

  @override
  String get copyText => 'Copiar texto';

  @override
  String get shareText => 'Partilhar texto';

  @override
  String get cropDocument => 'Recortar documento';

  @override
  String get crop => 'Recortar';

  @override
  String get rotate => 'Rodar';

  @override
  String get addPage => 'Adicionar página';

  @override
  String get scanNewPage => 'Digitalizar nova página';

  @override
  String get useDocumentScanner => 'Utilizar o digitalizador de documentos';

  @override
  String get chooseFromPhotos => 'Escolher das Fotografias';

  @override
  String get selectOneOrMorePhotos => 'Selecione uma ou mais fotografias';

  @override
  String get reorder => 'Reordenar';

  @override
  String get reorderPages => 'Reordenar páginas';

  @override
  String get deleteCurrentPage => 'Eliminar página atual';

  @override
  String get deletePageTitle => 'Eliminar página?';

  @override
  String get deletePageMessage => 'Esta página será removida do documento.';

  @override
  String get saveChanges => 'Guardar alterações';

  @override
  String get savingChanges => 'A guardar...';

  @override
  String get dragToReorder => 'Arraste para reordenar';

  @override
  String get cropImageFailed => 'Não foi possível recortar a imagem.';

  @override
  String get rotateImageFailed => 'Não foi possível rodar a imagem.';

  @override
  String get addScannedPageFailed => 'Não foi possível adicionar a página digitalizada.';

  @override
  String get addPhotoFailed => 'Não foi possível adicionar a fotografia.';

  @override
  String get saveChangesFailed => 'Não foi possível guardar as alterações.';

  @override
  String get done => 'Concluído';
}
