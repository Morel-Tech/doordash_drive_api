import 'package:doordash_drive_api/doordash_drive_api.dart';
import 'package:doordash_drive_api/src/doordash_drive_client.dart';
import 'package:doordash_drive_api/src/functions_model/accept_quote.dart';

/// {@template doordash_drive_api}
/// A client for the Doordash Drive REST API
/// {@endtemplate}
class DoordashDriveApi {
  /// {@macro doordash_drive_api}
  const DoordashDriveApi({
    required DoordashDriveClient client,
  }) : _client = client;

  final DoordashDriveClient _client;

  Future<Delivery> createQuote({
    required CreateQuoteRequest request,
  }) =>
      _client.send(
        path: DoordashDriveEndpointPaths.createQuote,
        method: HttpMethod.post,
        body: request.toJson(),
        responseFromJson: Delivery.fromJson,
      );

  /// When you’re happy with the quote you created, start the delivery process
  /// by accepting the quote.
  Future<Delivery> acceptQuote({
    required String externalDeliveryId,
    required AcceptQuoteRequest request,
  }) =>
      _client.send(
        path: DoordashDriveEndpointPaths.acceptQuote(externalDeliveryId),
        method: HttpMethod.post,
        body: request.toJson(),
        responseFromJson: Delivery.fromJson,
      );
}

abstract class DoordashDriveEndpointPaths {
  static const String _basePath = 'drive/v2';

  static const String createQuote = '$_basePath/quotes';

  static String acceptQuote(String externalDeliveryId) =>
      '$_basePath/$externalDeliveryId/accept';
}
