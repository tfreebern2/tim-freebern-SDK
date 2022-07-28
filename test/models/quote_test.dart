import 'package:test/test.dart';
import 'package:the_one_sdk/src/models/quote.dart';

void main() {
  group('Test Quote Data Model', () {
    test('fromJson', () {
      final json = [
        {
          "_id": "5cd96e05de30eff6ebcce7e9",
          "dialog": "Deagol!",
          "movie": "5cd95395de30eff6ebccde5d",
          "character": "5cd99d4bde30eff6ebccfe9e",
          "id": "5cd96e05de30eff6ebcce7e9"
        }
      ];
      final response = json.map((movie) => Quote.fromJson(movie)).toList();
      expect(response[0].id, '5cd96e05de30eff6ebcce7e9');
      expect(response[0].dialog, 'Deagol!');
      expect(response[0].movieId, '5cd95395de30eff6ebccde5d');
      expect(response[0].characterId, '5cd99d4bde30eff6ebccfe9e');
    });
  });
}
