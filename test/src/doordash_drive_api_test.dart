import 'package:doordash_drive_api/doordash_drive_api.dart';
import 'package:doordash_drive_api/src/doordash_drive_client.dart';
import 'package:doordash_drive_api/src/shared_model/business/business.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import 'doordash_drive_api_test_data.dart';

class DoordashDriveClientMock extends Mock implements DoordashDriveClient {}

void main() {
  late DoordashDriveApi api;
  late DoordashDriveClient client;

  setUp(() {
    client = DoordashDriveClientMock();
    api = DoordashDriveApi(client: client);
  });

  group('DoordashDriveApi', () {
    test('can be instantiated', () {
      expect(api, isNotNull);
    });

    group('Delivery', () {
      group('createQuote', () {
        test('successfully maps request & response', () async {
          final deliveryRequest = DeliveryRequest.fromJson(
            DoordashDriveApiTestData.createQuoteRequest,
          );
          when(
            () => client.send(
              path: DoordashDriveEndpointPaths.createQuote,
              method: HttpMethod.post,
              body: deliveryRequest.toJson(),
            ),
          ).thenAnswer(
            (_) => Future.value(
              DoordashDriveApiTestData.createQuoteSuccessResponse,
            ),
          );

          final response = await api.createQuote(request: deliveryRequest);

          expect(response, isA<Delivery>());
        });
      });

      group('acceptQuote', () {
        test('successfully maps request & response', () async {
          final deliveryRequest = DeliveryRequest.fromJson(
            DoordashDriveApiTestData.createQuoteRequest,
          );
          when(
            () => client.send(
              path: DoordashDriveEndpointPaths.createQuote,
              method: HttpMethod.post,
              body: deliveryRequest.toJson(),
            ),
          ).thenAnswer(
            (_) => Future.value(
              DoordashDriveApiTestData.createQuoteSuccessResponse,
            ),
          );

          final response = await api.createQuote(request: deliveryRequest);

          expect(response, isA<Delivery>());
        });
      });

      group('createDelivery', () {
        test('successfully maps request & response', () async {
          final createDeliveryRequest = DeliveryRequest.fromJson(
            DoordashDriveApiTestData.createDeliveryRequest,
          );
          when(
            () => client.send(
              path: DoordashDriveEndpointPaths.createDelivery,
              method: HttpMethod.post,
              body: createDeliveryRequest.toJson(),
            ),
          ).thenAnswer(
            (_) => Future.value(
              DoordashDriveApiTestData.createDeliverySuccessResponse,
            ),
          );

          final response = await api.createDelivery(
            request: createDeliveryRequest,
          );

          expect(response, isA<Delivery>());
        });
      });

      group('getDelivery', () {
        test('successfully maps request & response', () async {
          when(
            () => client.send(
              path: DoordashDriveEndpointPaths.getUpdateDelivery(
                'externalDeliveryId',
              ),
              method: HttpMethod.get,
            ),
          ).thenAnswer(
            (_) => Future.value(
              DoordashDriveApiTestData.getDeliverySuccessResponse,
            ),
          );

          final response = await api.getDelivery(
            externalDeliveryId: 'externalDeliveryId',
          );

          expect(response, isA<Delivery>());
        });
      });

      group('updateDelivery', () {
        test('successfully maps request & response', () async {
          final updateDeliveryRequest = UpdateDeliveryRequest.fromJson(
            DoordashDriveApiTestData.updateDeliveryRequest,
          );
          when(
            () => client.send(
              path: DoordashDriveEndpointPaths.getUpdateDelivery(
                'externalDeliveryId',
              ),
              body: updateDeliveryRequest.toJson(),
              method: HttpMethod.patch,
            ),
          ).thenAnswer(
            (_) => Future.value(
              DoordashDriveApiTestData.updateDeliverySuccessResponse,
            ),
          );

          final expectedDelivery = Delivery.fromJson(
            DoordashDriveApiTestData.updateDeliverySuccessResponse,
          );

          final response = await api.updateDelivery(
            externalDeliveryId: 'externalDeliveryId',
            request: updateDeliveryRequest,
          );

          expect(response, expectedDelivery);
        });
      });

      group('cancelDelivery', () {
        test('successfully maps response', () async {
          when(
            () => client.send(
              path: DoordashDriveEndpointPaths.cancelDelivery(
                'externalDeliveryId',
              ),
              method: HttpMethod.put,
            ),
          ).thenAnswer(
            (_) => Future.value(
              DoordashDriveApiTestData.cancelDeliverySuccessResponse,
            ),
          );

          final response = await api.cancelDelivery(
              externalDeliveryId: 'externalDeliveryId');

          expect(response, isA<Delivery>());
        });
      });
    });

    group('Business & Store', () {
      group('getBusiness', () {
        test('successfully maps response', () async {
          when(
            () => client.send(
              path: DoordashDriveEndpointPaths.getBusiness(
                'externalBusinessId',
              ),
              method: HttpMethod.get,
            ),
          ).thenAnswer(
            (_) => Future.value(
              DoordashDriveApiTestData.getBusinessSuccessResponse,
            ),
          );

          final response = await api.cancelDelivery(
            externalDeliveryId: 'externalBusinessId',
          );

          expect(response, isA<Business>());
        });
      });
      group('updateBusiness', () {
        test('successfully maps request and response', () async {
          final updateBusinessRequest = UpdateBusinessRequest.fromJson(
            DoordashDriveApiTestData.updateBusinessRequest,
          );
          when(
            () => client.send(
              path: DoordashDriveEndpointPaths.updateBusiness(
                'externalBusinessId',
              ),
              body: updateBusinessRequest.toJson(),
              method: HttpMethod.patch,
            ),
          ).thenAnswer(
            (_) => Future.value(
              DoordashDriveApiTestData.updateBusinessSuccessResponse,
            ),
          );

          final expectedBusiness = Business.fromJson(
            DoordashDriveApiTestData.updateBusinessSuccessResponse,
          );

          final response = await api.updateBusiness(
            externalBusinessId: 'externalBusinessId',
            request: updateBusinessRequest,
          );

          expect(response, expectedBusiness);
        });
      });
    });
  });
}
