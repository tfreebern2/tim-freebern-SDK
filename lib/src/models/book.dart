class Book {
  final String id;
  final String name;

  Book({required this.id, required this.name});

  Book.fromJson(Map<String, dynamic> json)
      : id = json['_id'] ?? "",
        name = json['name'] ?? "";

  @override
  String toString() {
    return '$id $name';
  }
}
