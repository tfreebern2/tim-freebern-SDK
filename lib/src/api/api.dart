import 'dart:convert';
import 'package:http/http.dart' as http;

import 'api_exception.dart';

class Api {
  final _client = http.Client();

  Map<String, String> getJSONHeaders(String apiKey) {
    return {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $apiKey'
    };
  }

  Future<dynamic> get(String url, Map<String, String> headers,
      {dynamic body}) async {
    final request = http.Request('GET', Uri.parse(url));
    request.headers.addAll(headers);
    if (body != null) request.body = jsonEncode(body);
    final response =
        await http.Response.fromStream(await _client.send(request));
    return parseResponse(response);
  }

  dynamic parseResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        final responseJson = json.decode(response.body.toString());
        final data = responseJson['docs'];
        return data;
      case 400:
        throw BadRequestException(response.body);
      case 401:
        throw UnauthorisedException(response.body);
      case 403:
        break;
      case 404:
        throw NotFoundException(response.body);
      case 500:
      default:
        throw FetchDataException(
            'Error occurred while communicating with the server with StatusCode : ${response.statusCode}');
    }
  }
}
