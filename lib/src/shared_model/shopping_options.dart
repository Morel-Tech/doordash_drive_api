import 'package:doordash_drive_api/doordash_drive_api.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'shopping_options.g.dart';

@JsonSerializable()
class ShoppingOptions extends Equatable {
  const ShoppingOptions({
    required this.paymentMethod,
    required this.dropoffContactLoyaltyNumber,
    this.paymentGiftCards,
    this.paymentBarcode,
    this.readyForPickupBy,
  });

  /// Converts a [Map]<[String], [dynamic]> to a [ShoppingOptions]
  factory ShoppingOptions.fromJson(Map<String, dynamic> json) =>
      _$ShoppingOptionsFromJson(json);

  /// Converts a [ShoppingOptions] to a [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() => _$ShoppingOptionsToJson(this);

  /// The payment method to be used by the Dasher while shopping at the store.
  /// This is a required field for shop_deliver and shop_stage orders.
  final PaymentMethodShoppingOption paymentMethod;

  /// The token that will be scanned as a barcode at checkout lane as payment
  /// for the order in store.
  final String? paymentBarcode;

  /// List of gift cards use for payment
  final List<String>? paymentGiftCards;

  /// Estimated time for order pickup by customer in ISO-8601 format, only
  /// required for shop_stage orders.
  final String? readyForPickupBy;

  /// Loyalty number for the Customer to be applied at the checkout lane.
  final String dropoffContactLoyaltyNumber;

  @override
  List<Object?> get props => [
        paymentMethod,
        paymentBarcode,
        paymentGiftCards,
        readyForPickupBy,
        dropoffContactLoyaltyNumber,
      ];
}
