import 'package:doordash_drive_api/doordash_drive_api.dart';
import 'package:doordash_drive_api/src/shared_model/delivery_request.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  group('CreateQuoteRequest', () {
    test('convert to Json', () {
      const request = DeliveryRequest(
        externalDeliveryId: 'D-1763',
        locale: 'en-US, fr-CA, es-US',
        orderFulfillmentMethod: OrderFulfillmentMethod.standard,
        originFacilityId: 'MERCHANTA-CA-1',
        pickupAddress: '901 Market Street 6th Floor San Francisco, CA 94103',
        pickupBusinessName: 'Wells Fargo SF Downtown',
        pickupPhoneNumber: '+16505555555',
        pickupInstructions: 'Go to the bar for pick up.',
        pickupReferenceTag: 'Order number 61',
        pickupExternalBusinessId: 'ase-243-dzs',
        pickupExternalStoreId: 'ase-243-dzs',
        dropoffAddress: '901 Market Street 6th Floor San Francisco, CA 94103',
        dropoffBusinessName: 'The Avery Condominium',
        dropoffLocation: Location(lat: 123.1312343, lng: -37.2144343),
        dropoffPhoneNumber: '+16505555555',
        dropoffInstructions: 'Enter gate code 1234 on the callbox.',
        dropoffContactGivenName: 'John',
        dropoffContactFamilyName: 'Doe',
        dropoffContactSendNotifications: true,
        dropoffOptions: DropoffOptions(
          SignatureDropoffOption.required,
          IdVerificationDropoffOption.required,
          ProofOfDeliveryDropoffOption.photoRequired,
        ),
        shoppingOptions: ShoppingOptions(
          paymentMethod: PaymentMethodShoppingOption.redCard,
          paymentBarcode: '12345',
          paymentGiftCards: [
            '123443434',
            '123443435',
          ],
          dropoffContactLoyaltyNumber: '1234-5678-9876-5432-1',
          readyForPickupBy: '2018-08-22T17:20:28Z',
        ),
        orderValue: 1999,
        items: [
          DeliveryItem(
            name: 'Mega Bean and Cheese Burrito',
            description: 'Mega Burrito contains the biggest beans of the land '
                'with extra cheese.',
            quantity: 2,
            externalId: '123-123443434b',
            externalInstanceId: 12,
            volume: 5.3,
            weight: 2.8,
            length: 2.8,
            width: 2.8,
            height: 2.8,
            price: 1000,
            barcode: 12342830041,
            itemOptions: DeliveryItemOptions(
              substituteItemIds: [
                '123443434',
                '123443435',
              ],
              weightUnit: 'oz',
              substitutionPreference: 'refund',
            ),
          ),
        ],
        pickupTime: '2018-08-22T17:20:28Z',
        dropoffTime: '2018-08-22T17:20:28Z',
        pickupWindow: TimeWindowDetails(
          startTime: '2018-08-22T17:20:28Z',
          endTime: '2018-08-22T17:20:28Z',
        ),
        dropoffWindow: TimeWindowDetails(
          startTime: '2018-08-22T17:20:28Z',
          endTime: '2018-08-22T17:20:28Z',
        ),
        contactlessDropoff: false,
        actionIfUndeliverable: ActionIfUndeliverable.returnToPickup,
        tip: 599,
        orderContains: OrderContains(
          alcohol: false,
          pharmacyItems: false,
          ageRestrictedPharmacyItems: false,
        ),
        dasherAllowedVehicles: [
          DasherAllowedVehicle.car,
          DasherAllowedVehicle.bicycle,
          DasherAllowedVehicle.walking,
        ],
        dropoffRequiresSignature: false,
        promotionId: 'ee680b87-0016-496e-ac3c-d3f33ab54c1c',
        dropoffCashOnDelivery: 1999,
      );

      expect(request.toJson(), equals(DeliveryRequestTestData.requestToJson));
    });
  });
}

abstract class DeliveryRequestTestData {
  static const requestToJson = {
    'external_delivery_id': 'D-1763',
    'locale': 'en-US, fr-CA, es-US',
    'order_fulfillment_method': 'standard',
    'origin_facility_id': 'MERCHANTA-CA-1',
    'pickup_address': '901 Market Street 6th Floor San Francisco, CA 94103',
    'pickup_business_name': 'Wells Fargo SF Downtown',
    'pickup_phone_number': '+16505555555',
    'pickup_instructions': 'Go to the bar for pick up.',
    'pickup_reference_tag': 'Order number 61',
    'pickup_external_business_id': 'ase-243-dzs',
    'pickup_external_store_id': 'ase-243-dzs',
    'dropoff_address': '901 Market Street 6th Floor San Francisco, CA 94103',
    'dropoff_business_name': 'The Avery Condominium',
    'dropoff_location': {
      'lat': 123.1312343,
      'lng': -37.2144343,
    },
    'dropoff_phone_number': '+16505555555',
    'dropoff_instructions': 'Enter gate code 1234 on the callbox.',
    'dropoff_contact_given_name': 'John',
    'dropoff_contact_family_name': 'Doe',
    'dropoff_contact_send_notifications': true,
    'dropoff_options': {
      'signature': 'required',
      'id_verification': 'required',
      'proof_of_delivery': 'photo_required',
    },
    'shopping_options': {
      'payment_method': 'red_card',
      'payment_barcode': '12345',
      'payment_gift_cards': [
        '123443434',
        '123443435',
      ],
      'ready_for_pickup_by': '2018-08-22T17:20:28Z',
      'dropoff_contact_loyalty_number': '1234-5678-9876-5432-1',
    },
    'order_value': 1999,
    'items': [
      {
        'name': 'Mega Bean and Cheese Burrito',
        'description': 'Mega Burrito contains the biggest beans of the land '
            'with extra cheese.',
        'quantity': 2,
        'external_id': '123-123443434b',
        'external_instance_id': 12,
        'volume': 5.3,
        'weight': 2.8,
        'length': 2.8,
        'width': 2.8,
        'height': 2.8,
        'price': 1000,
        'barcode': 12342830041,
        'item_options': {
          'substitute_item_ids': [
            '123443434',
            '123443435',
          ],
          'weight_unit': 'oz',
          'substitution_preference': 'refund',
        },
      }
    ],
    'pickup_time': '2018-08-22T17:20:28Z',
    'dropoff_time': '2018-08-22T17:20:28Z',
    'pickup_window': {
      'start_time': '2018-08-22T17:20:28Z',
      'end_time': '2018-08-22T17:20:28Z',
    },
    'dropoff_window': {
      'start_time': '2018-08-22T17:20:28Z',
      'end_time': '2018-08-22T17:20:28Z',
    },
    'contactless_dropoff': false,
    'action_if_undeliverable': 'return_to_pickup',
    'tip': 599,
    'order_contains': {
      'alcohol': false,
      'pharmacy_items': false,
      'age_restricted_pharmacy_items': false,
    },
    'dasher_allowed_vehicles': [
      'car',
      'bicycle',
      'walking',
    ],
    'dropoff_requires_signature': false,
    'promotion_id': 'ee680b87-0016-496e-ac3c-d3f33ab54c1c',
    'dropoff_cash_on_delivery': 1999,
  };
}
