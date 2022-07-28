import 'package:the_one_sdk/the_one_sdk.dart';

void main() async {
  final theOne = TheOne(apiKey: 'myApiKey');

  // Book Helper Methods
  final books = await theOne.getBooks();
  final book = await theOne.getBookById('5cf5805fb53e011a64671582');
  final bookChapters =
      await theOne.getChaptersByBookId('5cf5805fb53e011a64671582');

  // Move Helper Methods
  final movies = await theOne.getMovies();
  final movie = await theOne.getMovieById('5cd95395de30eff6ebccde56');
  final movieQuotes =
      await theOne.getQuotesByMovieId('5cd95395de30eff6ebccde5c');

  // Character Helper Methods
  final characters = await theOne.getCharacters();
  final character = await theOne.getCharacterById('5cd99d4bde30eff6ebccfbbe');
  final characterQuotes =
      await theOne.getQuotesByCharacterId('5cd99d4bde30eff6ebccfe2e');

  // Quote Helper Methods
  final quotes = await theOne.getQuotes();
  final quote = await theOne.getQuoteById('5cd96e05de30eff6ebcce7e9');

  // Quote Context
  final quoteContext =
      await theOne.getQuoteContextByQuoteId('5cd96e05de30eff6ebcce7e9');
}
