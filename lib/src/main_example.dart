import 'dart:convert';
import 'dart:io';

import 'package:doordash_drive_api/doordash_drive_api.dart';

void main() async {
  final secrets = File('./lib/src/secrets.json').readAsStringSync();
  final secretsJson = jsonDecode(secrets) as Map<String, dynamic>;
  final tokenProperties = TokenProperties.fromJson(secretsJson);
  final api = DoordashDriveApi(tokenProperties: tokenProperties);

  try {
    final request = DeliveryRequest.fromJson(ExampleData.createDeliveryJson);
    await api.createDelivery(request: request);
  } catch (e) {
    rethrow;
  }
}

abstract class ExampleData {
  static Map<String, dynamic> createDeliveryJson = {
    'external_delivery_id': 'MOREL-12345',
    'pickup_address': '901 Market Street 6th Floor San Francisco, CA 94103',
    'pickup_business_name': 'Wells Fargo SF Downtown',
    'pickup_phone_number': '+16505555555',
    'pickup_instructions': 'Enter gate code 1234 on the callbox.',
    'dropoff_address': '901 Market Street 6th Floor San Francisco, CA 94103',
    'dropoff_business_name': 'Wells Fargo SF Downtown',
    'dropoff_phone_number': '+16505555555',
    'dropoff_instructions': 'Enter gate code 1234 on the callbox.',
    'order_value': 1999,
  };
}
