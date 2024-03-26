import 'dart:convert';

import 'package:doordash_drive_api/src/token_storage.dart';
import 'package:http/http.dart';

typedef ResponseFromJson<T> = T Function(Map<String, dynamic> json);

class DoordashDriveClient {
  DoordashDriveClient({
    required Client client,
    required String baseUrl,
    required TokenStorage tokenStorage,
  })  : _client = client,
        _baseUrl = baseUrl,
        _tokenStorage = tokenStorage;

  final Client _client;
  final String _baseUrl;
  final TokenStorage _tokenStorage;

  Future<Map<String, dynamic>> send({
    required String path,
    required HttpMethod method,
    Object? body,
  }) async {
    final request = Request(
      method.name.toUpperCase(),
      Uri.parse('$_baseUrl/$path'),
    );
    request.headers['Authorization'] = 'Bearer ${_tokenStorage.token}';
    request.headers['Content-type'] = 'application/json';
    try {
      final streamedResponse = await _client.send(request);
      final response = await Response.fromStream(streamedResponse);
      if (response.statusCode == 200) {
        return Map<String, dynamic>.from(jsonDecode(response.body) as Map);
      } else {
        throw Exception(
          '---- Response was not expected: CODE: ${response.statusCode}',
        );
      }
    } catch (e) {
      throw Exception('Something went wrong while mapping the response');
    }
  }
}

enum HttpMethod {
  get,
  post,
  patch,
  put,
  delete,
}
