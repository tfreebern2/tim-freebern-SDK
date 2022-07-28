import 'package:test/test.dart';
import 'package:the_one_sdk/src/models/quote_context.dart';

void main() {
  group('Test Quote Context', () {
    test('Constructor', () {
      final quoteContext = QuoteContext(character: 'Adanel',
          dialog: 'Alright',
          movie: 'The Return of the King');
      expect(quoteContext.character, 'Adanel');
      expect(quoteContext.dialog, 'Alright');
      expect(quoteContext.movie, 'The Return of the King');
    });
  });
}
