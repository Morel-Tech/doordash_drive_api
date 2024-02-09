import 'package:doordash_drive_api/doordash_drive_api.dart';
import 'package:doordash_drive_api/src/doordash_drive_client.dart';
import 'package:doordash_drive_api/src/functions_model/update_delivery.dart';

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
  ///
  /// @see: https://developer.doordash.com/en-US/api/drive/#tag/Delivery/operation/DeliveryQuote
  ///
  /// [request] : Request body details of the endpoint call
  Future<Delivery> createQuote({
    required DeliveryRequest request,
  }) async {
    final response = await _client.send(
      path: DoordashDriveEndpointPaths.createQuote,
      method: HttpMethod.post,
      body: request.toJson(),
    );

    return Delivery.fromJson(response);
  }

  /// When you’re happy with the quote you created, start the delivery process
  /// by accepting the quote.
  ///
  /// @see: https://developer.doordash.com/en-US/api/drive/#tag/Delivery/operation/DeliveryQuoteAccept
  ///
  /// [externalDeliveryId] : Unique (per developer) ID of the delivery.
  /// [request] : Request body details of the endpoint call
  Future<Delivery> acceptQuote({
    required String externalDeliveryId,
    required AcceptQuoteRequest request,
  }) async {
    final response = await _client.send(
      path: DoordashDriveEndpointPaths.acceptQuote(externalDeliveryId),
      method: HttpMethod.post,
      body: request.toJson(),
    );

    return Delivery.fromJson(response);
  }

  /// Create a [Delivery]
  ///
  /// @see: https://developer.doordash.com/en-US/api/drive/#tag/Delivery/operation/CreateDelivery
  ///
  /// [request] : Request body details of the endpoint call
  Future<Delivery> createDelivery({
    required DeliveryRequest request,
  }) async {
    final response = await _client.send(
      path: DoordashDriveEndpointPaths.createDelivery,
      method: HttpMethod.post,
      body: request.toJson(),
    );

    return Delivery.fromJson(response);
  }

  /// Get the status and details of a delivery that you created.
  /// If you want to proactively receive updates about your delivery,
  /// set up webhooks using the webhooks how-to guide.
  ///
  /// @see: https://developer.doordash.com/en-US/docs/drive/how_to/webhooks
  /// @see: https://developer.doordash.com/en-US/api/drive/#tag/Delivery/operation/GetDelivery
  ///
  /// [externalDeliveryId] : Unique (per developer) ID of the delivery.
  Future<Delivery> getDelivery({
    required String externalDeliveryId,
  }) async {
    final response = await _client.send(
      path: DoordashDriveEndpointPaths.getUpdateDelivery(externalDeliveryId),
      method: HttpMethod.get,
    );

    return Delivery.fromJson(response);
  }

  /// Update the details of a delivery. Only the fields listed below
  /// can be updated; to update other fields, you need to cancel the
  /// delivery and then create a new one.
  ///
  /// @see: https://developer.doordash.com/en-US/api/drive/#tag/Delivery/operation/UpdateDelivery
  ///
  /// [externalDeliveryId] : Unique (per developer) ID of the delivery.
  Future<Delivery> updateDelivery({
    required String externalDeliveryId,
    required UpdateDeliveryRequest request,
  }) async {
    final response = await _client.send(
      path: DoordashDriveEndpointPaths.getUpdateDelivery(externalDeliveryId),
      method: HttpMethod.patch,
      body: request.toJson(),
    );
    return Delivery.fromJson(response);
  }

  /// Cancel a delivery.
  /// Deliveries can't be cancelled after a Dasher is assigned.
  ///
  /// @see: https://developer.doordash.com/en-US/api/drive/#tag/Delivery/operation/UpdateDelivery
  ///
  /// [externalDeliveryId] : Unique (per developer) ID of the delivery.
  Future<Delivery> cancelDelivery({
    required String externalDeliveryId,
  }) async {
    final response = await _client.send(
      path: DoordashDriveEndpointPaths.cancelDelivery(externalDeliveryId),
      method: HttpMethod.put,
    );
    return Delivery.fromJson(response);
  }
}

abstract class DoordashDriveEndpointPaths {
  static const String _basePath = 'drive/v2';

  /// /drive/v2/quotes
  static const String createQuote = '$_basePath/quotes';

  /// /drive/v2/[externalDeliveryId]/accept
  static String acceptQuote(String externalDeliveryId) =>
      '$_basePath/$externalDeliveryId/accept';

  /// /drive/v2/deliveries
  static const String createDelivery = '$_basePath/deliveries';

  /// /drive/v2/deliveries/[externalDeliveryId]
  static String getUpdateDelivery(String externalDeliveryId) =>
      '$_basePath/deliveries/$externalDeliveryId';

  /// /drive/v2/deliveries/[externalDeliveryId]/cancel
  static String cancelDelivery(String externalDeliveryId) =>
      '$_basePath/deliveries/$externalDeliveryId/cancel';
}
