import 'package:doordash_drive_api/doordash_drive_api.dart';
import 'package:doordash_drive_api/src/shared_model/delivery/index.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'delivery_request.g.dart';

/// API request model used for CreateQuote and CreateDelivery
@JsonSerializable()
class DeliveryRequest extends Equatable {
  const DeliveryRequest({
    required this.externalDeliveryId,
    required this.dropoffAddress,
    required this.dropoffPhoneNumber,
    this.locale,
    this.orderFulfillmentMethod,
    this.originFacilityId,
    this.pickupAddress,
    this.pickupBusinessName,
    this.pickupPhoneNumber,
    this.pickupInstructions,
    this.pickupReferenceTag,
    this.pickupExternalBusinessId,
    this.pickupExternalStoreId,
    this.dropoffBusinessName,
    this.dropoffLocation,
    this.dropoffInstructions,
    this.dropoffContactGivenName,
    this.dropoffContactFamilyName,
    this.dropoffContactSendNotifications,
    this.dropoffOptions,
    this.shoppingOptions,
    this.orderValue,
    this.items,
    this.pickupTime,
    this.dropoffTime,
    this.pickupWindow,
    this.dropoffWindow,
    this.contactlessDropoff,
    this.actionIfUndeliverable,
    this.tip,
    this.orderContains,
    this.dasherAllowedVehicles,
    this.dropoffRequiresSignature,
    this.promotionId,
    this.dropoffCashOnDelivery,
  });

  /// Converts a [Map] to an [DeliveryRequest]
  factory DeliveryRequest.fromJson(Map<String, dynamic> json) =>
      _$DeliveryRequestFromJson(json);

  /// Converts a [DeliveryRequest] to a [Map]
  Map<String, dynamic> toJson() => _$DeliveryRequestToJson(this);

  /// Unique ID generated by the caller for the delivery.
  final String externalDeliveryId;

  /// The language DoorDash should use when sending updates about this delivery.
  ///  Supported locales : `en-US`, `fr-CA`, `es-US`.
  final String? locale;

  /// Type of fulfillment required for the Delivery
  final OrderFulfillmentMethod? orderFulfillmentMethod;

  /// Merchant warehouse id for the midmile
  final String? originFacilityId;

  /// Comma-separated full address, in the order appropriate for your locale.
  /// Overridden by store properties if pickup_external_store_id and
  ///  pickup_external_business_id are used.
  final String? pickupAddress;

  /// Optional name of the place, to help Dashers find the location. Overridden
  /// by store properties if pickup_external_store_id and
  /// pickup_external_business_id are used.
  final String? pickupBusinessName;

  /// The phone number for the Dasher to call if there are any issues with the
  /// pick up. Should include the country code and must match the country of the
  ///  store for which the delivery is created. Overridden by store properties
  /// if pickup_external_store_id and pickup_external_business_id are used. The
  /// Google [libphonenumber](https://github.com/google/libphonenumber) library
  /// is used to validate phone number.
  final String? pickupPhoneNumber;

  /// Instructions for the Dasher to follow when picking up the order.
  final String? pickupInstructions;

  /// A reference that can help Dasher identify the correct delivery item for
  /// pick up/drop-off.
  final String? pickupReferenceTag;

  /// The string identifier used to create your business. Used in combination
  /// with pickup_external_store_id to select the pick up location. If you
  /// provide an pickup_external_business_id, you must also provide an
  /// pickup_external_store_id.
  final String? pickupExternalBusinessId;

  /// The string identifier used to create your store. If you provide an
  /// pickup_external_store_id, you must also provide an
  /// pickup_external_business_id. If you provide an pickup_external_store_id,
  /// the address of the store will override the pickup_address in the request.
  final String? pickupExternalStoreId;

  /// Comma-separated full address, in the order appropriate for your locale.
  final String dropoffAddress;

  /// Optional name of the place, to help Dashers find the location.
  final String? dropoffBusinessName;

  /// The precise location, as latitude and longitude, of the drop-off. If your
  /// request includes both location and address, location will be used for
  /// Dasher navigation only; address will be used for fee and serviceability
  /// checks.
  final Location? dropoffLocation;

  /// The phone number for the Dasher to call if there are any issues with the
  /// delivery. Should include the country code. The Google
  /// [libphonenumber](https://github.com/google/libphonenumber) library is
  /// used to validate phone number.
  final String dropoffPhoneNumber;

  /// Instructions for the Dasher to follow when dropping off the order.
  final String? dropoffInstructions;

  /// Given/first name of the contact.
  final String? dropoffContactGivenName;

  /// Family/last name of the contact.
  final String? dropoffContactFamilyName;

  /// Whether the contact will receive notifications from DoorDash for this
  /// delivery. The default is true.
  final bool? dropoffContactSendNotifications;

  /// Additional options for drop off
  final DropoffOptions? dropoffOptions;

  /// Details about how to shop and pay for the delivery for shop_deliver and
  /// shop_stage orders
  final ShoppingOptions? shoppingOptions;

  /// The subtotal for all items in the order, excluding tax/tip, in the lowest
  /// currency denomination (e.g. cents). i.e. $19.99 = 1999.
  final int? orderValue;

  /// The items included in the order.
  final List<DeliveryItem>? items;

  /// Time details in ISO-8601 format.
  final String? pickupTime;

  /// Time details in ISO-8601 format.
  final String? dropoffTime;

  /// The UTC date-time (in ISO-8601 format) overrides dropoff_time and
  /// pickup_time when all four parameters of the time window
  /// (pickup_window_start_time , pickup_window_end_time ,
  /// dropoff_window_start_time , dropoff_window_end_time) are provided.
  final TimeWindowDetails? pickupWindow;

  /// The UTC date-time (in ISO-8601 format) overrides dropoff_time and
  /// pickup_time when all four parameters of the time window
  /// (pickup_window_start_time , pickup_window_end_time ,
  /// dropoff_window_start_time , dropoff_window_end_time) are provided.
  final TimeWindowDetails? dropoffWindow;

  /// Whether the delivery should be contactless, which prompts a Dasher to
  /// take a picture of the delivery at drop-off.
  final bool? contactlessDropoff;

  /// What the Dasher should do if the delivery is undeliverable. The default
  /// is "dispose".
  final ActionIfUndeliverable? actionIfUndeliverable;

  /// The tip amount. Use cents or the equivalent lowest currency denomination
  /// (e.g. $5.99 = 599).
  final int? tip;

  /// An object that specifies the restricted item(s) contained in this order.
  final OrderContains? orderContains;

  /// The vehicle type(s) that a Dasher can use to complete this delivery. The
  /// default is "car".
  final List<DasherAllowedVehicle>? dasherAllowedVehicles;

  /// Whether the delivery requires signature verification during drop-off.
  final bool? dropoffRequiresSignature;

  /// The ID of the promotion that you want to apply to the delivery. If the
  /// promotion ID is valid and the promotion is active, the response fee will
  /// be adjusted according to the details of the promotion.
  final String? promotionId;

  /// The cash to collect when this order is dropped off, value in the lowest
  /// currency denomination (e.g. cents). i.e. $19.99 = 1999.
  final int? dropoffCashOnDelivery;

  @override
  List<Object?> get props {
    return [
      externalDeliveryId,
      locale,
      orderFulfillmentMethod,
      originFacilityId,
      pickupAddress,
      pickupBusinessName,
      pickupPhoneNumber,
      pickupInstructions,
      pickupReferenceTag,
      pickupExternalBusinessId,
      pickupExternalStoreId,
      dropoffAddress,
      dropoffBusinessName,
      dropoffLocation,
      dropoffPhoneNumber,
      dropoffInstructions,
      dropoffContactGivenName,
      dropoffContactFamilyName,
      dropoffContactSendNotifications,
      dropoffOptions,
      shoppingOptions,
      orderValue,
      items,
      pickupTime,
      dropoffTime,
      pickupWindow,
      dropoffWindow,
      contactlessDropoff,
      actionIfUndeliverable,
      tip,
      orderContains,
      dasherAllowedVehicles,
      dropoffRequiresSignature,
      promotionId,
      dropoffCashOnDelivery,
    ];
  }
}