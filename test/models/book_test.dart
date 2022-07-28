import 'package:test/test.dart';
import 'package:the_one_sdk/src/models/book.dart';

void main() {
  group('Test Book Data Model', () {
    test('fromJson', () {
      final json = [
        {
          "_id": "5cf5805fb53e011a64671582",
          "name": "The Fellowship Of The Ring"
        },
        {"_id": "5cf58077b53e011a64671583", "name": "The Two Towers"},
        {"_id": "5cf58080b53e011a64671584", "name": "The Return Of The King"}
      ];
      final response = json.map((book) => Book.fromJson(book)).toList();
      expect(response[0].id, '5cf5805fb53e011a64671582');
      expect(response[0].name, 'The Fellowship Of The Ring');
      expect(response[1].id, '5cf58077b53e011a64671583');
      expect(response[1].name, 'The Two Towers');
      expect(response[2].id, '5cf58080b53e011a64671584');
      expect(response[2].name, 'The Return Of The King');
    });
  });
}
