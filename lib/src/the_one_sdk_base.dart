import 'package:the_one_sdk/src/models/character.dart';
import 'package:the_one_sdk/src/models/quote_context.dart';
import 'package:the_one_sdk/src/models/movie_quote.dart';

import 'api/api.dart';
import 'models/book.dart';
import 'models/book_chapter.dart';
import 'models/movie.dart';
import 'models/quote.dart';

class TheOne {
  final String baseUrl;
  final String apiKey;
  final _api = Api();

  TheOne(
      {this.baseUrl = 'https://the-one-api.dev/v2',
      this.apiKey = 'yourApiKey'});

  Future<List<Book>> getBooks() async {
    final headers = _api.getJSONHeaders(apiKey);
    final response = await _api.get(baseUrl + '/book', headers) as List;
    return response.map((book) => Book.fromJson(book)).toList();
  }

  Future<Book> getBookById(String id) async {
    final headers = _api.getJSONHeaders(apiKey);
    final response = await _api.get(baseUrl + '/book/' + id, headers) as List;
    return Book.fromJson(response[0]);
  }

  Future<List<BookChapter>> getChaptersByBookId(String id) async {
    final headers = _api.getJSONHeaders(apiKey);
    final response =
        await _api.get(baseUrl + '/book/' + id + '/chapter', headers) as List;
    return response.map((chapter) => BookChapter.fromJson(chapter)).toList();
  }

  Future<List<Movie>> getMovies() async {
    final headers = _api.getJSONHeaders(apiKey);
    final response = await _api.get(baseUrl + '/movie', headers) as List;
    return response.map((movie) => Movie.fromJson(movie)).toList();
  }

  Future<Movie> getMovieById(String id) async {
    final headers = _api.getJSONHeaders(apiKey);
    final response = await _api.get(baseUrl + '/movie/' + id, headers) as List;
    return Movie.fromJson(response[0]);
  }

  Future<List<MovieQuote>> getQuotesByMovieId(String id) async {
    final headers = _api.getJSONHeaders(apiKey);
    final response =
        await _api.get(baseUrl + '/movie/' + id + '/quote', headers) as List;
    return response.map((quote) => MovieQuote.fromJson(quote)).toList();
  }

  Future<List<Character>> getCharacters() async {
    final headers = _api.getJSONHeaders(apiKey);
    final response = await _api.get(baseUrl + '/character', headers) as List;
    return response.map((character) => Character.fromJson(character)).toList();
  }

  Future<Character> getCharacterById(String id) async {
    final headers = _api.getJSONHeaders(apiKey);
    final response =
        await _api.get(baseUrl + '/character/' + id, headers) as List;
    return Character.fromJson(response[0]);
  }

  Future<List<Quote>> getQuotesByCharacterId(String characterId) async {
    final headers = _api.getJSONHeaders(apiKey);
    final response = await _api.get(
        baseUrl + '/character/' + characterId + '/quote', headers) as List;
    return response.map((quote) => Quote.fromJson(quote)).toList();
  }

  Future<List<Quote>> getQuotes() async {
    final headers = _api.getJSONHeaders(apiKey);
    final response = await _api.get(baseUrl + '/quote', headers) as List;
    return response.map((quote) => Quote.fromJson(quote)).toList();
  }

  Future<Quote> getQuoteById(String id) async {
    final headers = _api.getJSONHeaders(apiKey);
    final response = await _api.get(baseUrl + '/quote/' + id, headers) as List;
    return Quote.fromJson(response[0]);
  }

  Future<QuoteContext> getQuoteContextByQuoteId(String quoteId) async {
    final quote = await getQuoteById(quoteId);
    final movie = await getMovieById(quote.movieId);
    final character = await getCharacterById(quote.characterId);
    return QuoteContext(
        movie: movie.name, character: character.name, dialog: quote.dialog);
  }
}
