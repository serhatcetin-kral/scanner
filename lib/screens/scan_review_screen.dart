import 'dart:io';

import 'package:flutter/material.dart';

import '../l10n/app_localizations.dart';

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

  @override
  void initState() {
    super.initState();

    _imagePaths = List<String>.from(
      widget.imagePaths,
    );
  }

  void _deleteCurrentPage() {
    if (_imagePaths.isEmpty) return;

    setState(() {
      _imagePaths.removeAt(_currentPage);

      if (_currentPage >= _imagePaths.length &&
          _currentPage > 0) {
        _currentPage--;
      }
    });

    if (_imagePaths.isEmpty) {
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          l10n.reviewScan,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            tooltip: l10n.deletePage,
            onPressed: _deleteCurrentPage,
            icon: const Icon(
              Icons.delete_outline,
            ),
          ),
        ],
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
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(16),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius:
                      BorderRadius.circular(16),
                    ),
                    child: ClipRRect(
                      borderRadius:
                      BorderRadius.circular(16),
                      child: InteractiveViewer(
                        minScale: 1,
                        maxScale: 4,
                        child: Center(
                          child: Image.file(
                            File(_imagePaths[index]),
                            fit: BoxFit.contain,
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
            padding: const EdgeInsets.fromLTRB(
              20,
              8,
              20,
              20,
            ),
            child: Column(
              children: [
                Text(
                  '${l10n.page} ${_currentPage + 1} / ${_imagePaths.length}',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                const SizedBox(height: 16),

                SizedBox(
                  width: double.infinity,
                  height: 56,
                  child: FilledButton.icon(
                    onPressed: () {
                      // Permanent saving comes next.
                    },
                    icon: const Icon(
                      Icons.save_outlined,
                    ),
                    label: Text(
                      l10n.saveDocument,
                      style: const TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
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