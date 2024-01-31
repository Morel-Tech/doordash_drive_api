import 'package:doordash_drive_api/src/functions_model/accept_quote.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  group('AcceptQuoteRequest', () {
    test('convert to Json', () {
      const request = AcceptQuoteRequest(
        tip: 599,
        dropoffPhoneNumber: '+16505555555',
      );
      expect(request.toJson(), equals(AcceptQuoteTestData.requestToJson));
    });
  });
}

abstract class AcceptQuoteTestData {
  static const requestToJson = {
    'tip': 599,
    'dropoff_phone_number': '+16505555555',
  };
}
