

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image/image.dart' as img;
import 'package:image_cropper/image_cropper.dart';
import 'package:path_provider/path_provider.dart';

import '../l10n/app_localizations.dart';
import '../services/document_storage_service.dart';
import 'package:flutter_doc_scanner/flutter_doc_scanner.dart';
import 'package:image_picker/image_picker.dart';

import '../services/ocr_service.dart';
import 'recognized_text_screen.dart';

class ScanReviewScreen extends StatefulWidget {
  final List<String> imagePaths;

  const ScanReviewScreen({
    super.key,
    required this.imagePaths,
  });

  @override
  State<ScanReviewScreen> createState() =>
      _ScanReviewScreenState();
}

class _ScanReviewScreenState extends State<ScanReviewScreen> {
  late List<String> _imagePaths;

  int _currentPage = 0;

  bool _saving = false;
  bool _editing = false;
  final ImagePicker _imagePicker = ImagePicker();
  @override
  void initState() {
    super.initState();

    _imagePaths = List<String>.from(
      widget.imagePaths,
    );
  }

  // ============================================================
  // CROP CURRENT PAGE
  // ============================================================

  Future<void> _cropCurrentPage() async {
    if (_imagePaths.isEmpty || _editing) {
      return;
    }

    final l10n = AppLocalizations.of(context)!;
    final currentIndex = _currentPage;
    final currentPath = _imagePaths[currentIndex];

    setState(() {
      _editing = true;
    });

    try {
      final croppedFile = await ImageCropper().cropImage(
        sourcePath: currentPath,
        compressFormat: ImageCompressFormat.jpg,
        compressQuality: 100,
        uiSettings: [
          IOSUiSettings(
            title: l10n.cropDocument,
            doneButtonTitle: l10n.done,
            cancelButtonTitle: l10n.cancel,
            resetButtonHidden: false,
            rotateButtonsHidden: false,
            aspectRatioPickerButtonHidden: true,
            aspectRatioLockEnabled: false,
          ),
          AndroidUiSettings(
            toolbarTitle: l10n.cropDocument,
            lockAspectRatio: false,
            hideBottomControls: false,
          ),
        ],
      );

      if (!mounted) {
        return;
      }

      if (croppedFile != null) {
        setState(() {
          _imagePaths[currentIndex] =
              croppedFile.path;
        });
      }
    } catch (e) {
      debugPrint(
        'Crop error: $e',
      );

      if (!mounted) {
        return;
      }

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            l10n.cropImageFailed,
          ),
        ),
      );
    } finally {
      if (mounted) {
        setState(() {
          _editing = false;
        });
      }
    }
  }

  // ============================================================
  // ROTATE CURRENT PAGE
  // ============================================================

  Future<void> _rotateCurrentPage() async {
    if (_imagePaths.isEmpty || _editing) {
      return;
    }

    final l10n = AppLocalizations.of(context)!;
    final currentIndex = _currentPage;
    final currentPath = _imagePaths[currentIndex];

    setState(() {
      _editing = true;
    });

    try {
      final sourceFile = File(
        currentPath,
      );

      final bytes =
      await sourceFile.readAsBytes();

      final decodedImage =
      img.decodeImage(bytes);

      if (decodedImage == null) {
        throw Exception(
          'Could not read image.',
        );
      }

      final rotatedImage =
      img.copyRotate(
        decodedImage,
        angle: 90,
      );

      final tempDirectory =
      await getTemporaryDirectory();

      final rotatedDirectory =
      Directory(
        '${tempDirectory.path}/review_edits',
      );

      if (!await rotatedDirectory.exists()) {
        await rotatedDirectory.create(
          recursive: true,
        );
      }

      final rotatedFile = File(
        '${rotatedDirectory.path}/'
            'rotated_${DateTime.now().microsecondsSinceEpoch}.jpg',
      );

      await rotatedFile.writeAsBytes(
        img.encodeJpg(
          rotatedImage,
          quality: 100,
        ),
        flush: true,
      );

      if (!mounted) {
        return;
      }

      setState(() {
        _imagePaths[currentIndex] =
            rotatedFile.path;
      });
    } catch (e) {
      debugPrint(
        'Rotate error: $e',
      );

      if (!mounted) {
        return;
      }

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            l10n.rotateImageFailed,
          ),
        ),
      );
    } finally {
      if (mounted) {
        setState(() {
          _editing = false;
        });
      }
    }
  }

  // ============================================================
  // REORDER PAGES
  // ============================================================

  Future<void> _reorderPages() async {
    if (_imagePaths.length < 2 || _editing) {
      return;
    }

    final reorderedPaths =
    await Navigator.push<List<String>>(
      context,
      MaterialPageRoute(
        builder: (_) => _ReorderPagesScreen(
          imagePaths: _imagePaths,
        ),
      ),
    );

    if (reorderedPaths == null ||
        !mounted) {
      return;
    }

    setState(() {
      _imagePaths =
      List<String>.from(
        reorderedPaths,
      );

      // Return to page 1 after reordering.
      _currentPage = 0;
    });
  }

  // ============================================================
  // DELETE CURRENT PAGE
  // ============================================================
// ============================================================
// ADD PAGE
// ============================================================

  Future<void> _showAddPageOptions() async {
    final l10n = AppLocalizations.of(context)!;
    if (_editing || _saving) {
      return;
    }

    final choice = await showModalBottomSheet<String>(
      context: context,
      showDragHandle: true,
      builder: (sheetContext) {
        return SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(
              bottom: 12,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(
                    20,
                    8,
                    20,
                    16,
                  ),
                  child: Text(
                    l10n.addPage,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                ListTile(
                  leading: const Icon(
                    Icons.document_scanner_outlined,
                  ),
                  title: Text(l10n.scanNewPage,
                  ),
                  subtitle: Text(l10n.useDocumentScanner,
                  ),
                  onTap: () {
                    Navigator.pop(
                      sheetContext,
                      'camera',
                    );
                  },
                ),

                ListTile(
                  leading: const Icon(
                    Icons.photo_library_outlined,
                  ),
                  title: Text(l10n.chooseFromPhotos,
                  ),
                  subtitle: Text(l10n.selectOneOrMorePhotos,
                  ),
                  onTap: () {
                    Navigator.pop(
                      sheetContext,
                      'gallery',
                    );
                  },
                ),

                ListTile(
                  leading: const Icon(
                    Icons.close,
                  ),
                  title: Text(l10n.cancel,
                  ),
                  onTap: () {
                    Navigator.pop(
                      sheetContext,
                    );
                  },
                ),
              ],
            ),
          ),
        );
      },
    );

    if (!mounted || choice == null) {
      return;
    }

    if (choice == 'camera') {
      await _addPagesFromScanner();
    } else if (choice == 'gallery') {
      await _addPagesFromGallery();
    }
  }

// ============================================================
// ADD PAGE FROM NATIVE DOCUMENT SCANNER
// ============================================================

  Future<void> _addPagesFromScanner() async {
    if (_editing) {
      return;
    }

    setState(() {
      _editing = true;
    });

    try {
      final result =
      await FlutterDocScanner().getScanDocuments();

      if (result == null) {
        return;
      }

      final newPages =
      List<String>.from(result);

      if (newPages.isEmpty) {
        return;
      }

      if (!mounted) {
        return;
      }

      setState(() {
        _imagePaths.addAll(
          newPages,
        );

        // Show the first newly added page.
        _currentPage =
            _imagePaths.length - newPages.length;
      });
    } catch (e) {
      debugPrint(
        'Add page scanner error: $e',
      );

      if (!mounted) {
        return;
      }

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            AppLocalizations.of(context)!.addScannedPageFailed,
          ),
        ),
      );
    } finally {
      if (mounted) {
        setState(() {
          _editing = false;
        });
      }
    }
  }

// ============================================================
// ADD PAGE FROM PHOTOS
// ============================================================

  Future<void> _addPagesFromGallery() async {
    final l10n = AppLocalizations.of(context)!;
    if (_editing) {
      return;
    }

    try {
      final images =
      await _imagePicker.pickMultiImage(
        imageQuality: 100,
      );

      if (images.isEmpty) {
        return;
      }

      final newPages = <String>[];

      for (final image in images) {
        final croppedFile =
        await ImageCropper().cropImage(
          sourcePath: image.path,
          compressFormat:
          ImageCompressFormat.jpg,
          compressQuality: 100,
          uiSettings: [
            IOSUiSettings(
              title: l10n.cropDocument,
              doneButtonTitle: l10n.done,
              cancelButtonTitle: l10n.cancel,
              resetButtonHidden: false,
              rotateButtonsHidden: false,
              aspectRatioPickerButtonHidden: true,
              aspectRatioLockEnabled: false,
            ),
            AndroidUiSettings(
              toolbarTitle: l10n.cropDocument,
              lockAspectRatio: false,
              hideBottomControls: false,
            ),
          ],
        );

        if (croppedFile != null) {
          newPages.add(
            croppedFile.path,
          );
        }
      }

      if (newPages.isEmpty ||
          !mounted) {
        return;
      }

      setState(() {
        _imagePaths.addAll(
          newPages,
        );

        _currentPage =
            _imagePaths.length - newPages.length;
      });
    } catch (e) {
      debugPrint(
        'Add page gallery error: $e',
      );

      if (!mounted) {
        return;
      }

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            AppLocalizations.of(context)!.addPhotoFailed,
          ),
        ),
      );
    }
  }
  void _deleteCurrentPage() {
    if (_imagePaths.isEmpty || _editing) {
      return;
    }

    setState(() {
      _imagePaths.removeAt(
        _currentPage,
      );

      if (_currentPage >= _imagePaths.length &&
          _currentPage > 0) {
        _currentPage--;
      }
    });

    if (_imagePaths.isEmpty) {
      Navigator.pop(context);
    }
  }

  // ============================================================
  // SAVE DOCUMENT
  // ============================================================

  Future<void> _saveDocument() async {
    final l10n =
    AppLocalizations.of(context)!;

    final controller =
    TextEditingController();

    final documentName =
    await showDialog<String>(
      context: context,
      builder: (dialogContext) {
        return AlertDialog(
          title: Text(
            l10n.documentName,
          ),
          content: TextField(
            controller: controller,
            autofocus: true,
            textCapitalization:
            TextCapitalization.sentences,
            decoration: InputDecoration(
              hintText:
              l10n.documentNameHint,
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
                controller.text.trim();

                if (name.isEmpty) {
                  return;
                }

                Navigator.pop(
                  dialogContext,
                  name,
                );
              },
              child: Text(
                l10n.save,
              ),
            ),
          ],
        );
      },
    );

    // We intentionally don't dispose this immediately.
    // The dialog closing animation can still reference it.

    if (documentName == null ||
        documentName.trim().isEmpty) {
      return;
    }

    setState(() {
      _saving = true;
    });

    try {
      await DocumentStorageService.saveDocument(
        name: documentName.trim(),
        sourceImagePaths: _imagePaths,
      );

      if (!mounted) {
        return;
      }

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            l10n.documentSaved,
          ),
        ),
      );

      Navigator.pop(
        context,
        true,
      );
    } catch (e) {
      debugPrint(
        'Save document error: $e',
      );

      if (!mounted) {
        return;
      }

      setState(() {
        _saving = false;
      });

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            l10n.saveFailed,
          ),
        ),
      );
    }
  }

  // ============================================================
  // UI
  // ============================================================

  Future<void> _recognizeText() async {
    if (_saving || _editing || _imagePaths.isEmpty) return;

    setState(() {
      _editing = true;
    });

    try {
      final text = await OcrService.recognizeText(
        List<String>.from(_imagePaths),
      );

      if (!mounted) return;

      setState(() {
        _editing = false;
      });

      await Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => RecognizedTextScreen(
            recognizedText: text,
            imagePaths: List<String>.from(_imagePaths),
          ),
        ),
      );
    } catch (e) {
      debugPrint('OCR error: $e');

      if (!mounted) return;

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(AppLocalizations.of(context)!.recognizeTextFailed),
        ),
      );
    } finally {
      if (mounted && _editing) {
        setState(() {
          _editing = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n =
    AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          l10n.reviewScan,
          style: const TextStyle(
            fontWeight:
            FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            tooltip:
            l10n.deletePage,
            onPressed:
            _editing
                ? null
                : _deleteCurrentPage,
            icon: const Icon(
              Icons.delete_outline,
            ),
          ),
        ],
      ),

      body: Column(
        children: [
          // ====================================================
          // DOCUMENT PREVIEW
          // ====================================================

          Expanded(
            child: Stack(
              children: [
                PageView.builder(
                  itemCount:
                  _imagePaths.length,
                  onPageChanged:
                      (index) {
                    setState(() {
                      _currentPage =
                          index;
                    });
                  },
                  itemBuilder:
                      (context, index) {
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
                            maxScale: 4,
                            child:
                            Center(
                              child:
                              Image.file(
                                File(
                                  _imagePaths[
                                  index],
                                ),
                                key: ValueKey(
                                  _imagePaths[
                                  index],
                                ),
                                fit: BoxFit
                                    .contain,
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),

                if (_editing)
                  const Positioned.fill(
                    child:
                    ColoredBox(
                      color:
                      Color(
                        0x33000000,
                      ),
                      child: Center(
                        child:
                        CircularProgressIndicator(),
                      ),
                    ),
                  ),
              ],
            ),
          ),

          // ====================================================
          // BOTTOM CONTROLS
          // ====================================================

          Padding(
            padding:
            const EdgeInsets
                .fromLTRB(
              20,
              8,
              20,
              20,
            ),
            child: Column(
              children: [
                Text(
                  '${l10n.page} '
                      '${_currentPage + 1} / '
                      '${_imagePaths.length}',
                  style:
                  const TextStyle(
                    fontSize: 16,
                    fontWeight:
                    FontWeight.w600,
                  ),
                ),

                const SizedBox(
                  height: 14,
                ),

                // ==============================================
                // CROP + ROTATE
                // ==============================================

                Row(
                  children: [
                    Expanded(
                      child:
                      OutlinedButton
                          .icon(
                        onPressed:
                        _editing
                            ? null
                            : _cropCurrentPage,
                        icon:
                        const Icon(
                          Icons.crop,
                        ),
                        label:
                        Text(l10n.crop,
                        ),
                      ),
                    ),

                    const SizedBox(
                      width: 12,
                    ),

                    Expanded(
                      child:
                      OutlinedButton
                          .icon(
                        onPressed:
                        _editing
                            ? null
                            : _rotateCurrentPage,
                        icon:
                        const Icon(
                          Icons
                              .rotate_right,
                        ),
                        label:
                        Text(l10n.rotate,
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(
                  height: 10,
                ),

                // ==============================================
                // ADD PAGE + REORDER
                // ==============================================

                Row(
                  children: [
                    Expanded(
                      child:
                      OutlinedButton.icon(
                        onPressed:
                        _editing || _saving
                            ? null
                            : _showAddPageOptions,
                        icon: const Icon(
                          Icons.add_photo_alternate_outlined,
                        ),
                        label: Text(l10n.addPage,
                        ),
                      ),
                    ),

                    const SizedBox(
                      width: 12,
                    ),

                    Expanded(
                      child:
                      OutlinedButton
                          .icon(
                        onPressed:
                        _editing ||
                            _imagePaths
                                .length <
                                2
                            ? null
                            : _reorderPages,
                        icon:
                        const Icon(
                          Icons
                              .swap_vert,
                        ),
                        label:
                        Text(l10n.reorder,
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(
                  height: 14,
                ),


                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton.icon(
                    onPressed: _saving || _editing || _imagePaths.isEmpty
                        ? null
                        : _recognizeText,
                    icon: const Icon(Icons.text_snippet_outlined),
                    label: Text(l10n.recognizeText),
                  ),
                ),

                const SizedBox(height: 10),

                // ==============================================
                // SAVE
                // ==============================================

                SizedBox(
                  width:
                  double.infinity,
                  height: 56,
                  child:
                  FilledButton.icon(
                    onPressed:
                    _saving ||
                        _editing
                        ? null
                        : _saveDocument,
                    icon: _saving
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
                          .save_outlined,
                    ),
                    label: Text(
                      l10n.saveDocument,
                      style:
                      const TextStyle(
                        fontSize: 17,
                        fontWeight:
                        FontWeight
                            .w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// ================================================================
// REORDER PAGES SCREEN
// ================================================================

class _ReorderPagesScreen extends StatefulWidget {
  final List<String> imagePaths;

  const _ReorderPagesScreen({
    required this.imagePaths,
  });

  @override
  State<_ReorderPagesScreen> createState() =>
      _ReorderPagesScreenState();
}

class _ReorderPagesScreenState
    extends State<_ReorderPagesScreen> {
  late List<String> _pages;

  @override
  void initState() {
    super.initState();

    _pages = List<String>.from(
      widget.imagePaths,
    );
  }

  void _reorder(
      int oldIndex,
      int newIndex,
      ) {
    setState(() {

      final page =
      _pages.removeAt(
        oldIndex,
      );

      _pages.insert(
        newIndex,
        page,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.reorderPages,
          style: TextStyle(
            fontWeight:
            FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(
                context,
                _pages,
              );
            },
            child: Text(l10n.done,
            ),
          ),
        ],
      ),
      body: ReorderableListView.builder(
        padding:
        const EdgeInsets.all(
          16,
        ),
        itemCount:
        _pages.length,
        onReorderItem:
        _reorder,
        itemBuilder:
            (context, index) {
          final path =
          _pages[index];

          return Card(
            key: ValueKey(
              path,
            ),
            margin:
            const EdgeInsets
                .only(
              bottom: 12,
            ),
            child: ListTile(
              contentPadding:
              const EdgeInsets
                  .all(10),
              leading:
              ClipRRect(
                borderRadius:
                BorderRadius
                    .circular(
                  8,
                ),
                child:
                SizedBox(
                  width: 58,
                  height: 72,
                  child:
                  Image.file(
                    File(path),
                    fit: BoxFit
                        .cover,
                  ),
                ),
              ),
              title: Text(
                '${l10n.page} ${index + 1}',
                style:
                const TextStyle(
                  fontWeight:
                  FontWeight
                      .w600,
                ),
              ),
              subtitle:
              Text(l10n.dragToReorder,
              ),
              trailing:
              ReorderableDragStartListener(
                index:
                index,
                child:
                const Padding(
                  padding:
                  EdgeInsets
                      .all(
                    12,
                  ),
                  child:
                  Icon(
                    Icons
                        .drag_handle,
                    size: 30,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
