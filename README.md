# The One API - Dart Plugin

The One Dart SDK makes it easy to add API integration with the The One API https://the-one-api.dev/
to your Flutter or Dart application.

## Features

All of The One API calls are available in this Dart plugin except for the Chapter endpoints.

One additional feature is the ability to retrieve the context of a quote and retrieve the Movie/Book
name, Character Name, and Dialog all in one easy to use helper method.

## Getting started

You will need to visit https://the-one-api.dev/ to setup an account and receive an Access Token.

You can view The One API documentation here: https://the-one-api.dev/documentation

To add the plugin declare the `the_one_sdk` in your `pubspec.yaml` and run `flutter pub get`
or `dart pub get`.

```yaml
dependencies:
  flutter:
    sdk: flutter
  the_one_sdk: 0.0.1
```

## Usage

You will need to instantiate `TheOne` class with the API key you received by creating an account.
You can then access all helper methods and data models from within your Dart or Flutter application.

```dart

final theOne = TheOne(apiKey: 'yourApiKey');

// Book Helper Methods
final books = await
theOne.getBooks();

final book = await
theOne.getBookById('
5cf5805fb53e011a64671582
'
);

final bookChapters =
    await
theOne.getChaptersByBookId('
5cf5805fb53e011a64671582
'
);

// Move Helper Methods
final movies = await
theOne.getMovies();

final movie = await
theOne.getMovieById('
5cd95395de30eff6ebccde56
'
);

final movieQuotes =
    await
theOne.getQuotesByMovieId('
5cd95395de30eff6ebccde5c
'
);

// Character Helper Methods
final characters = await
theOne.getCharacters();

final character = await
theOne.getCharacterById('
5cd99d4bde30eff6ebccfbbe
'
);

final characterQuotes =
    await
theOne.getQuotesByCharacterId('
5cd99d4bde30eff6ebccfe2e
'
);

// Quote Helper Methods
final quotes = await
theOne.getQuotes();

final quote = await
theOne.getQuoteById('
5cd96e05de30eff6ebcce7e9
'
);

// Quote Context
final quoteContext =
    await
theOne.getQuoteContextByQuoteId('
5cd96e05de30eff6ebcce7e9
'
);
```
