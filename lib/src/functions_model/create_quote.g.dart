// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_quote.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateQuoteRequest _$CreateQuoteRequestFromJson(Map<String, dynamic> json) =>
    CreateQuoteRequest(
      externalDeliveryId: json['external_delivery_id'] as String,
      dropoffAddress: json['dropoff_address'] as String,
      dropoffPhoneNumber: json['dropoff_phone_number'] as String,
      locale: json['locale'] as String?,
      orderFulfillmentMethod: $enumDecodeNullable(
          _$OrderFulfillmentMethodEnumMap, json['order_fulfillment_method']),
      originFacilityId: json['origin_facility_id'] as String?,
      pickupAddress: json['pickup_address'] as String?,
      pickupBusinessName: json['pickup_business_name'] as String?,
      pickupPhoneNumber: json['pickup_phone_number'] as String?,
      pickupInstructions: json['pickup_instructions'] as String?,
      pickupReferenceTag: json['pickup_reference_tag'] as String?,
      pickupExternalBusinsessId:
          json['pickup_external_businsess_id'] as String?,
      pickupExternalStoreId: json['pickup_external_store_id'] as String?,
      dropoffBusinessName: json['dropoff_business_name'] as String?,
      dropoffLocation: json['dropoff_location'] == null
          ? null
          : Location.fromJson(json['dropoff_location'] as Map<String, dynamic>),
      dropoffInstructions: json['dropoff_instructions'] as String?,
      dropoffContactGivenName: json['dropoff_contact_given_name'] as String?,
      dropoffContactFamilyName: json['dropoff_contact_family_name'] as String?,
      dropoffContactSendNotifications:
          json['dropoff_contact_send_notifications'] as bool?,
      dropoffOptions: json['dropoff_options'] == null
          ? null
          : DropoffOptions.fromJson(
              json['dropoff_options'] as Map<String, dynamic>),
      shoppingOptions: json['shopping_options'] == null
          ? null
          : ShoppingOptions.fromJson(
              json['shopping_options'] as Map<String, dynamic>),
      orderValue: json['order_value'] as int?,
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => DeliveryItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      pickupTime: json['pickup_time'] as String?,
      dropoffTime: json['dropoff_time'] as String?,
      pickupWindow: json['pickup_window'] == null
          ? null
          : TimeWindowDetails.fromJson(
              json['pickup_window'] as Map<String, dynamic>),
      dropoffWindow: json['dropoff_window'] == null
          ? null
          : TimeWindowDetails.fromJson(
              json['dropoff_window'] as Map<String, dynamic>),
      contactlessDropoff: json['contactless_dropoff'] as bool?,
      actionIfUndeliverable: $enumDecodeNullable(
          _$ActionIfUndeliverableEnumMap, json['action_if_undeliverable']),
      tip: json['tip'] as int?,
      orderContains: json['order_contains'] == null
          ? null
          : OrderContains.fromJson(
              json['order_contains'] as Map<String, dynamic>),
      dasherAllowedVehicles: (json['dasher_allowed_vehicles'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$DasherAllowedVehicleEnumMap, e))
          .toList(),
      dropoffRequiresSignature: json['dropoff_requires_signature'] as bool?,
      promotionId: json['promotion_id'] as String?,
      dropoffCashOnDelivery: json['dropoff_cash_on_delivery'] as int?,
    );

Map<String, dynamic> _$CreateQuoteRequestToJson(CreateQuoteRequest instance) {
  final val = <String, dynamic>{
    'external_delivery_id': instance.externalDeliveryId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('locale', instance.locale);
  writeNotNull('order_fulfillment_method',
      _$OrderFulfillmentMethodEnumMap[instance.orderFulfillmentMethod]);
  writeNotNull('origin_facility_id', instance.originFacilityId);
  writeNotNull('pickup_address', instance.pickupAddress);
  writeNotNull('pickup_business_name', instance.pickupBusinessName);
  writeNotNull('pickup_phone_number', instance.pickupPhoneNumber);
  writeNotNull('pickup_instructions', instance.pickupInstructions);
  writeNotNull('pickup_reference_tag', instance.pickupReferenceTag);
  writeNotNull(
      'pickup_external_businsess_id', instance.pickupExternalBusinsessId);
  writeNotNull('pickup_external_store_id', instance.pickupExternalStoreId);
  val['dropoff_address'] = instance.dropoffAddress;
  writeNotNull('dropoff_business_name', instance.dropoffBusinessName);
  writeNotNull('dropoff_location', instance.dropoffLocation?.toJson());
  val['dropoff_phone_number'] = instance.dropoffPhoneNumber;
  writeNotNull('dropoff_instructions', instance.dropoffInstructions);
  writeNotNull('dropoff_contact_given_name', instance.dropoffContactGivenName);
  writeNotNull(
      'dropoff_contact_family_name', instance.dropoffContactFamilyName);
  writeNotNull('dropoff_contact_send_notifications',
      instance.dropoffContactSendNotifications);
  writeNotNull('dropoff_options', instance.dropoffOptions?.toJson());
  writeNotNull('shopping_options', instance.shoppingOptions?.toJson());
  writeNotNull('order_value', instance.orderValue);
  writeNotNull('items', instance.items?.map((e) => e.toJson()).toList());
  writeNotNull('pickup_time', instance.pickupTime);
  writeNotNull('dropoff_time', instance.dropoffTime);
  writeNotNull('pickup_window', instance.pickupWindow?.toJson());
  writeNotNull('dropoff_window', instance.dropoffWindow?.toJson());
  writeNotNull('contactless_dropoff', instance.contactlessDropoff);
  writeNotNull('action_if_undeliverable',
      _$ActionIfUndeliverableEnumMap[instance.actionIfUndeliverable]);
  writeNotNull('tip', instance.tip);
  writeNotNull('order_contains', instance.orderContains?.toJson());
  writeNotNull(
      'dasher_allowed_vehicles',
      instance.dasherAllowedVehicles
          ?.map((e) => _$DasherAllowedVehicleEnumMap[e]!)
          .toList());
  writeNotNull('dropoff_requires_signature', instance.dropoffRequiresSignature);
  writeNotNull('promotion_id', instance.promotionId);
  writeNotNull('dropoff_cash_on_delivery', instance.dropoffCashOnDelivery);
  return val;
}

const _$OrderFulfillmentMethodEnumMap = {
  OrderFulfillmentMethod.standard: 'standard',
  OrderFulfillmentMethod.catering: 'catering',
  OrderFulfillmentMethod.shopStage: 'shop_stage',
  OrderFulfillmentMethod.shopDeliver: 'shop_deliver',
  OrderFulfillmentMethod.parcel: 'parcel',
};

const _$ActionIfUndeliverableEnumMap = {
  ActionIfUndeliverable.returnToPickup: 'return_to_pickup',
  ActionIfUndeliverable.dispose: 'dispose',
};

const _$DasherAllowedVehicleEnumMap = {
  DasherAllowedVehicle.car: 'car',
  DasherAllowedVehicle.bicycle: 'bicycle',
  DasherAllowedVehicle.walking: 'walking',
};

CreateQuoteResponse _$CreateQuoteResponseFromJson(Map<String, dynamic> json) =>
    CreateQuoteResponse(
      externalDeliveryId: json['external_delivery_id'] as String,
      currency: json['currency'] as String,
      fee: json['fee'] as int,
      status: $enumDecode(_$DeliveryStatusEnumMap, json['status']),
      locale: json['locale'] as String?,
      orderFulfillmentMethod: $enumDecodeNullable(
          _$OrderFulfillmentMethodEnumMap, json['order_fulfillment_method']),
      originFacilityId: json['origin_facility_id'] as String?,
      pickupAddress: json['pickup_address'] as String?,
      pickupBusinessName: json['pickup_business_name'] as String?,
      pickupPhoneNumber: json['pickup_phone_number'] as String?,
      pickupInstructions: json['pickup_instructions'] as String?,
      pickupReferenceTag: json['pickup_reference_tag'] as String?,
      pickupExternalBusinessId: json['pickup_external_business_id'] as String?,
      pickupExternalStoreId: json['pickup_external_store_id'] as String?,
      dropoffAddress: json['dropoff_address'] as String?,
      dropoffBusinessName: json['dropoff_business_name'] as String?,
      location: json['location'] == null
          ? null
          : Location.fromJson(json['location'] as Map<String, dynamic>),
      dropoffPhoneNumber: json['dropoff_phone_number'] as String?,
      dropoffInstructions: json['dropoff_instructions'] as String?,
      dropoffContactGivenName: json['dropoff_contact_given_name'] as String?,
      dropoffContactFamilyName: json['dropoff_contact_family_name'] as String?,
      dropoffContactSendNotifications:
          json['dropoff_contact_send_notifications'] as bool?,
      dropoffOptions: json['dropoff_options'] == null
          ? null
          : DropoffOptions.fromJson(
              json['dropoff_options'] as Map<String, dynamic>),
      orderValue: json['order_value'] as int?,
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => DeliveryItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      shoppingOptions: json['shopping_options'] == null
          ? null
          : ShoppingOptions.fromJson(
              json['shopping_options'] as Map<String, dynamic>),
      cancellationReason: $enumDecodeNullable(
          _$CancellationReasonEnumMap, json['cancellation_reason']),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      pickupTimeEstimated: json['pickup_time_estimated'] == null
          ? null
          : DateTime.parse(json['pickup_time_estimated'] as String),
      pickupTimeActual: json['pickup_time_actual'] == null
          ? null
          : DateTime.parse(json['pickup_time_actual'] as String),
      dropoffTimeEstimated: json['dropoff_time_estimated'] == null
          ? null
          : DateTime.parse(json['dropoff_time_estimated'] as String),
      dropoffTimeActual: json['dropoff_time_actual'] == null
          ? null
          : DateTime.parse(json['dropoff_time_actual'] as String),
      returnTimeEstimated: json['return_time_estimated'] == null
          ? null
          : DateTime.parse(json['return_time_estimated'] as String),
      returnTimeActual: json['return_time_actual'] == null
          ? null
          : DateTime.parse(json['return_time_actual'] as String),
      returnAddress: json['return_address'] as String?,
      feeComponent: (json['fee_component'] as List<dynamic>?)
          ?.map((e) => FeeComponent.fromJson(e as Map<String, dynamic>))
          .toList(),
      tax: json['tax'] as int?,
      taxComponent: (json['tax_component'] as List<dynamic>?)
          ?.map((e) => TaxComponent.fromJson(e as Map<String, dynamic>))
          .toList(),
      supportReference: json['support_reference'] as String?,
      trackingUrl: json['tracking_url'] as String?,
      dropoffVerificationImageUrl:
          json['dropoff_verification_image_url'] as String?,
      dropoffSignatureImageUrl: json['dropoff_signature_image_url'] as String?,
      shippingLabel: json['shipping_label'] == null
          ? null
          : ShippingLabel.fromJson(
              json['shipping_label'] as Map<String, dynamic>),
      droppedItems: (json['dropped_items'] as List<dynamic>?)
          ?.map((e) => DroppedItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      contactlessDropoff: json['contactless_dropoff'] as bool?,
      actionIfDeliverable: $enumDecodeNullable(
          _$ActionIfUndeliverableEnumMap, json['action_if_deliverable']),
      tip: json['tip'] as int?,
      orderContains: json['order_contains'] == null
          ? null
          : OrderContains.fromJson(
              json['order_contains'] as Map<String, dynamic>),
      dasherAllowedVehicles: (json['dasher_allowed_vehicles'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$DasherAllowedVehicleEnumMap, e))
          .toList(),
      dropoffRequiresSignature: json['dropoff_requires_signature'] as bool?,
      promotionId: json['promotion_id'] as String?,
      dropoffCashOnDelivery: json['dropoff_cash_on_delivery'] as int?,
      dasherId: json['dasher_id'] as int?,
      dasherName: json['dasher_name'] as String?,
      dasherDropoffPhoneNumber: json['dasher_dropoff_phone_number'] as String?,
      dasherPickupPhoneNumber: json['dasher_pickup_phone_number'] as String?,
      dasherLocation: json['dasher_location'] == null
          ? null
          : Location.fromJson(json['dasher_location'] as Map<String, dynamic>),
      dasherVehicleMake: json['dasher_vehicle_make'] as String?,
      dasherVehicleModel: json['dasher_vehicle_model'] as String?,
      dasherVehicleYear: json['dasher_vehicle_year'] as String?,
    );

Map<String, dynamic> _$CreateQuoteResponseToJson(CreateQuoteResponse instance) {
  final val = <String, dynamic>{
    'external_delivery_id': instance.externalDeliveryId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('locale', instance.locale);
  writeNotNull('order_fulfillment_method',
      _$OrderFulfillmentMethodEnumMap[instance.orderFulfillmentMethod]);
  writeNotNull('origin_facility_id', instance.originFacilityId);
  writeNotNull('pickup_address', instance.pickupAddress);
  writeNotNull('pickup_business_name', instance.pickupBusinessName);
  writeNotNull('pickup_phone_number', instance.pickupPhoneNumber);
  writeNotNull('pickup_instructions', instance.pickupInstructions);
  writeNotNull('pickup_reference_tag', instance.pickupReferenceTag);
  writeNotNull(
      'pickup_external_business_id', instance.pickupExternalBusinessId);
  writeNotNull('pickup_external_store_id', instance.pickupExternalStoreId);
  writeNotNull('dropoff_address', instance.dropoffAddress);
  writeNotNull('dropoff_business_name', instance.dropoffBusinessName);
  writeNotNull('location', instance.location?.toJson());
  writeNotNull('dropoff_phone_number', instance.dropoffPhoneNumber);
  writeNotNull('dropoff_instructions', instance.dropoffInstructions);
  writeNotNull('dropoff_contact_given_name', instance.dropoffContactGivenName);
  writeNotNull(
      'dropoff_contact_family_name', instance.dropoffContactFamilyName);
  writeNotNull('dropoff_contact_send_notifications',
      instance.dropoffContactSendNotifications);
  writeNotNull('dropoff_options', instance.dropoffOptions?.toJson());
  writeNotNull('order_value', instance.orderValue);
  val['currency'] = instance.currency;
  writeNotNull('items', instance.items?.map((e) => e.toJson()).toList());
  writeNotNull('shopping_options', instance.shoppingOptions?.toJson());
  val['status'] = _$DeliveryStatusEnumMap[instance.status]!;
  writeNotNull('cancellation_reason',
      _$CancellationReasonEnumMap[instance.cancellationReason]);
  writeNotNull('updated_at', instance.updatedAt?.toIso8601String());
  writeNotNull(
      'pickup_time_estimated', instance.pickupTimeEstimated?.toIso8601String());
  writeNotNull(
      'pickup_time_actual', instance.pickupTimeActual?.toIso8601String());
  writeNotNull('dropoff_time_estimated',
      instance.dropoffTimeEstimated?.toIso8601String());
  writeNotNull(
      'dropoff_time_actual', instance.dropoffTimeActual?.toIso8601String());
  writeNotNull(
      'return_time_estimated', instance.returnTimeEstimated?.toIso8601String());
  writeNotNull(
      'return_time_actual', instance.returnTimeActual?.toIso8601String());
  writeNotNull('return_address', instance.returnAddress);
  val['fee'] = instance.fee;
  writeNotNull(
      'fee_component', instance.feeComponent?.map((e) => e.toJson()).toList());
  writeNotNull('tax', instance.tax);
  writeNotNull(
      'tax_component', instance.taxComponent?.map((e) => e.toJson()).toList());
  writeNotNull('support_reference', instance.supportReference);
  writeNotNull('tracking_url', instance.trackingUrl);
  writeNotNull(
      'dropoff_verification_image_url', instance.dropoffVerificationImageUrl);
  writeNotNull(
      'dropoff_signature_image_url', instance.dropoffSignatureImageUrl);
  writeNotNull('shipping_label', instance.shippingLabel?.toJson());
  writeNotNull(
      'dropped_items', instance.droppedItems?.map((e) => e.toJson()).toList());
  writeNotNull('contactless_dropoff', instance.contactlessDropoff);
  writeNotNull('action_if_deliverable',
      _$ActionIfUndeliverableEnumMap[instance.actionIfDeliverable]);
  writeNotNull('tip', instance.tip);
  writeNotNull('order_contains', instance.orderContains?.toJson());
  writeNotNull(
      'dasher_allowed_vehicles',
      instance.dasherAllowedVehicles
          ?.map((e) => _$DasherAllowedVehicleEnumMap[e]!)
          .toList());
  writeNotNull('dropoff_requires_signature', instance.dropoffRequiresSignature);
  writeNotNull('promotion_id', instance.promotionId);
  writeNotNull('dropoff_cash_on_delivery', instance.dropoffCashOnDelivery);
  writeNotNull('dasher_id', instance.dasherId);
  writeNotNull('dasher_name', instance.dasherName);
  writeNotNull(
      'dasher_dropoff_phone_number', instance.dasherDropoffPhoneNumber);
  writeNotNull('dasher_pickup_phone_number', instance.dasherPickupPhoneNumber);
  writeNotNull('dasher_location', instance.dasherLocation?.toJson());
  writeNotNull('dasher_vehicle_make', instance.dasherVehicleMake);
  writeNotNull('dasher_vehicle_model', instance.dasherVehicleModel);
  writeNotNull('dasher_vehicle_year', instance.dasherVehicleYear);
  return val;
}

const _$DeliveryStatusEnumMap = {
  DeliveryStatus.quote: 'quote',
  DeliveryStatus.created: 'created',
  DeliveryStatus.confirmed: 'confirmed',
  DeliveryStatus.enrouteToPickup: 'enroute_to_pickup',
  DeliveryStatus.arrivedAtPickup: 'arrived_at_pickup',
  DeliveryStatus.pickedUp: 'picked_up',
  DeliveryStatus.enrouteToDropoff: 'enroute_to_dropoff',
  DeliveryStatus.arrivedAtDropoff: 'arrived_at_dropoff',
  DeliveryStatus.delivered: 'delivered',
  DeliveryStatus.enrouteToReturn: 'enroute_to_return',
  DeliveryStatus.arrivedAtReturn: 'arrived_at_return',
  DeliveryStatus.returned: 'returned',
  DeliveryStatus.cancelled: 'cancelled',
};

const _$CancellationReasonEnumMap = {
  CancellationReason.cancelledByCreator: 'cancelled_by_creator',
  CancellationReason.failedToProcessPayment: 'failed_to_process_payment',
  CancellationReason.failedToAssignAndRefunded: 'failed_to_assign_and_refunded',
  CancellationReason.failedToPickup: 'failed_to_pickup',
  CancellationReason.failedToDeliver: 'failed_to_deliver',
  CancellationReason.failedToReturn: 'failed_to_return',
};
