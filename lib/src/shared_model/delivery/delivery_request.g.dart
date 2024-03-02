// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeliveryRequest _$DeliveryRequestFromJson(Map<String, dynamic> json) =>
    DeliveryRequest(
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
      pickupExternalBusinessId: json['pickup_external_business_id'] as String?,
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

Map<String, dynamic> _$DeliveryRequestToJson(DeliveryRequest instance) {
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
