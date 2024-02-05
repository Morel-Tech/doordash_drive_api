import 'package:doordash_drive_api/doordash_drive_api.dart';
import 'package:doordash_drive_api/src/doordash_drive_client.dart';
import 'package:http/http.dart';
import 'package:test/test.dart';

void main() {
  group('DoordashDriveApi', () {
    test('can be instantiated', () {
      expect(
        DoordashDriveApi(
          client: DoordashDriveClient(
            client: Client(),
            baseUrl: 'https://openapi.doordash.com/',
          ),
        ),
        isNotNull,
      );
    });
  });
}
