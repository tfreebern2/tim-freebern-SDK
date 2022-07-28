import 'package:test/test.dart';
import 'package:the_one_sdk/src/models/movie_quote.dart';

void main() {
  group('Test Movie Data Model', () {
    test('fromJson', () {
      final json = [
        {
          "_id": "5cd96e05de30eff6ebcced60",
          "dialog": "",
          "movie": "5cd95395de30eff6ebccde5c",
          "character": "5cd99d4bde30eff6ebccfbe6",
          "id": "5cd96e05de30eff6ebcced60"
        },
        {
          "_id": "5cd96e05de30eff6ebcced61",
          "dialog": "Who is she? This woman you sing of?",
          "movie": "5cd95395de30eff6ebccde5c",
          "character": "5cd99d4bde30eff6ebccfc15",
          "id": "5cd96e05de30eff6ebcced61"
        },
        {
          "_id": "5cd96e05de30eff6ebcced62",
          "dialog": "Tis the Lady of L'thien. The Elf Maiden who gave her love to Beren ... a mortal.",
          "movie": "5cd95395de30eff6ebccde5c",
          "character": "5cd99d4bde30eff6ebccfbe6",
          "id": "5cd96e05de30eff6ebcced62"
        }
      ];
      final response = json.map((quote) => MovieQuote.fromJson(quote)).toList();
      expect(response[0].id, "5cd96e05de30eff6ebcced60");
      expect(response[0].dialog, "");
      expect(response[0].movieId, "5cd95395de30eff6ebccde5c");
      expect(response[0].characterId, "5cd99d4bde30eff6ebccfbe6");

      expect(response[1].id, "5cd96e05de30eff6ebcced61");
      expect(response[1].dialog, "Who is she? This woman you sing of?");
      expect(response[1].movieId, "5cd95395de30eff6ebccde5c");
      expect(response[1].characterId, "5cd99d4bde30eff6ebccfc15");

      expect(response[2].id, "5cd96e05de30eff6ebcced62");
      expect(response[2].dialog, "Tis the Lady of L'thien. The Elf Maiden who gave her love to Beren ... a mortal.");
      expect(response[2].movieId, "5cd95395de30eff6ebccde5c");
      expect(response[2].characterId, "5cd99d4bde30eff6ebccfbe6");
    });
  });
}
