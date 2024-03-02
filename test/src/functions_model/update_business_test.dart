import 'package:doordash_drive_api/doordash_drive_api.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  group('UpdateBusinessRequest', () {
    test('maps to object successfully', () {
      const expected = UpdateBusinessRequest(
        name: 'Neighborhood Deli',
        description:
            'A neighborhood deli serving many tasty sandwiches and soups.',
        activationStatus: 'active',
      );
      final result = UpdateBusinessRequest.fromJson(
        UpdateBusinessTestData.requestJson,
      );
      expect(result, expected);
    });
  });
}

abstract class UpdateBusinessTestData {
  static const requestJson = {
    'name': 'Neighborhood Deli',
    'description':
        'A neighborhood deli serving many tasty sandwiches and soups.',
    'activation_status': 'active',
  };
}
