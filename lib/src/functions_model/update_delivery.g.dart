// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_delivery.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateDeliveryRequest _$UpdateDeliveryRequestFromJson(
        Map<String, dynamic> json) =>
    UpdateDeliveryRequest(
      pickupAddress: json['pickup_address'] as String?,
      pickupBusinessName: json['pickup_business_name'] as String?,
      pickupPhoneNumber: json['pickup_phone_number'] as String?,
      pickupInstructions: json['pickup_instructions'] as String?,
      pickupExternalBusinessId: json['pickup_external_business_id'] as String?,
      pickupExternalStoreId: json['pickup_external_store_id'] as String?,
      dropoffAddress: json['dropoff_address'] as String?,
      dropoffBusinessName: json['dropoff_business_name'] as String?,
      dropoffLocation: json['dropoff_location'] == null
          ? null
          : Location.fromJson(json['dropoff_location'] as Map<String, dynamic>),
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
    );

Map<String, dynamic> _$UpdateDeliveryRequestToJson(
    UpdateDeliveryRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('pickup_address', instance.pickupAddress);
  writeNotNull('pickup_business_name', instance.pickupBusinessName);
  writeNotNull('pickup_phone_number', instance.pickupPhoneNumber);
  writeNotNull('pickup_instructions', instance.pickupInstructions);
  writeNotNull(
      'pickup_external_business_id', instance.pickupExternalBusinessId);
  writeNotNull('pickup_external_store_id', instance.pickupExternalStoreId);
  writeNotNull('dropoff_address', instance.dropoffAddress);
  writeNotNull('dropoff_business_name', instance.dropoffBusinessName);
  writeNotNull('dropoff_location', instance.dropoffLocation?.toJson());
  writeNotNull('dropoff_phone_number', instance.dropoffPhoneNumber);
  writeNotNull('dropoff_instructions', instance.dropoffInstructions);
  writeNotNull('dropoff_contact_given_name', instance.dropoffContactGivenName);
  writeNotNull(
      'dropoff_contact_family_name', instance.dropoffContactFamilyName);
  writeNotNull('dropoff_contact_send_notifications',
      instance.dropoffContactSendNotifications);
  writeNotNull('dropoff_options', instance.dropoffOptions?.toJson());
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
  writeNotNull('order_value', instance.orderValue);
  writeNotNull('items', instance.items?.map((e) => e.toJson()).toList());
  writeNotNull('pickup_time', instance.pickupTime);
  writeNotNull('dropoff_time', instance.dropoffTime);
  writeNotNull('pickup_window', instance.pickupWindow?.toJson());
  writeNotNull('dropoff_window', instance.dropoffWindow?.toJson());
  return val;
}

const _$ActionIfUndeliverableEnumMap = {
  ActionIfUndeliverable.returnToPickup: 'return_to_pickup',
  ActionIfUndeliverable.dispose: 'dispose',
};

const _$DasherAllowedVehicleEnumMap = {
  DasherAllowedVehicle.car: 'car',
  DasherAllowedVehicle.bicycle: 'bicycle',
  DasherAllowedVehicle.walking: 'walking',
};
