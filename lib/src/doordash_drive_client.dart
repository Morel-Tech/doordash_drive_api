import 'dart:convert';

import 'package:http/http.dart';

typedef ResponseFromJson<T> = T Function(Map<String, dynamic> json);

class DoordashDriveClient {
  const DoordashDriveClient({
    required Client client,
    required String baseUrl,
  })  : _client = client,
        _baseUrl = baseUrl;

  final Client _client;
  final String _baseUrl;

  Future<Map<String, dynamic>> send({
    required String path,
    required HttpMethod method,
    Object? body,
  }) async {
    final streamedResponse = await _client.send(
      Request(
        method.name.toUpperCase(),
        Uri.parse('$_baseUrl/$path'),
      ),
    );

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
