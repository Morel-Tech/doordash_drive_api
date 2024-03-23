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
    request.headers['Authorization'] = 'Bearer ${_tokenStorage.getToken}';
    final streamedResponse = await _client.send(request);
    final response = await Response.fromStream(streamedResponse);
    return Map<String, dynamic>.from(jsonDecode(response.body) as Map);
  }
}

enum HttpMethod {
  get,
  post,
  patch,
  put,
  delete,
}
