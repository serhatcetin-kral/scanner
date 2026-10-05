class ScannedDocument {
  final String id;
  final String name;
  final DateTime createdAt;
  final List<String> pagePaths;

  const ScannedDocument({
    required this.id,
    required this.name,
    required this.createdAt,
    required this.pagePaths,
  });

  int get pageCount => pagePaths.length;

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'createdAt': createdAt.toIso8601String(),
      'pagePaths': pagePaths,
    };
  }

  factory ScannedDocument.fromJson(
      Map<String, dynamic> json,
      ) {
    return ScannedDocument(
      id: json['id'] as String,
      name: json['name'] as String,
      createdAt: DateTime.parse(
        json['createdAt'] as String,
      ),
      pagePaths: List<String>.from(
        json['pagePaths'] as List,
      ),
    );
  }
}