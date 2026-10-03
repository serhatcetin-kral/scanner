import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'l10n/app_localizations.dart';
import 'screens/language_selection_screen.dart';
import 'screens/settings_screen.dart';
import 'package:flutter_doc_scanner/flutter_doc_scanner.dart';
import 'screens/scan_review_screen.dart';
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final prefs = await SharedPreferences.getInstance();
  final savedLanguage = prefs.getString('selected_language');

  runApp(
    DocumentScannerApp(
      savedLanguage: savedLanguage,
    ),
  );
}

class DocumentScannerApp extends StatefulWidget {
  final String? savedLanguage;

  const DocumentScannerApp({
    super.key,
    required this.savedLanguage,
  });

  @override
  State<DocumentScannerApp> createState() =>
      _DocumentScannerAppState();
}

class _DocumentScannerAppState extends State<DocumentScannerApp> {
  Locale _locale = const Locale('en');
  late bool _languageSelected;


  Future<void> _changeLanguage(Locale locale) async {
    final prefs = await SharedPreferences.getInstance();

    await prefs.setString(
      'selected_language',
      locale.languageCode,
    );

    if (!mounted) return;

    setState(() {
      _locale = locale;
    });
  }

  @override
  void initState() {
    super.initState();

    _languageSelected = widget.savedLanguage != null;

    if (widget.savedLanguage != null) {
      _locale = Locale(widget.savedLanguage!);
    }
  }

  // Changes the language immediately.
  // This does NOT save the selection yet.
  void _previewLanguage(Locale locale) {
    setState(() {
      _locale = locale;
    });
  }

  // Saves the selected language and enters the app.
  Future<void> _finishLanguageSelection(Locale locale) async {
    final prefs = await SharedPreferences.getInstance();

    await prefs.setString(
      'selected_language',
      locale.languageCode,
    );

    if (!mounted) return;

    setState(() {
      _locale = locale;
      _languageSelected = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Document Scanner',

      locale: _locale,

      supportedLocales: AppLocalizations.supportedLocales,

      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],

      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF1565C0),
        ),
      ),

      home: _languageSelected
          ? ScannerHomeScreen(
        currentLocale: _locale,
        onLanguageChanged: _changeLanguage,
      )
          : LanguageSelectionScreen(
        currentLocale: _locale,
        onLanguageChanged: _previewLanguage,
        onContinue: _finishLanguageSelection,
      ),
    );
  }
}

class ScannerHomeScreen extends StatelessWidget {
  final Locale currentLocale;
  final Future<void> Function(Locale locale) onLanguageChanged;

  const ScannerHomeScreen({
    super.key,
    required this.currentLocale,
    required this.onLanguageChanged,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          l10n.appName,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            tooltip: l10n.settings,
            icon: const Icon(Icons.settings_outlined),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => SettingsScreen(
                    currentLocale: currentLocale,
                    onLanguageChanged: onLanguageChanged,
                  ),
                ),
              );
            },
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const SizedBox(height: 30),

              Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  color: Theme.of(context)
                      .colorScheme
                      .primaryContainer,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Icon(
                  Icons.document_scanner_outlined,
                  size: 65,
                  color: Theme.of(context)
                      .colorScheme
                      .primary,
                ),
              ),

              const SizedBox(height: 30),

              Text(
                l10n.scanDocuments,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 10),

              Text(
                l10n.scanDescription,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey.shade600,
                ),
              ),

              const SizedBox(height: 40),

              SizedBox(
                width: double.infinity,
                height: 58,
                child: FilledButton.icon(
                  onPressed: () async {
                    try {
                      final result =
                      await FlutterDocScanner().getScanDocuments();

                      if (result == null) {
                        return;
                      }

                      final imagePaths = List<String>.from(result);

                      if (imagePaths.isEmpty) {
                        return;
                      }

                      if (!context.mounted) {
                        return;
                      }

                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => ScanReviewScreen(
                            imagePaths: imagePaths,
                          ),
                        ),
                      );
                    } catch (e) {
                      debugPrint('Scanner error: $e');

                      if (!context.mounted) return;

                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            'Scanner error: $e',
                          ),
                        ),
                      );
                    }
                  },
                  icon: const Icon(
                    Icons.camera_alt_outlined,
                  ),
                  label: Text(
                    l10n.scanDocument,
                    style: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 16),

              SizedBox(
                width: double.infinity,
                height: 58,
                child: OutlinedButton.icon(
                  onPressed: () {
                    // Photo import will be added later.
                  },
                  icon: const Icon(
                    Icons.photo_library_outlined,
                  ),
                  label: Text(
                    l10n.importFromPhotos,
                    style: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),

              const Spacer(),

              Text(
                l10n.emptyDocuments,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey.shade500,
                ),
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}