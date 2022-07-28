import 'package:test/test.dart';
import 'package:the_one_sdk/src/models/book_chapter.dart';

void main() {
  group('Test BookChapter Data Model', () {
    test('fromJson', () {
      final json = [
        {
          "_id": "6091b6d6d58360f988133b8b",
          "chapterName": "A Long-expected Party"
        },
        {
          "_id": "6091b6d6d58360f988133b8c",
          "chapterName": "The Shadow of the Past"
        },
        {"_id": "6091b6d6d58360f988133b8d", "chapterName": "Three is Company"}
      ];
      final response =
          json.map((chapter) => BookChapter.fromJson(chapter)).toList();
      expect(response[0].id, '6091b6d6d58360f988133b8b');
      expect(response[0].chapterName, 'A Long-expected Party');
      expect(response[1].id, '6091b6d6d58360f988133b8c');
      expect(response[1].chapterName, 'The Shadow of the Past');
      expect(response[2].id, '6091b6d6d58360f988133b8d');
      expect(response[2].chapterName, 'Three is Company');
    });
  });
}
