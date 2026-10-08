import 'dart:io';

import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

import '../l10n/app_localizations.dart';
import '../models/scanned_document.dart';
import '../services/document_storage_service.dart';
import '../services/image_export_service.dart';
import '../services/pdf_service.dart';
import 'edit_document_pages_screen.dart';
import '../widgets/banner_ad_widget.dart';
class DocumentDetailScreen extends StatefulWidget {
  final ScannedDocument document;

  const DocumentDetailScreen({
    super.key,
    required this.document,
  });

  @override
  State<DocumentDetailScreen> createState() =>
      _DocumentDetailScreenState();
}

class _DocumentDetailScreenState
    extends State<DocumentDetailScreen> {
  late ScannedDocument _document;

  int _currentPage = 0;
  bool _exporting = false;

  @override
  void initState() {
    super.initState();
    _document = widget.document;
  }

  // ============================================================
  // EXPORT FORMAT SELECTION
  // ============================================================

  Future<void> _showExportOptions() async {
    final l10n =
    AppLocalizations.of(context)!;

    final format =
    await showModalBottomSheet<String>(
      context: context,
      showDragHandle: true,
      builder: (sheetContext) {
        return SafeArea(
          child: Padding(
            padding:
            const EdgeInsets.fromLTRB(
              20,
              0,
              20,
              20,
            ),
            child: Column(
              mainAxisSize:
              MainAxisSize.min,
              crossAxisAlignment:
              CrossAxisAlignment.start,
              children: [
                Text(
                  l10n.chooseExportFormat,
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(
                    fontWeight:
                    FontWeight.bold,
                  ),
                ),

                const SizedBox(
                  height: 16,
                ),

                // PDF
                ListTile(
                  contentPadding:
                  EdgeInsets.zero,
                  leading:
                  const CircleAvatar(
                    child: Icon(
                      Icons
                          .picture_as_pdf_outlined,
                    ),
                  ),
                  title: Text(
                    l10n.pdfFormat,
                  ),
                  subtitle: Text(
                    l10n
                        .pdfFormatDescription,
                  ),
                  trailing: const Icon(
                    Icons.chevron_right,
                  ),
                  onTap: () {
                    Navigator.pop(
                      sheetContext,
                      'pdf',
                    );
                  },
                ),

                // JPEG
                ListTile(
                  contentPadding:
                  EdgeInsets.zero,
                  leading:
                  const CircleAvatar(
                    child: Icon(
                      Icons.image_outlined,
                    ),
                  ),
                  title: Text(
                    l10n.jpegFormat,
                  ),
                  subtitle: Text(
                    l10n
                        .jpegFormatDescription,
                  ),
                  trailing: const Icon(
                    Icons.chevron_right,
                  ),
                  onTap: () {
                    Navigator.pop(
                      sheetContext,
                      'jpeg',
                    );
                  },
                ),

                // PNG
                ListTile(
                  contentPadding:
                  EdgeInsets.zero,
                  leading:
                  const CircleAvatar(
                    child: Icon(
                      Icons.photo_outlined,
                    ),
                  ),
                  title: Text(
                    l10n.pngFormat,
                  ),
                  subtitle: Text(
                    l10n
                        .pngFormatDescription,
                  ),
                  trailing: const Icon(
                    Icons.chevron_right,
                  ),
                  onTap: () {
                    Navigator.pop(
                      sheetContext,
                      'png',
                    );
                  },
                ),
              ],
            ),
          ),
        );
      },
    );

    if (!mounted ||
        format == null) {
      return;
    }

    switch (format) {
      case 'pdf':
        await _saveAsPdf();
        break;

      case 'jpeg':
        await _exportImages(
          ImageExportFormat.jpeg,
        );
        break;

      case 'png':
        await _exportImages(
          ImageExportFormat.png,
        );
        break;
    }
  }

  // ============================================================
  // PDF EXPORT
  // ============================================================

  Future<void> _saveAsPdf() async {
    final l10n =
    AppLocalizations.of(context)!;

    if (_exporting) {
      return;
    }

    setState(() {
      _exporting = true;
    });

    try {
      final pdfFile =
      await PdfService.createPdf(
        _document,
      );

      print(
        'PDF CREATED: ${pdfFile.path}',
      );

      if (!mounted) {
        return;
      }

      final box =
      context.findRenderObject()
      as RenderBox?;

      await SharePlus.instance.share(
        ShareParams(
          files: [
            XFile(
              pdfFile.path,
              mimeType:
              'application/pdf',
            ),
          ],
          title: _document.name,
          subject: _document.name,
          sharePositionOrigin:
          box == null
              ? null
              : box.localToGlobal(
            Offset.zero,
          ) &
          box.size,
        ),
      );
    } catch (e) {
      print(
        'PDF export/share error: $e',
      );

      if (!mounted) {
        return;
      }

      ScaffoldMessenger.of(context)
          .showSnackBar(
        SnackBar(
          content: Text(
            l10n.pdfCreateFailed,
          ),
        ),
      );
    } finally {
      if (mounted) {
        setState(() {
          _exporting = false;
        });
      }
    }
  }

  // ============================================================
  // JPEG / PNG EXPORT
  // ============================================================

  Future<void> _exportImages(
      ImageExportFormat format,
      ) async {
    if (_exporting) {
      return;
    }

    setState(() {
      _exporting = true;
    });

    try {
      print(
        'REQUESTED IMAGE FORMAT: ${format.name}',
      );

      final files =
      await ImageExportService
          .exportImages(
        document: _document,
        format: format,
      );

      if (!mounted) {
        return;
      }

      final String mimeType;

      switch (format) {
        case ImageExportFormat.jpeg:
          mimeType = 'image/jpeg';
          break;

        case ImageExportFormat.png:
          mimeType = 'image/png';
          break;
      }

      final shareFiles =
      <XFile>[];

      for (final file in files) {
        print(
          'SHARING FILE: ${file.path}',
        );

        print(
          'SHARING MIME: $mimeType',
        );

        shareFiles.add(
          XFile(
            file.path,
            mimeType: mimeType,
          ),
        );
      }

      final box =
      context.findRenderObject()
      as RenderBox?;

      await SharePlus.instance.share(
        ShareParams(
          files: shareFiles,
          title: _document.name,
          subject: _document.name,
          sharePositionOrigin:
          box == null
              ? null
              : box.localToGlobal(
            Offset.zero,
          ) &
          box.size,
        ),
      );
    } catch (e) {
      print(
        'IMAGE EXPORT/SHARE ERROR: $e',
      );

      if (!mounted) {
        return;
      }

      ScaffoldMessenger.of(context)
          .showSnackBar(
        const SnackBar(
          content: Text(
            'Could not export images.',
          ),
        ),
      );
    } finally {
      if (mounted) {
        setState(() {
          _exporting = false;
        });
      }
    }
  }

  // ============================================================
  // RENAME
  // ============================================================
  Future<void> _editPages() async {
    final updatedDocument =
    await Navigator.push<ScannedDocument>(
      context,
      MaterialPageRoute(
        builder: (_) => EditDocumentPagesScreen(
          document: _document,
        ),
      ),
    );

    if (updatedDocument == null || !mounted) {
      return;
    }

    setState(() {
      _document = updatedDocument;
      _currentPage = 0;
    });
  }
  Future<void> _renameDocument() async {
    final l10n =
    AppLocalizations.of(context)!;

    final controller =
    TextEditingController(
      text: _document.name,
    );

    final newName =
    await showDialog<String>(
      context: context,
      builder: (dialogContext) {
        return AlertDialog(
          title: Text(
            l10n.renameDocument,
          ),
          content: TextField(
            controller: controller,
            autofocus: true,
            textCapitalization:
            TextCapitalization
                .sentences,
            decoration:
            InputDecoration(
              hintText:
              l10n.newDocumentName,
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(
                  dialogContext,
                );
              },
              child: Text(
                l10n.cancel,
              ),
            ),
            FilledButton(
              onPressed: () {
                final name =
                controller.text
                    .trim();

                if (name.isEmpty) {
                  return;
                }

                Navigator.pop(
                  dialogContext,
                  name,
                );
              },
              child: Text(
                l10n.rename,
              ),
            ),
          ],
        );
      },
    );

    if (newName == null ||
        newName.trim().isEmpty ||
        newName.trim() ==
            _document.name) {
      return;
    }

    try {
      final renamed =
      await DocumentStorageService
          .renameDocument(
        document: _document,
        newName:
        newName.trim(),
      );

      if (!mounted) {
        return;
      }

      setState(() {
        _document = renamed;
      });
    } catch (e) {
      print(
        'Rename error: $e',
      );
    }
  }

  // ============================================================
  // DELETE
  // ============================================================

  Future<void> _deleteDocument() async {
    final l10n =
    AppLocalizations.of(context)!;

    final confirmed =
    await showDialog<bool>(
      context: context,
      builder: (dialogContext) {
        return AlertDialog(
          title: Text(
            l10n.deleteDocumentTitle,
          ),
          content: Text(
            l10n.deleteDocumentMessage,
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(
                  dialogContext,
                  false,
                );
              },
              child: Text(
                l10n.cancel,
              ),
            ),
            FilledButton(
              onPressed: () {
                Navigator.pop(
                  dialogContext,
                  true,
                );
              },
              child: Text(
                l10n.delete,
              ),
            ),
          ],
        );
      },
    );

    if (confirmed != true) {
      return;
    }

    try {
      await DocumentStorageService
          .deleteDocument(
        _document,
      );

      if (!mounted) {
        return;
      }

      Navigator.pop(
        context,
        true,
      );
    } catch (e) {
      print(
        'Delete error: $e',
      );
    }
  }

  // ============================================================
  // UI
  // ============================================================

  @override
  Widget build(
      BuildContext context,
      ) {
    final l10n =
    AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          _document.name,
          maxLines: 1,
          overflow:
          TextOverflow.ellipsis,
          style: const TextStyle(
            fontWeight:
            FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          PopupMenuButton<String>(
            onSelected: (value) {
              if (value == 'editPages') {
                _editPages();
              } else if (value == 'rename') {
                _renameDocument();
              } else if (value == 'delete') {
                _deleteDocument();
              }
            },
            itemBuilder:
                (context) => [
                  const PopupMenuItem<String>(
                    value: 'editPages',
                    child: Row(
                      children: [
                        Icon(Icons.edit_note_outlined),
                        SizedBox(width: 12),
                        Text('Edit Pages'),
                      ],
                    ),
                  ),
              PopupMenuItem(
                value: 'rename',
                child: Row(
                  children: [
                    const Icon(
                      Icons
                          .edit_outlined,
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Text(
                      l10n
                          .renameDocument,
                    ),
                  ],
                ),
              ),
              PopupMenuItem(
                value: 'delete',
                child: Row(
                  children: [
                    const Icon(
                      Icons
                          .delete_outline,
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Text(
                      l10n
                          .deleteDocument,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),

      body: Column(
        children: [
          Expanded(
            child:
            PageView.builder(
              itemCount:
              _document
                  .pagePaths
                  .length,
              onPageChanged:
                  (index) {
                setState(() {
                  _currentPage =
                      index;
                });
              },
              itemBuilder:
                  (context, index) {
                final path =
                _document
                    .pagePaths[
                index];

                return Padding(
                  padding:
                  const EdgeInsets
                      .all(16),
                  child: Container(
                    decoration:
                    BoxDecoration(
                      color: Colors
                          .grey
                          .shade100,
                      borderRadius:
                      BorderRadius
                          .circular(
                        16,
                      ),
                    ),
                    child: ClipRRect(
                      borderRadius:
                      BorderRadius
                          .circular(
                        16,
                      ),
                      child:
                      InteractiveViewer(
                        minScale: 1,
                        maxScale: 5,
                        child: Center(
                          child:
                          Image.file(
                            File(
                              path,
                            ),
                            fit: BoxFit
                                .contain,
                            errorBuilder:
                                (
                                _,
                                _,
                                _,
                                ) {
                              return const Center(
                                child:
                                Icon(
                                  Icons
                                      .broken_image_outlined,
                                  size:
                                  60,
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),

          Padding(
            padding:
            const EdgeInsets
                .fromLTRB(
              20,
              8,
              20,
              20,
            ),
            child: Text(
              '${l10n.page} '
                  '${_currentPage + 1} / '
                  '${_document.pageCount}',
              style:
              const TextStyle(
                fontSize: 16,
                fontWeight:
                FontWeight.w600,
              ),
            ),
          ),
// ==========================================
// ADMOB BANNER — ABOVE EXPORT BUTTON
// ==========================================
          const SafeArea(
            top: false,
            bottom: false,
            child: BannerAdWidget(),
          ),

          const SizedBox(height: 12),
          Padding(
            padding:
            const EdgeInsets
                .fromLTRB(
              20,
              0,
              20,
              20,
            ),
            child: SizedBox(
              width:
              double.infinity,
              height: 54,
              child:
              FilledButton.icon(
                onPressed:
                _exporting
                    ? null
                    : _showExportOptions,
                icon: _exporting
                    ? const SizedBox(
                  width: 20,
                  height: 20,
                  child:
                  CircularProgressIndicator(
                    strokeWidth:
                    2,
                  ),
                )
                    : const Icon(
                  Icons
                      .ios_share_outlined,
                ),
                label: Text(
                  _exporting
                      ? l10n
                      .creatingPdf
                      : l10n
                      .exportDocument,
                  style:
                  const TextStyle(
                    fontSize: 16,
                    fontWeight:
                    FontWeight
                        .w600,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}