import 'package:test/test.dart';
import 'package:the_one_sdk/src/api/api.dart';

void main() {
  group('API Tests', () {
    test('Test Headers', () {
      final api = Api();
      final headers = api.getJSONHeaders('testApiKey');
      expect(headers, {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer testApiKey'
      });
    });
  });
}
