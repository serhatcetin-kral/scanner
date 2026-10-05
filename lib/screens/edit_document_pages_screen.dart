import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_doc_scanner/flutter_doc_scanner.dart';
import 'package:image/image.dart' as img;
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';

import '../models/scanned_document.dart';
import '../services/document_storage_service.dart';

class EditDocumentPagesScreen extends StatefulWidget {
  final ScannedDocument document;

  const EditDocumentPagesScreen({
    super.key,
    required this.document,
  });

  @override
  State<EditDocumentPagesScreen> createState() =>
      _EditDocumentPagesScreenState();
}

class _EditDocumentPagesScreenState
    extends State<EditDocumentPagesScreen> {
  late List<String> _imagePaths;

  final ImagePicker _imagePicker = ImagePicker();

  int _currentPage = 0;

  bool _editing = false;
  bool _saving = false;

  @override
  void initState() {
    super.initState();

    _imagePaths =
    List<String>.from(widget.document.pagePaths);
  }

  // ============================================================
  // CROP CURRENT PAGE
  // ============================================================

  Future<void> _cropCurrentPage() async {
    if (_imagePaths.isEmpty ||
        _editing ||
        _saving) {
      return;
    }

    final currentIndex = _currentPage;
    final currentPath = _imagePaths[currentIndex];

    setState(() {
      _editing = true;
    });

    try {
      final croppedFile =
      await ImageCropper().cropImage(
        sourcePath: currentPath,
        compressFormat:
        ImageCompressFormat.jpg,
        compressQuality: 100,
        uiSettings: [
          IOSUiSettings(
            title: 'Crop Document',
            doneButtonTitle: 'Done',
            cancelButtonTitle: 'Cancel',
            resetButtonHidden: false,
            rotateButtonsHidden: false,
            aspectRatioPickerButtonHidden: true,
            aspectRatioLockEnabled: false,
          ),
          AndroidUiSettings(
            toolbarTitle: 'Crop Document',
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
            'Could not crop image: $e',
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
    if (_imagePaths.isEmpty ||
        _editing ||
        _saving) {
      return;
    }

    final currentIndex = _currentPage;
    final currentPath = _imagePaths[currentIndex];

    setState(() {
      _editing = true;
    });

    try {
      final sourceFile = File(currentPath);

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

      final editDirectory = Directory(
        '${tempDirectory.path}/document_page_edits',
      );

      if (!await editDirectory.exists()) {
        await editDirectory.create(
          recursive: true,
        );
      }

      final rotatedFile = File(
        '${editDirectory.path}/'
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
            'Could not rotate image: $e',
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
  // ADD PAGE MENU
  // ============================================================

  Future<void> _showAddPageOptions() async {
    if (_editing || _saving) {
      return;
    }

    final choice =
    await showModalBottomSheet<String>(
      context: context,
      showDragHandle: true,
      builder: (sheetContext) {
        return SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Padding(
                padding:
                EdgeInsets.fromLTRB(
                  20,
                  8,
                  20,
                  16,
                ),
                child: Text(
                  'Add Page',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight:
                    FontWeight.bold,
                  ),
                ),
              ),

              ListTile(
                leading: const Icon(
                  Icons
                      .document_scanner_outlined,
                ),
                title: const Text(
                  'Scan New Page',
                ),
                subtitle: const Text(
                  'Use the document scanner',
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
                title: const Text(
                  'Choose from Photos',
                ),
                subtitle: const Text(
                  'Select one or more photos',
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
                title: const Text(
                  'Cancel',
                ),
                onTap: () {
                  Navigator.pop(
                    sheetContext,
                  );
                },
              ),
            ],
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
  // ADD PAGE FROM DOCUMENT SCANNER
  // ============================================================

  Future<void> _addPagesFromScanner() async {
    if (_editing || _saving) {
      return;
    }

    setState(() {
      _editing = true;
    });

    try {
      final result =
      await FlutterDocScanner()
          .getScanDocuments();

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
      });
    } catch (e) {
      debugPrint(
        'Add scanner page error: $e',
      );

      if (!mounted) {
        return;
      }

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'Could not add scanned page: $e',
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
    if (_editing || _saving) {
      return;
    }

    setState(() {
      _editing = true;
    });

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
              title: 'Crop Document',
              doneButtonTitle: 'Done',
              cancelButtonTitle: 'Cancel',
              resetButtonHidden: false,
              rotateButtonsHidden: false,
              aspectRatioPickerButtonHidden:
              true,
              aspectRatioLockEnabled: false,
            ),
            AndroidUiSettings(
              toolbarTitle: 'Crop Document',
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
      });
    } catch (e) {
      debugPrint(
        'Add gallery page error: $e',
      );

      if (!mounted) {
        return;
      }

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'Could not add photo: $e',
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
  // DELETE CURRENT PAGE
  // ============================================================

  Future<void> _deleteCurrentPage() async {
    if (_imagePaths.length <= 1 ||
        _editing ||
        _saving) {
      return;
    }

    final confirmed =
    await showDialog<bool>(
      context: context,
      builder: (dialogContext) {
        return AlertDialog(
          title: const Text(
            'Delete Page?',
          ),
          content: const Text(
            'This page will be removed from the document.',
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(
                  dialogContext,
                  false,
                );
              },
              child: const Text(
                'Cancel',
              ),
            ),
            FilledButton(
              onPressed: () {
                Navigator.pop(
                  dialogContext,
                  true,
                );
              },
              child: const Text(
                'Delete',
              ),
            ),
          ],
        );
      },
    );

    if (confirmed != true ||
        !mounted) {
      return;
    }

    setState(() {
      _imagePaths.removeAt(
        _currentPage,
      );

      if (_currentPage >=
          _imagePaths.length) {
        _currentPage =
            _imagePaths.length - 1;
      }
    });
  }

  // ============================================================
  // REORDER PAGES
  // ============================================================

  Future<void> _reorderPages() async {
    if (_imagePaths.length < 2 ||
        _editing ||
        _saving) {
      return;
    }

    final reordered =
    await Navigator.push<List<String>>(
      context,
      MaterialPageRoute(
        builder: (_) =>
            _ReorderExistingPagesScreen(
              imagePaths: _imagePaths,
            ),
      ),
    );

    if (reordered == null ||
        !mounted) {
      return;
    }

    setState(() {
      _imagePaths =
      List<String>.from(
        reordered,
      );

      _currentPage = 0;
    });
  }

  // ============================================================
  // SAVE CHANGES
  // ============================================================

  Future<void> _saveChanges() async {
    if (_saving ||
        _editing ||
        _imagePaths.isEmpty) {
      return;
    }

    setState(() {
      _saving = true;
    });

    try {
      final updatedDocument =
      await DocumentStorageService
          .updateDocumentPages(
        document: widget.document,
        sourceImagePaths: _imagePaths,
      );

      if (!mounted) {
        return;
      }

      Navigator.pop(
        context,
        updatedDocument,
      );
    } catch (e) {
      debugPrint(
        'Save document changes error: $e',
      );

      if (!mounted) {
        return;
      }

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'Could not save changes: $e',
          ),
        ),
      );
    } finally {
      if (mounted) {
        setState(() {
          _saving = false;
        });
      }
    }
  }

  // ============================================================
  // UI
  // ============================================================

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Edit Pages',
        ),
        centerTitle: true,
      ),

      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              itemCount: _imagePaths.length,
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
              itemBuilder: (
                  context,
                  index,
                  ) {
                return Padding(
                  padding:
                  const EdgeInsets.all(
                    16,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color:
                      Colors.grey.shade100,
                      borderRadius:
                      BorderRadius.circular(
                        16,
                      ),
                    ),
                    child: ClipRRect(
                      borderRadius:
                      BorderRadius.circular(
                        16,
                      ),
                      child:
                      InteractiveViewer(
                        minScale: 1,
                        maxScale: 5,
                        child: Center(
                          child: Image.file(
                            File(
                              _imagePaths[
                              index],
                            ),
                            fit: BoxFit.contain,
                            errorBuilder: (
                                _,
                                _,
                                _,
                                ) {
                              return const Center(
                                child: Icon(
                                  Icons
                                      .broken_image_outlined,
                                  size: 60,
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

          Text(
            'Page ${_currentPage + 1} / '
                '${_imagePaths.length}',
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),

          const SizedBox(
            height: 12,
          ),

          Padding(
            padding:
            const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Row(
              children: [
                Expanded(
                  child:
                  OutlinedButton.icon(
                    onPressed:
                    _editing || _saving
                        ? null
                        : _cropCurrentPage,
                    icon: const Icon(
                      Icons.crop,
                    ),
                    label: const Text(
                      'Crop',
                    ),
                  ),
                ),

                const SizedBox(
                  width: 12,
                ),

                Expanded(
                  child:
                  OutlinedButton.icon(
                    onPressed:
                    _editing || _saving
                        ? null
                        : _rotateCurrentPage,
                    icon: const Icon(
                      Icons.rotate_right,
                    ),
                    label: const Text(
                      'Rotate',
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(
            height: 10,
          ),

          Padding(
            padding:
            const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Row(
              children: [
                Expanded(
                  child:
                  OutlinedButton.icon(
                    onPressed:
                    _editing || _saving
                        ? null
                        : _showAddPageOptions,
                    icon: const Icon(
                      Icons
                          .add_photo_alternate_outlined,
                    ),
                    label: const Text(
                      'Add Page',
                    ),
                  ),
                ),

                const SizedBox(
                  width: 12,
                ),

                Expanded(
                  child:
                  OutlinedButton.icon(
                    onPressed:
                    _editing ||
                        _saving ||
                        _imagePaths
                            .length <
                            2
                        ? null
                        : _reorderPages,
                    icon: const Icon(
                      Icons.swap_vert,
                    ),
                    label: const Text(
                      'Reorder',
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(
            height: 10,
          ),

          Padding(
            padding:
            const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: SizedBox(
              width: double.infinity,
              child: OutlinedButton.icon(
                onPressed:
                _editing ||
                    _saving ||
                    _imagePaths.length <=
                        1
                    ? null
                    : _deleteCurrentPage,
                icon: const Icon(
                  Icons.delete_outline,
                ),
                label: const Text(
                  'Delete Current Page',
                ),
              ),
            ),
          ),

          const SizedBox(
            height: 10,
          ),

          Padding(
            padding:
            const EdgeInsets.fromLTRB(
              20,
              0,
              20,
              20,
            ),
            child: SizedBox(
              width: double.infinity,
              height: 54,
              child: FilledButton.icon(
                onPressed:
                _editing || _saving
                    ? null
                    : _saveChanges,
                icon: _saving
                    ? const SizedBox(
                  width: 20,
                  height: 20,
                  child:
                  CircularProgressIndicator(
                    strokeWidth: 2,
                  ),
                )
                    : const Icon(
                  Icons.save_outlined,
                ),
                label: Text(
                  _saving
                      ? 'Saving...'
                      : 'Save Changes',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight:
                    FontWeight.w600,
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

// ============================================================
// REORDER EXISTING PAGES SCREEN
// ============================================================

class _ReorderExistingPagesScreen
    extends StatefulWidget {
  final List<String> imagePaths;

  const _ReorderExistingPagesScreen({
    required this.imagePaths,
  });

  @override
  State<_ReorderExistingPagesScreen>
  createState() =>
      _ReorderExistingPagesScreenState();
}

class _ReorderExistingPagesScreenState
    extends State<_ReorderExistingPagesScreen> {
  late List<String> _pages;

  @override
  void initState() {
    super.initState();

    _pages =
    List<String>.from(
      widget.imagePaths,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Reorder Pages',
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
            child: const Text(
              'Done',
            ),
          ),
        ],
      ),

      body: ReorderableListView.builder(
        padding:
        const EdgeInsets.all(
          16,
        ),
        itemCount: _pages.length,
        onReorder: (
            oldIndex,
            newIndex,
            ) {
          setState(() {
            if (newIndex > oldIndex) {
              newIndex -= 1;
            }

            final page =
            _pages.removeAt(
              oldIndex,
            );

            _pages.insert(
              newIndex,
              page,
            );
          });
        },
        itemBuilder: (
            context,
            index,
            ) {
          final path = _pages[index];

          return Card(
            key: ValueKey(path),
            margin:
            const EdgeInsets.only(
              bottom: 12,
            ),
            child: ListTile(
              contentPadding:
              const EdgeInsets.all(
                8,
              ),
              leading: ClipRRect(
                borderRadius:
                BorderRadius.circular(
                  8,
                ),
                child: Image.file(
                  File(path),
                  width: 60,
                  height: 75,
                  fit: BoxFit.cover,
                ),
              ),
              title: Text(
                'Page ${index + 1}',
              ),
              subtitle: const Text(
                'Drag to reorder',
              ),
              trailing:
              ReorderableDragStartListener(
                index: index,
                child: const Padding(
                  padding:
                  EdgeInsets.all(
                    12,
                  ),
                  child: Icon(
                    Icons.drag_handle,
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