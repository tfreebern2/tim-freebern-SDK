import 'package:test/test.dart';
import 'package:the_one_sdk/src/models/character.dart';

void main() {
  group('Test Character Data Model', () {
    test('fromJson', () {
      final json = [
        {
          "_id": "5cd99d4bde30eff6ebccfbbe",
          "height": "",
          "race": "Human",
          "gender": "Female",
          "birth": "",
          "spouse": "Belemir",
          "death": "",
          "realm": "",
          "hair": "",
          "name": "Adanel",
          "wikiUrl": "http://lotr.wikia.com//wiki/Adanel"
        }
      ];
      final response = json.map((character) => Character.fromJson(character)).toList();
      expect(response[0].id, '5cd99d4bde30eff6ebccfbbe');
      expect(response[0].height, '');
      expect(response[0].race, 'Human');
      expect(response[0].gender, 'Female');
      expect(response[0].birth, '');
      expect(response[0].spouse, 'Belemir');
      expect(response[0].death, '');
      expect(response[0].realm, '');
      expect(response[0].hair, '');
      expect(response[0].name, 'Adanel');
      expect(response[0].wikiUrl, 'http://lotr.wikia.com//wiki/Adanel');
    });
  });
}
