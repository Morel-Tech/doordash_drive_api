// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shopping_options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ShoppingOptions _$ShoppingOptionsFromJson(Map<String, dynamic> json) =>
    ShoppingOptions(
      paymentMethod: $enumDecode(
          _$PaymentMethodShoppingOptionEnumMap, json['payment_method']),
      dropoffContactLoyaltyNumber:
          json['dropoff_contact_loyalty_number'] as String,
      paymentBarcode: json['payment_barcode'] as String?,
      readyForPickupBy: json['ready_for_pickup_by'] as String?,
    );

Map<String, dynamic> _$ShoppingOptionsToJson(ShoppingOptions instance) {
  final val = <String, dynamic>{
    'payment_method':
        _$PaymentMethodShoppingOptionEnumMap[instance.paymentMethod]!,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('payment_barcode', instance.paymentBarcode);
  writeNotNull('ready_for_pickup_by', instance.readyForPickupBy);
  val['dropoff_contact_loyalty_number'] = instance.dropoffContactLoyaltyNumber;
  return val;
}

const _$PaymentMethodShoppingOptionEnumMap = {
  PaymentMethodShoppingOption.redCard: 'red_card',
  PaymentMethodShoppingOption.barcode: 'barcode',
  PaymentMethodShoppingOption.shopCard: 'shop_card',
  PaymentMethodShoppingOption.giftCards: 'gift_cards',
};
