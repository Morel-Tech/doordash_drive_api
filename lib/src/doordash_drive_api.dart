import 'dart:convert';

import 'package:doordash_drive_api/doordash_drive_api.dart';
import 'package:http/http.dart';

/// {@template doordash_drive_api}
/// A client for the Doordash Drive REST API
/// {@endtemplate}
class DoordashDriveApi {
  /// {@macro doordash_drive_api}
  const DoordashDriveApi({
    required DoordashDriveClient client,
  }) : _client = client;

  final DoordashDriveClient _client;

  Future<CreateQuoteResponse> createQuote({
    required CreateQuoteRequest request,
  }) =>
      _client.send(
        path: 'drive/v2/quotes',
        method: HttpMethod.post,
        body: request,
        responseFromJson: CreateQuoteResponse.fromJson,
      );
}

typedef ResponseFromJson<T> = T Function(Map<String, dynamic> json);

class DoordashDriveClient {
  const DoordashDriveClient({
    required Client client,
    required String baseUrl,
  })  : _client = client,
        _baseUrl = baseUrl;

  final Client _client;
  final String _baseUrl;

  Future<T> send<T>({
    required String path,
    required HttpMethod method,
    required ResponseFromJson<T> responseFromJson,
    Object? body,
  }) async {
    final streamedResponse = await _client.send(
      Request(
        method.name.toUpperCase(),
        Uri.parse('$_baseUrl/$path'),
      ),
    );

    final response = await Response.fromStream(streamedResponse);
    final json = Map<String, dynamic>.from(jsonDecode(response.body) as Map);
    return responseFromJson(json);
  }
}

enum HttpMethod {
  get,
  post,
  patch,
  put,
  delete,
}
