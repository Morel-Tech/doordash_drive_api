import 'package:json_annotation/json_annotation.dart';

@JsonEnum(fieldRename: FieldRename.snake)
enum PaymentMethodShoppingOption {
  redCard,
  barcode,
  shopCard,
  giftCards,
}
