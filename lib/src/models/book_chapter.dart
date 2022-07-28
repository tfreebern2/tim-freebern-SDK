class BookChapter {
  final String id;
  final String chapterName;

  BookChapter({required this.id, required this.chapterName});

  BookChapter.fromJson(Map<String, dynamic> json)
      : id = json['_id'] ?? "",
        chapterName = json['chapterName'] ?? "";

  @override
  String toString() {
    return '$id $chapterName';
  }
}
