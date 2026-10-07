import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_doc_scanner/flutter_doc_scanner.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:in_app_review/in_app_review.dart';
import 'package:share_plus/share_plus.dart';

import 'l10n/app_localizations.dart';
import 'models/scanned_document.dart';
import 'screens/document_detail_screen.dart';
import 'screens/language_selection_screen.dart';
import 'screens/scan_review_screen.dart';
import 'screens/settings_screen.dart';
import 'services/document_storage_service.dart';
import 'services/app_prompt_service.dart';
import 'package:upgrader/upgrader.dart';
import 'package:flutter/services.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // 📱 Keep the app in portrait mode only
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  final prefs =
  await SharedPreferences.getInstance();

  final savedLanguage =
  prefs.getString(
    'selected_language',
  );

  runApp(
    DocumentScannerApp(
      savedLanguage: savedLanguage,
    ),
  );
}

// ============================================================
// APP
// ============================================================

class DocumentScannerApp
    extends StatefulWidget {
  final String? savedLanguage;

  const DocumentScannerApp({
    super.key,
    required this.savedLanguage,
  });

  @override
  State<DocumentScannerApp>
  createState() =>
      _DocumentScannerAppState();
}

class _DocumentScannerAppState
    extends State<DocumentScannerApp> {
  Locale _locale =
  const Locale('en');

  late bool _languageSelected;

  @override
  void initState() {
    super.initState();

    _languageSelected =
        widget.savedLanguage != null;

    if (widget.savedLanguage != null) {
      _locale = Locale(
        widget.savedLanguage!,
      );
    }
  }

  // ============================================================
  // LANGUAGE PREVIEW
  // ============================================================

  void _previewLanguage(
      Locale locale,
      ) {
    setState(() {
      _locale = locale;
    });
  }

  // ============================================================
  // FIRST LANGUAGE SELECTION
  // ============================================================

  Future<void>
  _finishLanguageSelection(
      Locale locale,
      ) async {
    final prefs =
    await SharedPreferences
        .getInstance();

    await prefs.setString(
      'selected_language',
      locale.languageCode,
    );

    if (!mounted) {
      return;
    }

    setState(() {
      _locale = locale;
      _languageSelected = true;
    });
  }

  // ============================================================
  // CHANGE LANGUAGE
  // ============================================================

  Future<void> _changeLanguage(
      Locale locale,
      ) async {
    final prefs =
    await SharedPreferences
        .getInstance();

    await prefs.setString(
      'selected_language',
      locale.languageCode,
    );

    if (!mounted) {
      return;
    }

    setState(() {
      _locale = locale;
    });
  }

  // ============================================================
  // BUILD APP
  // ============================================================

  @override
  Widget build(
      BuildContext context,
      ) {
    return MaterialApp(
      debugShowCheckedModeBanner:
      false,
      title: 'Document Scanner',
      locale: _locale,
      supportedLocales:
      AppLocalizations
          .supportedLocales,
      localizationsDelegates:
      const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations
            .delegate,
        GlobalWidgetsLocalizations
            .delegate,
        GlobalCupertinoLocalizations
            .delegate,
      ],
      theme: ThemeData(
        useMaterial3: true,
        colorScheme:
        ColorScheme.fromSeed(
          seedColor:
          const Color(
            0xFF1565C0,
          ),
        ),
      ),
      home: _languageSelected
          ? UpgradeAlert(
        upgrader: Upgrader(),
        showIgnore: false,
        showLater: true,
        showReleaseNotes: true,
        child: ScannerHomeScreen(
          currentLocale: _locale,
          onLanguageChanged:
          _changeLanguage,
        ),
      )
          : LanguageSelectionScreen(
        currentLocale: _locale,
        onLanguageChanged:
        _previewLanguage,
        onContinue:
        _finishLanguageSelection,
      ),
    );
  }
}

// ============================================================
// HOME SCREEN
// ============================================================

class ScannerHomeScreen
    extends StatefulWidget {
  final Locale currentLocale;

  final Future<void> Function(
      Locale locale,
      ) onLanguageChanged;

  const ScannerHomeScreen({
    super.key,
    required this.currentLocale,
    required this.onLanguageChanged,
  });

  @override
  State<ScannerHomeScreen>
  createState() =>
      _ScannerHomeScreenState();
}

class _ScannerHomeScreenState
    extends State<ScannerHomeScreen> {
  List<ScannedDocument> _documents =
  [];

  bool _loadingDocuments = true;

  final ImagePicker _imagePicker =
  ImagePicker();

  // 🔍 SEARCH
  final TextEditingController
  _searchController =
  TextEditingController();

  String _searchQuery = '';
  // 🔃 SORT
  String _sortOption = 'newest';

  static const String _sortPreferenceKey =
      'document_sort_option';

  @override
  void initState() {
    super.initState();

    _loadSortPreference();
    _loadDocuments();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _checkAppPrompt();
    });
  }

  @override
  void dispose() {
    _searchController.dispose();

    super.dispose();
  }
  // ============================================================
// SORT DOCUMENTS
// ============================================================

  Future<void> _loadSortPreference() async {
    final prefs =
    await SharedPreferences.getInstance();

    final savedSort =
    prefs.getString(
      _sortPreferenceKey,
    );

    if (!mounted) {
      return;
    }

    setState(() {
      _sortOption =
          savedSort ?? 'newest';
    });
  }

  Future<void> _changeSortOption(
      String value,
      ) async {
    final prefs =
    await SharedPreferences.getInstance();

    await prefs.setString(
      _sortPreferenceKey,
      value,
    );

    if (!mounted) {
      return;
    }

    setState(() {
      _sortOption = value;
    });
  }

  List<ScannedDocument> _sortDocuments(
      List<ScannedDocument> documents,
      ) {
    final sorted =
    List<ScannedDocument>.from(
      documents,
    );

    switch (_sortOption) {
      case 'oldest':
        sorted.sort(
              (a, b) =>
              a.createdAt.compareTo(
                b.createdAt,
              ),
        );
        break;

      case 'az':
        sorted.sort(
              (a, b) =>
              a.name.toLowerCase().compareTo(
                b.name.toLowerCase(),
              ),
        );
        break;

      case 'newest':
      default:
        sorted.sort(
              (a, b) =>
              b.createdAt.compareTo(
                a.createdAt,
              ),
        );
    }

    return sorted;
  }
// ============================================================
// RATE / SHARE APP PROMPT
// ============================================================

  Future<void> _checkAppPrompt() async {
    await AppPromptService.registerLaunch();

    // ⭐ Check rating prompt first.
    final shouldShowRate =
    await AppPromptService
        .shouldShowRatePrompt();

    if (shouldShowRate) {
      if (!mounted) {
        return;
      }

      await Future<void>.delayed(
        const Duration(seconds: 2),
      );

      if (!mounted) {
        return;
      }

      await _showRatePrompt();
      return;
    }

    // 📤 Only check share when
    // rating is not being shown.
    final shouldShowShare =
    await AppPromptService
        .shouldShowSharePrompt();

    if (!shouldShowShare ||
        !mounted) {
      return;
    }

    await Future<void>.delayed(
      const Duration(seconds: 2),
    );

    if (!mounted) {
      return;
    }

    await _showSharePrompt();
  }

// ============================================================
// RATE APP PROMPT
// ============================================================

  Future<void> _showRatePrompt() async {
    await AppPromptService
        .markRatePromptShown();

    if (!mounted) {
      return;
    }

    await showDialog<void>(
      context: context,
      builder: (dialogContext) {
        return AlertDialog(
          icon: const Icon(
            Icons.star_outline,
            size: 34,
          ),
          title: const Text(
            'Enjoying Document Scanner?',
            textAlign: TextAlign.center,
          ),
          content: const Text(
            'If Document Scanner is useful to you, '
                'would you like to rate the app?',
            textAlign: TextAlign.center,
          ),
          actionsAlignment:
          MainAxisAlignment.center,
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(
                  dialogContext,
                );
              },
              child: const Text(
                'Later',
              ),
            ),
            FilledButton.icon(
              onPressed: () async {
                Navigator.pop(
                  dialogContext,
                );

                await _rateApp();
              },
              icon: const Icon(
                Icons.star_outline,
              ),
              label: const Text(
                'Rate App',
              ),
            ),
          ],
        );
      },
    );
  }

// ============================================================
// SHARE APP PROMPT
// ============================================================

  Future<void> _showSharePrompt() async {
    await AppPromptService
        .markSharePromptShown();

    if (!mounted) {
      return;
    }

    await showDialog<void>(
      context: context,
      builder: (dialogContext) {
        return AlertDialog(
          icon: const Icon(
            Icons.share_outlined,
            size: 34,
          ),
          title: const Text(
            'Share Document Scanner',
            textAlign: TextAlign.center,
          ),
          content: const Text(
            'Know someone who could use Document Scanner? '
                'You can share the app with them.',
            textAlign: TextAlign.center,
          ),
          actionsAlignment:
          MainAxisAlignment.center,
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(
                  dialogContext,
                );
              },
              child: const Text(
                'Later',
              ),
            ),
            FilledButton.icon(
              onPressed: () async {
                Navigator.pop(
                  dialogContext,
                );

                await _shareApp();

                // User chose Share App.
                // Never show automatic Share prompt again.
                await AppPromptService.markAsShared();
              },
              icon: const Icon(
                Icons.share_outlined,
              ),
              label: const Text(
                'Share App',
              ),
            ),
          ],
        );
      },
    );
  }

  Future<void> _rateApp() async {
    final inAppReview =
        InAppReview.instance;

    final available =
    await inAppReview.isAvailable();

    if (available) {
      await inAppReview.requestReview();

      // We stop our own automatic rating prompts
      // after the user chooses Rate App.
      await AppPromptService.markAsRated();
    } else {
      await inAppReview.openStoreListing();
    }
  }

  Future<void> _shareApp() async {
    await SharePlus.instance.share(
      ShareParams(
        text:
        'Check out Document Scanner — '
            'scan, organize, and export documents easily.',
      ),
    );
  }
  // ============================================================
  // LOAD DOCUMENTS
  // ============================================================

  Future<void>
  _loadDocuments() async {
    final documents =
    await DocumentStorageService
        .loadDocuments();

    if (!mounted) {
      return;
    }

    setState(() {
      _documents = documents;
      _loadingDocuments = false;
    });
  }

  // ============================================================
  // CAMERA SCANNER
  // ============================================================
  //
  // IMPORTANT:
  // This is our existing working scanner.
  // We are not changing its behavior.
  // ============================================================

  Future<void>
  _scanDocument() async {
    try {
      final result =
      await FlutterDocScanner()
          .getScanDocuments();

      if (result == null) {
        return;
      }

      final imagePaths =
      List<String>.from(
        result,
      );

      if (imagePaths.isEmpty) {
        return;
      }

      if (!mounted) {
        return;
      }

      final saved =
      await Navigator.push<bool>(
        context,
        MaterialPageRoute(
          builder: (_) =>
              ScanReviewScreen(
                imagePaths: imagePaths,
              ),
        ),
      );

      if (saved == true) {
        await _loadDocuments();
      }
    } catch (e) {
      debugPrint(
        'Scanner error: $e',
      );

      if (!mounted) {
        return;
      }

      ScaffoldMessenger.of(context)
          .showSnackBar(
        SnackBar(
          content: Text(
            'Scanner error: $e',
          ),
        ),
      );
    }
  }

  // ============================================================
  // IMPORT FROM PHOTOS
  // ============================================================

  Future<void>
  _importFromPhotos() async {
    try {
      final images =
      await _imagePicker
          .pickMultiImage(
        imageQuality: 100,
      );

      if (images.isEmpty) {
        return;
      }

      final List<String>
      croppedImagePaths = [];

      for (final image in images) {
        final croppedFile =
        await ImageCropper()
            .cropImage(
          sourcePath: image.path,
          compressFormat:
          ImageCompressFormat.jpg,
          compressQuality: 100,
          uiSettings: [
            IOSUiSettings(
              title:
              'Crop Document',
              doneButtonTitle:
              'Done',
              cancelButtonTitle:
              'Cancel',
              resetButtonHidden:
              false,
              rotateButtonsHidden:
              false,
              aspectRatioPickerButtonHidden:
              true,
              aspectRatioLockEnabled:
              false,
            ),
            AndroidUiSettings(
              toolbarTitle:
              'Crop Document',
              lockAspectRatio:
              false,
              hideBottomControls:
              false,
            ),
          ],
        );

        if (croppedFile != null) {
          croppedImagePaths.add(
            croppedFile.path,
          );
        }
      }

      if (croppedImagePaths.isEmpty) {
        return;
      }

      if (!mounted) {
        return;
      }

      final saved =
      await Navigator.push<bool>(
        context,
        MaterialPageRoute(
          builder: (_) =>
              ScanReviewScreen(
                imagePaths:
                croppedImagePaths,
              ),
        ),
      );

      if (saved == true) {
        await _loadDocuments();
      }
    } catch (e) {
      debugPrint(
        'Gallery import error: $e',
      );

      if (!mounted) {
        return;
      }

      ScaffoldMessenger.of(context)
          .showSnackBar(
        SnackBar(
          content: Text(
            'Gallery import error: $e',
          ),
        ),
      );
    }
  }

  // ============================================================
  // DATE
  // ============================================================

  String _formatDate(
      DateTime date,
      ) {
    final month =
    date.month
        .toString()
        .padLeft(
      2,
      '0',
    );

    final day =
    date.day
        .toString()
        .padLeft(
      2,
      '0',
    );

    return '${date.year}-$month-$day';
  }

  // ============================================================
  // SEARCH BAR
  // ============================================================

  Widget _buildSearchBar() {
    return Padding(
      padding: EdgeInsets.zero,
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller:
              _searchController,
              textInputAction:
              TextInputAction.search,
              onChanged: (value) {
                setState(() {
                  _searchQuery =
                      value
                          .trim()
                          .toLowerCase();
                });
              },
              decoration: InputDecoration(
                hintText:
                'Search documents...',
                prefixIcon:
                const Icon(
                  Icons.search,
                ),
                suffixIcon:
                _searchQuery.isNotEmpty
                    ? IconButton(
                  tooltip:
                  'Clear search',
                  icon:
                  const Icon(
                    Icons.close,
                  ),
                  onPressed: () {
                    _searchController
                        .clear();

                    FocusScope.of(
                      context,
                    ).unfocus();

                    setState(() {
                      _searchQuery =
                      '';
                    });
                  },
                )
                    : null,
                filled: true,
                fillColor:
                Theme.of(context)
                    .colorScheme
                    .surfaceContainerLowest,
                border:
                OutlineInputBorder(
                  borderRadius:
                  BorderRadius.circular(
                    16,
                  ),
                ),
                enabledBorder:
                OutlineInputBorder(
                  borderRadius:
                  BorderRadius.circular(
                    16,
                  ),
                  borderSide:
                  BorderSide(
                    color:
                    Colors.grey.shade300,
                  ),
                ),
              ),
            ),
          ),

          const SizedBox(width: 10),

          PopupMenuButton<String>(
            tooltip: 'Sort documents',
            initialValue: _sortOption,
            onSelected:
            _changeSortOption,
            itemBuilder: (context) => [
              const PopupMenuItem<String>(
                value: 'newest',
                child: Row(
                  children: [
                    Icon(
                      Icons
                          .arrow_downward_outlined,
                    ),
                    SizedBox(width: 12),
                    Text('Newest first'),
                  ],
                ),
              ),
              const PopupMenuItem<String>(
                value: 'oldest',
                child: Row(
                  children: [
                    Icon(
                      Icons
                          .arrow_upward_outlined,
                    ),
                    SizedBox(width: 12),
                    Text('Oldest first'),
                  ],
                ),
              ),
              const PopupMenuItem<String>(
                value: 'az',
                child: Row(
                  children: [
                    Icon(
                      Icons.sort_by_alpha,
                    ),
                    SizedBox(width: 12),
                    Text('A–Z'),
                  ],
                ),
              ),
            ],
            child: Container(
              width: 56,
              height: 56,
              decoration: BoxDecoration(
                color: Theme.of(context)
                    .colorScheme
                    .primaryContainer,
                borderRadius:
                BorderRadius.circular(
                  16,
                ),
              ),
              child: Icon(
                Icons.sort,
                color: Theme.of(context)
                    .colorScheme
                    .primary,
              ),
            ),
          ),
        ],
      ),
    );
  }

  // ============================================================
  // DOCUMENT LIST
  // ============================================================

  Widget _buildDocumentsSection(
      BuildContext context,
      AppLocalizations l10n,
      ) {
    if (_loadingDocuments) {
      return const Expanded(
        child: Center(
          child:
          CircularProgressIndicator(),
        ),
      );
    }

    // ----------------------------------------------------------
    // NO SAVED DOCUMENTS
    // ----------------------------------------------------------

    if (_documents.isEmpty) {
      return Expanded(
        child: Center(
          child: Text(
            l10n.noDocuments,
            textAlign:
            TextAlign.center,
            style: TextStyle(
              color:
              Colors.grey.shade500,
            ),
          ),
        ),
      );
    }

    // ----------------------------------------------------------
    // FILTER DOCUMENTS USING SEARCH TEXT
    // ----------------------------------------------------------

    final filteredDocuments =
    _searchQuery.isEmpty
        ? _documents
        : _documents.where(
          (document) {
        return document.name
            .toLowerCase()
            .contains(
          _searchQuery,
        );
      },
    ).toList();
    final displayedDocuments =
    _sortDocuments(
      filteredDocuments,
    );
    // ----------------------------------------------------------
    // SEARCH FOUND NOTHING
    // ----------------------------------------------------------

    if (filteredDocuments.isEmpty) {
      return Expanded(
        child: Center(
          child: Padding(
            padding:
            const EdgeInsets.all(
              24,
            ),
            child: Column(
              mainAxisSize:
              MainAxisSize.min,
              children: [
                Icon(
                  Icons.search_off,
                  size: 48,
                  color:
                  Colors.grey.shade400,
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  'No matching documents.',
                  textAlign:
                  TextAlign.center,
                  style: TextStyle(
                    color:
                    Colors.grey.shade600,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }

    // ----------------------------------------------------------
    // DOCUMENT LIST
    // ----------------------------------------------------------

    return Expanded(
      child: ListView.separated(
        padding:
        const EdgeInsets.only(
          top: 20,
          bottom: 20,
        ),
        itemCount:
        displayedDocuments.length,
        separatorBuilder:
            (_, _) =>
        const SizedBox(
          height: 12,
        ),
        itemBuilder:
            (context, index) {
              final document =
              displayedDocuments[index];

              return Card(
                elevation: 0,
                margin: EdgeInsets.zero,
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    18,
                  ),
                  side: BorderSide(
                    color: Theme.of(context)
                        .colorScheme
                        .outlineVariant
                        .withValues(
                      alpha: 0.7,
                    ),
                  ),
                ),
                child: InkWell(
                  onTap: () async {
                    await Navigator.push<bool>(
                      context,
                      MaterialPageRoute(
                        builder: (_) =>
                            DocumentDetailScreen(
                              document: document,
                            ),
                      ),
                    );

                    // Reload in case the document
                    // was renamed, edited or deleted.
                    await _loadDocuments();
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(
                      12,
                    ),
                    child: Row(
                      children: [
                        // ================================================
                        // DOCUMENT THUMBNAIL
                        // ================================================

                        Container(
                          width: 72,
                          height: 88,
                          decoration: BoxDecoration(
                            color: Theme.of(context)
                                .colorScheme
                                .surfaceContainerHighest,
                            borderRadius:
                            BorderRadius.circular(
                              12,
                            ),
                            border: Border.all(
                              color: Theme.of(context)
                                  .colorScheme
                                  .outlineVariant,
                            ),
                          ),
                          clipBehavior: Clip.antiAlias,
                          child: document
                              .pagePaths
                              .isNotEmpty
                              ? Image.file(
                            File(
                              document
                                  .pagePaths
                                  .first,
                            ),
                            fit: BoxFit.cover,
                            errorBuilder:
                                (
                                _,
                                _,
                                _,
                                ) {
                              return Icon(
                                Icons
                                    .description_outlined,
                                size: 34,
                                color:
                                Theme.of(context)
                                    .colorScheme
                                    .primary,
                              );
                            },
                          )
                              : Icon(
                            Icons
                                .description_outlined,
                            size: 34,
                            color:
                            Theme.of(context)
                                .colorScheme
                                .primary,
                          ),
                        ),

                        const SizedBox(width: 16),

                        // ================================================
                        // DOCUMENT INFORMATION
                        // ================================================

                        Expanded(
                          child: Column(
                            crossAxisAlignment:
                            CrossAxisAlignment.start,
                            children: [
                              Text(
                                document.name,
                                maxLines: 2,
                                overflow:
                                TextOverflow.ellipsis,
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight:
                                  FontWeight.w700,
                                ),
                              ),

                              const SizedBox(
                                height: 10,
                              ),

                              Row(
                                children: [
                                  Icon(
                                    Icons
                                        .description_outlined,
                                    size: 17,
                                    color:
                                    Colors.grey.shade600,
                                  ),

                                  const SizedBox(
                                    width: 5,
                                  ),

                                  Flexible(
                                    child: Text(
                                      l10n.pageCount(
                                        document.pageCount,
                                      ),
                                      maxLines: 1,
                                      overflow:
                                      TextOverflow
                                          .ellipsis,
                                      style: TextStyle(
                                        fontSize: 13,
                                        color: Colors
                                            .grey.shade600,
                                      ),
                                    ),
                                  ),
                                ],
                              ),

                              const SizedBox(
                                height: 6,
                              ),

                              Row(
                                children: [
                                  Icon(
                                    Icons
                                        .calendar_today_outlined,
                                    size: 16,
                                    color:
                                    Colors.grey.shade600,
                                  ),

                                  const SizedBox(
                                    width: 6,
                                  ),

                                  Text(
                                    _formatDate(
                                      document.createdAt,
                                    ),
                                    style: TextStyle(
                                      fontSize: 13,
                                      color:
                                      Colors.grey.shade600,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(width: 10),

                        // ================================================
                        // OPEN BUTTON
                        // ================================================

                        Container(
                          width: 38,
                          height: 38,
                          decoration: BoxDecoration(
                            color: Theme.of(context)
                                .colorScheme
                                .primaryContainer,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.chevron_right,
                            color: Theme.of(context)
                                .colorScheme
                                .primary,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
        },
      ),
    );
  }

  // ============================================================
  // UI
  // ============================================================

  @override
  Widget build(
      BuildContext context,
      ) {
    final l10n =
    AppLocalizations.of(
      context,
    )!;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          l10n.appName,
          style:
          const TextStyle(
            fontWeight:
            FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            tooltip:
            l10n.settings,
            icon:
            const Icon(
              Icons.settings_outlined,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) =>
                      SettingsScreen(
                        currentLocale:
                        widget
                            .currentLocale,
                        onLanguageChanged:
                        widget
                            .onLanguageChanged,
                      ),
                ),
              );
            },
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding:
          const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),

              // ==================================================
              // TITLE
              // ==================================================

              Text(
                l10n.scanDocuments,
                textAlign:
                TextAlign.center,
                style:
                const TextStyle(
                  fontSize: 26,
                  fontWeight:
                  FontWeight.bold,
                ),
              ),

              const SizedBox(
                height: 8,
              ),

              Text(
                l10n.scanDescription,
                textAlign:
                TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  color:
                  Colors.grey.shade600,
                ),
              ),

              const SizedBox(
                height: 20,
              ),

              // ==================================================
              // CAMERA SCANNER
              // ==================================================

              SizedBox(
                width:
                double.infinity,
                height: 56,
                child:
                FilledButton.icon(
                  onPressed:
                  _scanDocument,
                  icon:
                  const Icon(
                    Icons
                        .camera_alt_outlined,
                  ),
                  label: Text(
                    l10n.scanDocument,
                    style:
                    const TextStyle(
                      fontSize: 17,
                      fontWeight:
                      FontWeight.w600,
                    ),
                  ),
                ),
              ),

              const SizedBox(
                height: 12,
              ),

              // ==================================================
              // GALLERY IMPORT
              // ==================================================

              SizedBox(
                width:
                double.infinity,
                height: 56,
                child:
                OutlinedButton.icon(
                  onPressed:
                  _importFromPhotos,
                  icon:
                  const Icon(
                    Icons
                        .photo_library_outlined,
                  ),
                  label: Text(
                    l10n
                        .importFromPhotos,
                    style:
                    const TextStyle(
                      fontSize: 17,
                      fontWeight:
                      FontWeight.w600,
                    ),
                  ),
                ),
              ),

              // ==================================================
              // SEARCH
              // ==================================================

          const SizedBox(
            height: 22,
          ),

          Row(
            children: [
              Text(
                'My Documents',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Theme.of(context)
                      .colorScheme
                      .onSurface,
                ),
              ),
            ],
          ),

          const SizedBox(
            height: 10,
          ),

          _buildSearchBar(),

              // ==================================================
              // SAVED DOCUMENTS
              // ==================================================

              _buildDocumentsSection(
                context,
                l10n,
              ),
            ],
          ),
        ),
      ),
    );
  }
}