class QuoteContext {
  final String character;
  final String dialog;
  final String movie;

  QuoteContext(
      {required this.character, required this.dialog, required this.movie});

  @override
  String toString() {
    return '$character | $dialog | $movie';
  }
}
