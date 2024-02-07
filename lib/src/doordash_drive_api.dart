import 'package:doordash_drive_api/doordash_drive_api.dart';
import 'package:doordash_drive_api/src/doordash_drive_client.dart';

/// {@template doordash_drive_api}
/// A client for the Doordash Drive REST API
/// {@endtemplate}
class DoordashDriveApi {
  /// {@macro doordash_drive_api}
  const DoordashDriveApi({
    required DoordashDriveClient client,
  }) : _client = client;

  final DoordashDriveClient _client;

  /// Confirm that a delivery is serviceable by DoorDash and
  /// what it would cost by creating a quote.
  /// Get a quote on delivery fee and validate coverage.
  /// [DeliveryRequest] : Request body details of the endpoint call
  Future<Delivery> createQuote({
    required DeliveryRequest request,
  }) =>
      _client.send(
        path: DoordashDriveEndpointPaths.createQuote,
        method: HttpMethod.post,
        body: request.toJson(),
        responseFromJson: Delivery.fromJson,
      );

  /// When you’re happy with the quote you created, start the delivery process
  /// by accepting the quote.
  ///
  /// [externalDeliveryId] : Unique (per developer) ID of the delivery.
  /// [AcceptQuoteRequest] : Request body details of the endpoint call
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

  /// Create a [Delivery]
  /// [DeliveryRequest] : Request body details of the endpoint call
  Future<Delivery> createDelivery({
    required DeliveryRequest request,
  }) =>
      _client.send(
        path: DoordashDriveEndpointPaths.createDelivery,
        method: HttpMethod.post,
        body: request.toJson(),
        responseFromJson: Delivery.fromJson,
      );

  /// Get the status and details of a delivery that you created.
  /// If you want to proactively receive updates about your delivery,
  /// set up webhooks using the webhooks how-to guide.
  /// @see: https://developer.doordash.com/en-US/docs/drive/how_to/webhooks
  /// [externalDeliveryId] : Unique (per developer) ID of the delivery.
  Future<Delivery> getDelivery({
    required String externalDeliveryId,
  }) =>
      _client.send(
        path: DoordashDriveEndpointPaths.getDelivery(externalDeliveryId),
        method: HttpMethod.get,
        responseFromJson: Delivery.fromJson,
      );
}

abstract class DoordashDriveEndpointPaths {
  static const String _basePath = 'drive/v2';

  /// /drive/v2/quotes
  static const String createQuote = '$_basePath/quotes';

  /// /drive/v2/[externalDeliveryId]/accept
  static String acceptQuote(String externalDeliveryId) =>
      '$_basePath/$externalDeliveryId/accept';

  static const String createDelivery = '$_basePath/deliveries';

  /// /drive/v2/deliveries
  static const String createDelivery = '$_basePath/deliveries';

  /// /drive/v2/deliveries/[externalDeliveryId]
  static String getDelivery(String externalDeliveryId) =>
      '$_basePath/deliveries/$externalDeliveryId';
}
