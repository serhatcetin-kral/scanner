import 'dart:convert';
import 'dart:io';

import 'package:path_provider/path_provider.dart';

import '../models/scanned_document.dart';

class DocumentStorageService {
  static const String _documentsFolderName = 'scanned_documents';
  static const String _metadataFileName = 'documents.json';

  // ============================================================
  // RENAME DOCUMENT
  // ============================================================

  static Future<ScannedDocument> renameDocument({
    required ScannedDocument document,
    required String newName,
  }) async {
    final documents = await loadDocuments();

    final index = documents.indexWhere(
          (item) => item.id == document.id,
    );

    if (index == -1) {
      throw Exception('Document not found.');
    }

    final renamedDocument = ScannedDocument(
      id: document.id,
      name: newName.trim(),
      createdAt: document.createdAt,
      pagePaths: document.pagePaths,
    );

    documents[index] = renamedDocument;

    await _saveMetadata(documents);

    return renamedDocument;
  }

  // ============================================================
  // DELETE DOCUMENT
  // ============================================================

  static Future<void> deleteDocument(
      ScannedDocument document,
      ) async {
    final documents = await loadDocuments();

    documents.removeWhere(
          (item) => item.id == document.id,
    );

    final documentsDirectory =
    await _getDocumentsFolder();

    final documentDirectory = Directory(
      '${documentsDirectory.path}/${document.id}',
    );

    if (await documentDirectory.exists()) {
      await documentDirectory.delete(
        recursive: true,
      );
    }

    await _saveMetadata(documents);
  }

  // ============================================================
  // DOCUMENTS FOLDER
  // ============================================================

  static Future<Directory> _getDocumentsFolder() async {
    final appDirectory =
    await getApplicationDocumentsDirectory();

    final documentsDirectory = Directory(
      '${appDirectory.path}/$_documentsFolderName',
    );

    if (!await documentsDirectory.exists()) {
      await documentsDirectory.create(
        recursive: true,
      );
    }

    return documentsDirectory;
  }

  // ============================================================
  // METADATA FILE
  // ============================================================

  static Future<File> _getMetadataFile() async {
    final directory = await _getDocumentsFolder();

    return File(
      '${directory.path}/$_metadataFileName',
    );
  }

  // ============================================================
  // LOAD DOCUMENTS
  // ============================================================

  static Future<List<ScannedDocument>>
  loadDocuments() async {
    try {
      final file = await _getMetadataFile();

      if (!await file.exists()) {
        return [];
      }

      final contents = await file.readAsString();

      if (contents.trim().isEmpty) {
        return [];
      }

      final List<dynamic> jsonList =
      jsonDecode(contents) as List<dynamic>;

      final documentsDirectory =
      await _getDocumentsFolder();

      final documents = <ScannedDocument>[];

      for (final item in jsonList) {
        final json =
        Map<String, dynamic>.from(item as Map);

        final id = json['id'] as String;
        final name = json['name'] as String;
        final createdAt = DateTime.parse(
          json['createdAt'] as String,
        );

        final storedPaths =
        List<String>.from(
          json['pagePaths'] as List,
        );

        final resolvedPaths = <String>[];

        for (final storedPath in storedPaths) {
          String resolvedPath;

          // ----------------------------------------------------
          // NEW FORMAT:
          // documentId/page_1.png
          // ----------------------------------------------------

          if (!_isAbsolutePath(storedPath)) {
            resolvedPath =
            '${documentsDirectory.path}/$storedPath';
          } else {
            // --------------------------------------------------
            // OLD FORMAT MIGRATION
            //
            // Older versions stored the full iOS sandbox path.
            // We rebuild the path using the current container.
            // --------------------------------------------------

            final fileName =
                storedPath
                    .replaceAll('\\', '/')
                    .split('/')
                    .last;

            resolvedPath =
            '${documentsDirectory.path}/'
                '$id/$fileName';
          }

          resolvedPaths.add(resolvedPath);
        }

        documents.add(
          ScannedDocument(
            id: id,
            name: name,
            createdAt: createdAt,
            pagePaths: resolvedPaths,
          ),
        );
      }

      documents.sort(
            (a, b) =>
            b.createdAt.compareTo(a.createdAt),
      );

      return documents;
    } catch (e) {
      return [];
    }
  }

  // ============================================================
  // SAVE NEW DOCUMENT
  // ============================================================

  static Future<ScannedDocument> saveDocument({
    required String name,
    required List<String> sourceImagePaths,
  }) async {
    if (sourceImagePaths.isEmpty) {
      throw ArgumentError(
        'A document must contain at least one page.',
      );
    }

    final documentsDirectory =
    await _getDocumentsFolder();

    final now = DateTime.now();

    final documentId =
    now.microsecondsSinceEpoch.toString();

    final documentDirectory = Directory(
      '${documentsDirectory.path}/$documentId',
    );

    await documentDirectory.create(
      recursive: true,
    );

    final savedPagePaths = <String>[];

    try {
      for (int i = 0;
      i < sourceImagePaths.length;
      i++) {
        final sourceFile =
        File(sourceImagePaths[i]);

        if (!await sourceFile.exists()) {
          throw FileSystemException(
            'Scanned page does not exist.',
            sourceImagePaths[i],
          );
        }

        final extension =
        _getFileExtension(sourceFile.path);

        final destinationPath =
            '${documentDirectory.path}/'
            'page_${i + 1}$extension';

        final savedFile =
        await sourceFile.copy(
          destinationPath,
        );

        savedPagePaths.add(savedFile.path);
      }

      final document = ScannedDocument(
        id: documentId,
        name: name.trim(),
        createdAt: now,
        pagePaths: savedPagePaths,
      );

      final documents =
      await loadDocuments();

      documents.insert(0, document);

      await _saveMetadata(documents);

      return document;
    } catch (e) {
      if (await documentDirectory.exists()) {
        await documentDirectory.delete(
          recursive: true,
        );
      }

      rethrow;
    }
  }

  // ============================================================
  // UPDATE EXISTING DOCUMENT PAGES
  // ============================================================

  static Future<ScannedDocument>
  updateDocumentPages({
    required ScannedDocument document,
    required List<String> sourceImagePaths,
  }) async {
    if (sourceImagePaths.isEmpty) {
      throw ArgumentError(
        'A document must contain at least one page.',
      );
    }

    final documents =
    await loadDocuments();

    final documentIndex =
    documents.indexWhere(
          (item) => item.id == document.id,
    );

    if (documentIndex == -1) {
      throw Exception(
        'Document not found.',
      );
    }

    final documentsDirectory =
    await _getDocumentsFolder();

    final documentDirectory = Directory(
      '${documentsDirectory.path}/${document.id}',
    );

    final tempDirectory = Directory(
      '${documentsDirectory.path}/'
          '${document.id}_editing',
    );

    if (await tempDirectory.exists()) {
      await tempDirectory.delete(
        recursive: true,
      );
    }

    await tempDirectory.create(
      recursive: true,
    );

    final tempPagePaths = <String>[];

    try {
      // --------------------------------------------------------
      // FIRST COPY EVERYTHING TO TEMP
      // --------------------------------------------------------

      for (int i = 0;
      i < sourceImagePaths.length;
      i++) {
        final sourcePath =
        sourceImagePaths[i];

        final sourceFile =
        File(sourcePath);

        if (!await sourceFile.exists()) {
          throw FileSystemException(
            'Document page does not exist.',
            sourcePath,
          );
        }

        final extension =
        _getFileExtension(sourcePath);

        final tempPath =
            '${tempDirectory.path}/'
            'page_${i + 1}$extension';

        final copiedFile =
        await sourceFile.copy(tempPath);

        tempPagePaths.add(
          copiedFile.path,
        );
      }

      // --------------------------------------------------------
      // REPLACE OLD DOCUMENT DIRECTORY
      // --------------------------------------------------------

      if (await documentDirectory.exists()) {
        await documentDirectory.delete(
          recursive: true,
        );
      }

      await documentDirectory.create(
        recursive: true,
      );

      final finalPagePaths = <String>[];

      for (int i = 0;
      i < tempPagePaths.length;
      i++) {
        final tempFile =
        File(tempPagePaths[i]);

        final extension =
        _getFileExtension(
          tempFile.path,
        );

        final finalPath =
            '${documentDirectory.path}/'
            'page_${i + 1}$extension';

        final finalFile =
        await tempFile.copy(
          finalPath,
        );

        finalPagePaths.add(
          finalFile.path,
        );
      }

      final updatedDocument =
      ScannedDocument(
        id: document.id,
        name: document.name,
        createdAt: document.createdAt,
        pagePaths: finalPagePaths,
      );

      documents[documentIndex] =
          updatedDocument;

      await _saveMetadata(
        documents,
      );

      if (await tempDirectory.exists()) {
        await tempDirectory.delete(
          recursive: true,
        );
      }

      return updatedDocument;
    } catch (e) {
      if (await tempDirectory.exists()) {
        await tempDirectory.delete(
          recursive: true,
        );
      }

      rethrow;
    }
  }

  // ============================================================
  // SAVE METADATA
  // ============================================================

  static Future<void> _saveMetadata(
      List<ScannedDocument> documents,
      ) async {
    final file =
    await _getMetadataFile();

    final documentsDirectory =
    await _getDocumentsFolder();

    final jsonList =
    <Map<String, dynamic>>[];

    for (final document in documents) {
      final relativePaths =
      <String>[];

      for (final absolutePath
      in document.pagePaths) {
        final fileName =
            absolutePath
                .replaceAll('\\', '/')
                .split('/')
                .last;

        relativePaths.add(
          '${document.id}/$fileName',
        );
      }

      jsonList.add({
        'id': document.id,
        'name': document.name,
        'createdAt':
        document.createdAt.toIso8601String(),
        'pagePaths': relativePaths,
      });
    }

    await file.writeAsString(
      jsonEncode(jsonList),
      flush: true,
    );

    // Keeps analyzer happy and makes it clear
    // that metadata lives under this directory.
    assert(
    file.path.startsWith(
      documentsDirectory.path,
    ),
    );
  }

  // ============================================================
  // PATH HELPERS
  // ============================================================

  static bool _isAbsolutePath(
      String path,
      ) {
    return path.startsWith('/') ||
        RegExp(r'^[A-Za-z]:[\\/]').hasMatch(path);
  }

  static String _getFileExtension(
      String path,
      ) {
    final normalized =
    path.replaceAll('\\', '/');

    final fileName =
        normalized.split('/').last;

    final dotIndex =
    fileName.lastIndexOf('.');

    if (dotIndex == -1) {
      return '.png';
    }

    return fileName.substring(dotIndex);
  }
}