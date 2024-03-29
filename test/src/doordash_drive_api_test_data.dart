abstract class DoordashDriveApiTestData {
  // CREATE QUOTE
  static const createQuoteRequest = {
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
        'description': '''
            Mega Burrito contains the biggest beans of the land with extra cheese.
            ''',
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
  static const createQuoteSuccessResponse = {
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
    'order_value': 1999,
    'currency': 'USD',
    'items': [
      {
        'name': 'Mega Bean and Cheese Burrito',
        'description':
            '''Mega Burrito contains the biggest beans of the land with extra cheese.''',
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
    'delivery_status': 'quote',
    'cancellation_reason': 'cancelled_by_creator',
    'updated_at': '2018-08-22T17:20:28Z',
    'pickup_time_estimated': '2018-08-22T17:20:28Z',
    'pickup_time_actual': '2018-08-22T17:20:28Z',
    'dropoff_time_estimated': '2018-08-22T17:20:28Z',
    'dropoff_time_actual': '2018-08-22T17:20:28Z',
    'return_time_estimated': '2018-08-22T17:20:28Z',
    'return_time_actual': '2018-08-22T17:20:28Z',
    'return_address': '901 Market Street 6th Floor San Francisco, CA 94103',
    'fee': 1900,
    'fee_components': [
      {
        'type': 'distance_based_fee',
        'amount': 1900,
      }
    ],
    'tax': 520,
    'tax_components': [
      {
        'type': 'gst_hst',
        'amount': 520,
      }
    ],
    'support_reference': '86313',
    'tracking_url': 'https://doordash.com/tracking?id=',
    'dropoff_verification_image_url': 'https://doordash-static.s3...',
    'pickup_verification_image_url': 'https://doordash-static.s3...',
    'dropoff_signature_image_url': 'https://doordash-static.s3...',
    'shipping_label': {
      'label_format': 'zpl',
      'label_size': '4x6',
      'print_density': '203dpi',
      'label_string':
          '''XlhBCl5DRjAsNjAKXkZPNTAsNTBeRkRTdG9yZU5hbWVeRlMKXkNGMCwzMApeRk81MCwxMTVeRkRTaGlwcGVkIDAxLzE2LzIwMjNeRlMKXkZPNjUwLDYwXkZENS4zIGxic15GUwpeRk82NTAsMTAwXkZEQ0hJLTJeRlMKXkZPNTAsMTcwXkdCNzAwLDMsM15GUwpeQ0YwLDgwCl5GTzUwLDIyNV5GREpvaG4gRG9lXkZTCl5DRkEsMzYKXkZPNTAsMzMwXkZENnRoIEZsb29yXkZTCl5GTzUwLDM4NV5GRDkwMSBNYXJrZXQgU3RyZWV0XkZTCl5GTzUwLDQ0MF5GRFNhbiBGcmFuY2lzY28sIENBIDk0MTAzXkZTCl5GTzUwLDUyMF5HQjcwMCwzLDNeRlMKXkJZMiwzLDIwMApeRk81MCw1NzVeQkNeRkRKM0Q0VE5HUU1QR0FLSE5VNlZSSlA4RjkyRDE3WV5GUwpeQlFOLDIsNwpeRk81NzUsNzc1XkZEUUEsSjNENFROR1FNUEdBS0hOVTZWUkpQOEY5MkQxN1leRlMKXkNGQSwyNApeRk81MCw4NTBeRkRSZWYjIDEyMy0xMjM0NDM0MzRiXkZTCl5DRkEsMzZeRk81MCwxMDUwXkZERGVsaXZlcmVkXkZTCl5DRkIsMzZeRk81MCwxMTAwXkZEQnkgRGFzaExpbmteRlMKXlha==''',
    },
    'dropped_items': [
      {
        'external_id': '1011902870',
        'type': 'main_item',
        'reason': 'item_not_found_in_catalog',
      }
    ],
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
    'dasher_id': 1232142,
    'dasher_name': 'John D.',
    'dasher_dropoff_phone_number': '+15555555555',
    'dasher_pickup_phone_number': '+14444444444',
    'dasher_location': {
      'lat': 123.1312343,
      'lng': -37.2144343,
    },
    'dasher_vehicle_make': 'Toyota',
    'dasher_vehicle_model': 'Corolla',
    'dasher_vehicle_year': '2006',
  };

  // ACCEPT QUOTE
  static const acceptQuoteSuccessResponse = {
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
    'order_value': 1999,
    'currency': 'USD',
    'items': [
      {
        'name': 'Mega Bean and Cheese Burrito',
        'description':
            '''Mega Burrito contains the biggest beans of the land with extra cheese.''',
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
    'delivery_status': 'quote',
    'cancellation_reason': 'cancelled_by_creator',
    'updated_at': '2018-08-22T17:20:28Z',
    'pickup_time_estimated': '2018-08-22T17:20:28Z',
    'pickup_time_actual': '2018-08-22T17:20:28Z',
    'dropoff_time_estimated': '2018-08-22T17:20:28Z',
    'dropoff_time_actual': '2018-08-22T17:20:28Z',
    'return_time_estimated': '2018-08-22T17:20:28Z',
    'return_time_actual': '2018-08-22T17:20:28Z',
    'return_address': '901 Market Street 6th Floor San Francisco, CA 94103',
    'fee': 1900,
    'fee_components': [
      {
        'type': 'distance_based_fee',
        'amount': 1900,
      }
    ],
    'tax': 520,
    'tax_components': [
      {
        'type': 'gst_hst',
        'amount': 520,
      }
    ],
    'support_reference': '86313',
    'tracking_url': 'https://doordash.com/tracking?id=',
    'dropoff_verification_image_url': 'https://doordash-static.s3...',
    'pickup_verification_image_url': 'https://doordash-static.s3...',
    'dropoff_signature_image_url': 'https://doordash-static.s3...',
    'shipping_label': {
      'label_format': 'zpl',
      'label_size': '4x6',
      'print_density': '203dpi',
      'label_string':
          '''XlhBCl5DRjAsNjAKXkZPNTAsNTBeRkRTdG9yZU5hbWVeRlMKXkNGMCwzMApeRk81MCwxMTVeRkRTaGlwcGVkIDAxLzE2LzIwMjNeRlMKXkZPNjUwLDYwXkZENS4zIGxic15GUwpeRk82NTAsMTAwXkZEQ0hJLTJeRlMKXkZPNTAsMTcwXkdCNzAwLDMsM15GUwpeQ0YwLDgwCl5GTzUwLDIyNV5GREpvaG4gRG9lXkZTCl5DRkEsMzYKXkZPNTAsMzMwXkZENnRoIEZsb29yXkZTCl5GTzUwLDM4NV5GRDkwMSBNYXJrZXQgU3RyZWV0XkZTCl5GTzUwLDQ0MF5GRFNhbiBGcmFuY2lzY28sIENBIDk0MTAzXkZTCl5GTzUwLDUyMF5HQjcwMCwzLDNeRlMKXkJZMiwzLDIwMApeRk81MCw1NzVeQkNeRkRKM0Q0VE5HUU1QR0FLSE5VNlZSSlA4RjkyRDE3WV5GUwpeQlFOLDIsNwpeRk81NzUsNzc1XkZEUUEsSjNENFROR1FNUEdBS0hOVTZWUkpQOEY5MkQxN1leRlMKXkNGQSwyNApeRk81MCw4NTBeRkRSZWYjIDEyMy0xMjM0NDM0MzRiXkZTCl5DRkEsMzZeRk81MCwxMDUwXkZERGVsaXZlcmVkXkZTCl5DRkIsMzZeRk81MCwxMTAwXkZEQnkgRGFzaExpbmteRlMKXlha==''',
    },
    'dropped_items': [
      {
        'external_id': '1011902870',
        'type': 'main_item',
        'reason': 'item_not_found_in_catalog',
      }
    ],
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
    'dasher_id': 1232142,
    'dasher_name': 'John D.',
    'dasher_dropoff_phone_number': '+15555555555',
    'dasher_pickup_phone_number': '+14444444444',
    'dasher_location': {
      'lat': 123.1312343,
      'lng': -37.2144343,
    },
    'dasher_vehicle_make': 'Toyota',
    'dasher_vehicle_model': 'Corolla',
    'dasher_vehicle_year': '2006',
  };

  // CREATE DELIVERY
  static const createDeliveryRequest = {
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
        'description':
            '''Mega Burrito contains the biggest beans of the land with extra cheese.''',
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
  static const createDeliverySuccessResponse = {
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
    'order_value': 1999,
    'currency': 'USD',
    'items': [
      {
        'name': 'Mega Bean and Cheese Burrito',
        'description':
            '''Mega Burrito contains the biggest beans of the land with extra cheese.''',
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
    'delivery_status': 'quote',
    'cancellation_reason': 'cancelled_by_creator',
    'updated_at': '2018-08-22T17:20:28Z',
    'pickup_time_estimated': '2018-08-22T17:20:28Z',
    'pickup_time_actual': '2018-08-22T17:20:28Z',
    'dropoff_time_estimated': '2018-08-22T17:20:28Z',
    'dropoff_time_actual': '2018-08-22T17:20:28Z',
    'return_time_estimated': '2018-08-22T17:20:28Z',
    'return_time_actual': '2018-08-22T17:20:28Z',
    'return_address': '901 Market Street 6th Floor San Francisco, CA 94103',
    'fee': 1900,
    'fee_components': [
      {
        'type': 'distance_based_fee',
        'amount': 1900,
      }
    ],
    'tax': 520,
    'tax_components': [
      {
        'type': 'gst_hst',
        'amount': 520,
      }
    ],
    'support_reference': '86313',
    'tracking_url': 'https://doordash.com/tracking?id=',
    'dropoff_verification_image_url': 'https://doordash-static.s3...',
    'pickup_verification_image_url': 'https://doordash-static.s3...',
    'dropoff_signature_image_url': 'https://doordash-static.s3...',
    'shipping_label': {
      'label_format': 'zpl',
      'label_size': '4x6',
      'print_density': '203dpi',
      'label_string':
          '''XlhBCl5DRjAsNjAKXkZPNTAsNTBeRkRTdG9yZU5hbWVeRlMKXkNGMCwzMApeRk81MCwxMTVeRkRTaGlwcGVkIDAxLzE2LzIwMjNeRlMKXkZPNjUwLDYwXkZENS4zIGxic15GUwpeRk82NTAsMTAwXkZEQ0hJLTJeRlMKXkZPNTAsMTcwXkdCNzAwLDMsM15GUwpeQ0YwLDgwCl5GTzUwLDIyNV5GREpvaG4gRG9lXkZTCl5DRkEsMzYKXkZPNTAsMzMwXkZENnRoIEZsb29yXkZTCl5GTzUwLDM4NV5GRDkwMSBNYXJrZXQgU3RyZWV0XkZTCl5GTzUwLDQ0MF5GRFNhbiBGcmFuY2lzY28sIENBIDk0MTAzXkZTCl5GTzUwLDUyMF5HQjcwMCwzLDNeRlMKXkJZMiwzLDIwMApeRk81MCw1NzVeQkNeRkRKM0Q0VE5HUU1QR0FLSE5VNlZSSlA4RjkyRDE3WV5GUwpeQlFOLDIsNwpeRk81NzUsNzc1XkZEUUEsSjNENFROR1FNUEdBS0hOVTZWUkpQOEY5MkQxN1leRlMKXkNGQSwyNApeRk81MCw4NTBeRkRSZWYjIDEyMy0xMjM0NDM0MzRiXkZTCl5DRkEsMzZeRk81MCwxMDUwXkZERGVsaXZlcmVkXkZTCl5DRkIsMzZeRk81MCwxMTAwXkZEQnkgRGFzaExpbmteRlMKXlha==''',
    },
    'dropped_items': [
      {
        'external_id': '1011902870',
        'type': 'main_item',
        'reason': 'item_not_found_in_catalog',
      }
    ],
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
    'dasher_id': 1232142,
    'dasher_name': 'John D.',
    'dasher_dropoff_phone_number': '+15555555555',
    'dasher_pickup_phone_number': '+14444444444',
    'dasher_location': {
      'lat': 123.1312343,
      'lng': -37.2144343,
    },
    'dasher_vehicle_make': 'Toyota',
    'dasher_vehicle_model': 'Corolla',
    'dasher_vehicle_year': '2006',
  };

  // GET DELIVERY
  static const getDeliverySuccessResponse = {
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
    'order_value': 1999,
    'currency': 'USD',
    'items': [
      {
        'name': 'Mega Bean and Cheese Burrito',
        'description':
            '''Mega Burrito contains the biggest beans of the land with extra cheese.''',
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
    'delivery_status': 'quote',
    'cancellation_reason': 'cancelled_by_creator',
    'updated_at': '2018-08-22T17:20:28Z',
    'pickup_time_estimated': '2018-08-22T17:20:28Z',
    'pickup_time_actual': '2018-08-22T17:20:28Z',
    'dropoff_time_estimated': '2018-08-22T17:20:28Z',
    'dropoff_time_actual': '2018-08-22T17:20:28Z',
    'return_time_estimated': '2018-08-22T17:20:28Z',
    'return_time_actual': '2018-08-22T17:20:28Z',
    'return_address': '901 Market Street 6th Floor San Francisco, CA 94103',
    'fee': 1900,
    'fee_components': [
      {
        'type': 'distance_based_fee',
        'amount': 1900,
      }
    ],
    'tax': 520,
    'tax_components': [
      {
        'type': 'gst_hst',
        'amount': 520,
      }
    ],
    'support_reference': '86313',
    'tracking_url': 'https://doordash.com/tracking?id=',
    'dropoff_verification_image_url': 'https://doordash-static.s3...',
    'pickup_verification_image_url': 'https://doordash-static.s3...',
    'dropoff_signature_image_url': 'https://doordash-static.s3...',
    'shipping_label': {
      'label_format': 'zpl',
      'label_size': '4x6',
      'print_density': '203dpi',
      'label_string':
          '''XlhBCl5DRjAsNjAKXkZPNTAsNTBeRkRTdG9yZU5hbWVeRlMKXkNGMCwzMApeRk81MCwxMTVeRkRTaGlwcGVkIDAxLzE2LzIwMjNeRlMKXkZPNjUwLDYwXkZENS4zIGxic15GUwpeRk82NTAsMTAwXkZEQ0hJLTJeRlMKXkZPNTAsMTcwXkdCNzAwLDMsM15GUwpeQ0YwLDgwCl5GTzUwLDIyNV5GREpvaG4gRG9lXkZTCl5DRkEsMzYKXkZPNTAsMzMwXkZENnRoIEZsb29yXkZTCl5GTzUwLDM4NV5GRDkwMSBNYXJrZXQgU3RyZWV0XkZTCl5GTzUwLDQ0MF5GRFNhbiBGcmFuY2lzY28sIENBIDk0MTAzXkZTCl5GTzUwLDUyMF5HQjcwMCwzLDNeRlMKXkJZMiwzLDIwMApeRk81MCw1NzVeQkNeRkRKM0Q0VE5HUU1QR0FLSE5VNlZSSlA4RjkyRDE3WV5GUwpeQlFOLDIsNwpeRk81NzUsNzc1XkZEUUEsSjNENFROR1FNUEdBS0hOVTZWUkpQOEY5MkQxN1leRlMKXkNGQSwyNApeRk81MCw4NTBeRkRSZWYjIDEyMy0xMjM0NDM0MzRiXkZTCl5DRkEsMzZeRk81MCwxMDUwXkZERGVsaXZlcmVkXkZTCl5DRkIsMzZeRk81MCwxMTAwXkZEQnkgRGFzaExpbmteRlMKXlha==''',
    },
    'dropped_items': [
      {
        'external_id': '1011902870',
        'type': 'main_item',
        'reason': 'item_not_found_in_catalog',
      }
    ],
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
    'dasher_id': 1232142,
    'dasher_name': 'John D.',
    'dasher_dropoff_phone_number': '+15555555555',
    'dasher_pickup_phone_number': '+14444444444',
    'dasher_location': {
      'lat': 123.1312343,
      'lng': -37.2144343,
    },
    'dasher_vehicle_make': 'Toyota',
    'dasher_vehicle_model': 'Corolla',
    'dasher_vehicle_year': '2006',
  };

  // UPDATE DELIVERY
  static const updateDeliveryRequest = {
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
    'order_value': 1999,
    'items': [
      {
        'name': 'Mega Bean and Cheese Burrito',
        'description':
            '''Mega Burrito contains the biggest beans of the land with extra cheese.''',
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
  };
  static const updateDeliverySuccessResponse = {
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
    'order_value': 1999,
    'currency': 'USD',
    'items': [
      {
        'name': 'Mega Bean and Cheese Burrito',
        'description':
            '''Mega Burrito contains the biggest beans of the land with extra cheese.''',
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
    'delivery_status': 'quote',
    'cancellation_reason': 'cancelled_by_creator',
    'updated_at': '2018-08-22T17:20:28Z',
    'pickup_time_estimated': '2018-08-22T17:20:28Z',
    'pickup_time_actual': '2018-08-22T17:20:28Z',
    'dropoff_time_estimated': '2018-08-22T17:20:28Z',
    'dropoff_time_actual': '2018-08-22T17:20:28Z',
    'return_time_estimated': '2018-08-22T17:20:28Z',
    'return_time_actual': '2018-08-22T17:20:28Z',
    'return_address': '901 Market Street 6th Floor San Francisco, CA 94103',
    'fee': 1900,
    'fee_components': [
      {
        'type': 'distance_based_fee',
        'amount': 1900,
      }
    ],
    'tax': 520,
    'tax_components': [
      {
        'type': 'gst_hst',
        'amount': 520,
      }
    ],
    'support_reference': '86313',
    'tracking_url': 'https://doordash.com/tracking?id=',
    'dropoff_verification_image_url': 'https://doordash-static.s3...',
    'pickup_verification_image_url': 'https://doordash-static.s3...',
    'dropoff_signature_image_url': 'https://doordash-static.s3...',
    'shipping_label': {
      'label_format': 'zpl',
      'label_size': '4x6',
      'print_density': '203dpi',
      'label_string':
          '''XlhBCl5DRjAsNjAKXkZPNTAsNTBeRkRTdG9yZU5hbWVeRlMKXkNGMCwzMApeRk81MCwxMTVeRkRTaGlwcGVkIDAxLzE2LzIwMjNeRlMKXkZPNjUwLDYwXkZENS4zIGxic15GUwpeRk82NTAsMTAwXkZEQ0hJLTJeRlMKXkZPNTAsMTcwXkdCNzAwLDMsM15GUwpeQ0YwLDgwCl5GTzUwLDIyNV5GREpvaG4gRG9lXkZTCl5DRkEsMzYKXkZPNTAsMzMwXkZENnRoIEZsb29yXkZTCl5GTzUwLDM4NV5GRDkwMSBNYXJrZXQgU3RyZWV0XkZTCl5GTzUwLDQ0MF5GRFNhbiBGcmFuY2lzY28sIENBIDk0MTAzXkZTCl5GTzUwLDUyMF5HQjcwMCwzLDNeRlMKXkJZMiwzLDIwMApeRk81MCw1NzVeQkNeRkRKM0Q0VE5HUU1QR0FLSE5VNlZSSlA4RjkyRDE3WV5GUwpeQlFOLDIsNwpeRk81NzUsNzc1XkZEUUEsSjNENFROR1FNUEdBS0hOVTZWUkpQOEY5MkQxN1leRlMKXkNGQSwyNApeRk81MCw4NTBeRkRSZWYjIDEyMy0xMjM0NDM0MzRiXkZTCl5DRkEsMzZeRk81MCwxMDUwXkZERGVsaXZlcmVkXkZTCl5DRkIsMzZeRk81MCwxMTAwXkZEQnkgRGFzaExpbmteRlMKXlha==''',
    },
    'dropped_items': [
      {
        'external_id': '1011902870',
        'type': 'main_item',
        'reason': 'item_not_found_in_catalog',
      }
    ],
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
    'dasher_id': 1232142,
    'dasher_name': 'John D.',
    'dasher_dropoff_phone_number': '+15555555555',
    'dasher_pickup_phone_number': '+14444444444',
    'dasher_location': {
      'lat': 123.1312343,
      'lng': -37.2144343,
    },
    'dasher_vehicle_make': 'Toyota',
    'dasher_vehicle_model': 'Corolla',
    'dasher_vehicle_year': '2006',
  };

  // CANCEL DELIVERY
  static const cancelDeliverySuccessResponse = {
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
    'order_value': 1999,
    'currency': 'USD',
    'items': [
      {
        'name': 'Mega Bean and Cheese Burrito',
        'description':
            '''Mega Burrito contains the biggest beans of the land with extra cheese.''',
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
    'delivery_status': 'quote',
    'cancellation_reason': 'cancelled_by_creator',
    'updated_at': '2018-08-22T17:20:28Z',
    'pickup_time_estimated': '2018-08-22T17:20:28Z',
    'pickup_time_actual': '2018-08-22T17:20:28Z',
    'dropoff_time_estimated': '2018-08-22T17:20:28Z',
    'dropoff_time_actual': '2018-08-22T17:20:28Z',
    'return_time_estimated': '2018-08-22T17:20:28Z',
    'return_time_actual': '2018-08-22T17:20:28Z',
    'return_address': '901 Market Street 6th Floor San Francisco, CA 94103',
    'fee': 1900,
    'fee_components': [
      {
        'type': 'distance_based_fee',
        'amount': 1900,
      }
    ],
    'tax': 520,
    'tax_components': [
      {
        'type': 'gst_hst',
        'amount': 520,
      }
    ],
    'support_reference': '86313',
    'tracking_url': 'https://doordash.com/tracking?id=',
    'dropoff_verification_image_url': 'https://doordash-static.s3...',
    'pickup_verification_image_url': 'https://doordash-static.s3...',
    'dropoff_signature_image_url': 'https://doordash-static.s3...',
    'shipping_label': {
      'label_format': 'zpl',
      'label_size': '4x6',
      'print_density': '203dpi',
      'label_string':
          '''XlhBCl5DRjAsNjAKXkZPNTAsNTBeRkRTdG9yZU5hbWVeRlMKXkNGMCwzMApeRk81MCwxMTVeRkRTaGlwcGVkIDAxLzE2LzIwMjNeRlMKXkZPNjUwLDYwXkZENS4zIGxic15GUwpeRk82NTAsMTAwXkZEQ0hJLTJeRlMKXkZPNTAsMTcwXkdCNzAwLDMsM15GUwpeQ0YwLDgwCl5GTzUwLDIyNV5GREpvaG4gRG9lXkZTCl5DRkEsMzYKXkZPNTAsMzMwXkZENnRoIEZsb29yXkZTCl5GTzUwLDM4NV5GRDkwMSBNYXJrZXQgU3RyZWV0XkZTCl5GTzUwLDQ0MF5GRFNhbiBGcmFuY2lzY28sIENBIDk0MTAzXkZTCl5GTzUwLDUyMF5HQjcwMCwzLDNeRlMKXkJZMiwzLDIwMApeRk81MCw1NzVeQkNeRkRKM0Q0VE5HUU1QR0FLSE5VNlZSSlA4RjkyRDE3WV5GUwpeQlFOLDIsNwpeRk81NzUsNzc1XkZEUUEsSjNENFROR1FNUEdBS0hOVTZWUkpQOEY5MkQxN1leRlMKXkNGQSwyNApeRk81MCw4NTBeRkRSZWYjIDEyMy0xMjM0NDM0MzRiXkZTCl5DRkEsMzZeRk81MCwxMDUwXkZERGVsaXZlcmVkXkZTCl5DRkIsMzZeRk81MCwxMTAwXkZEQnkgRGFzaExpbmteRlMKXlha==''',
    },
    'dropped_items': [
      {
        'external_id': '1011902870',
        'type': 'main_item',
        'reason': 'item_not_found_in_catalog',
      }
    ],
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
    'dasher_id': 1232142,
    'dasher_name': 'John D.',
    'dasher_dropoff_phone_number': '+15555555555',
    'dasher_pickup_phone_number': '+14444444444',
    'dasher_location': {
      'lat': 123.1312343,
      'lng': -37.2144343,
    },
    'dasher_vehicle_make': 'Toyota',
    'dasher_vehicle_model': 'Corolla',
    'dasher_vehicle_year': '2006',
  };

  // GET BUSINESS
  static const getBusinessSuccessResponse = {
    'name': 'Neighborhood Deli',
    'description':
        'A neighborhood deli serving many tasty sandwiches and soups.',
    'external_business_id': 'a0720d55-7cbe-41ce-8185-58285b7985cd',
    'activation_status': 'active',
    'created_at': '2022-04-25T17:21:43Z',
    'last_updated_at': '2022-04-25T17:21:43Z',
    'is_test': false,
    'external_metadata': {
      'number_of_stores': '10',
      'client_email': 'merchant@doordash.com',
      'client_phone_number': '+12065551212',
      'external_store_ids': [
        null,
      ],
    },
  };

  // UPDATE BUSINESS
  static const updateBusinessRequest = {
    'name': 'Neighborhood Deli',
    'description':
        'A neighborhood deli serving many tasty sandwiches and soups.',
    'activation_status': 'active',
  };
  static const updateBusinessSuccessResponse = {
    'name': 'Neighborhood Deli',
    'description':
        'A neighborhood deli serving many tasty sandwiches and soups.',
    'external_business_id': 'a0720d55-7cbe-41ce-8185-58285b7985cd',
    'activation_status': 'active',
    'created_at': '2022-04-25T17:21:43Z',
    'last_updated_at': '2022-04-25T17:21:43Z',
    'is_test': false,
    'external_metadata': {
      'number_of_stores': '10',
      'client_email': 'merchant@doordash.com',
      'client_phone_number': '+12065551212',
      'external_store_ids': [
        null,
      ],
    },
  };

  // CREATE BUSINESS
  static const createBusinessRequest = {
    'external_business_id': 'a0720d55-7cbe-41ce-8185-58285b7985cd',
    'name': 'Neighborhood Deli',
    'description':
        'A neighborhood deli serving many tasty sandwiches and soups.',
    'activation_status': 'active',
  };
  static const createBusinessSuccessResponse = {
    'name': 'Neighborhood Deli',
    'description':
        'A neighborhood deli serving many tasty sandwiches and soups.',
    'external_business_id': 'a0720d55-7cbe-41ce-8185-58285b7985cd',
    'activation_status': 'active',
    'created_at': '2022-04-25T17:21:43Z',
    'last_updated_at': '2022-04-25T17:21:43Z',
    'is_test': false,
    'external_metadata': {
      'number_of_stores': '10',
      'client_email': 'merchant@doordash.com',
      'client_phone_number': '+12065551212',
      'external_store_ids': [
        null,
      ],
    },
  };
}
