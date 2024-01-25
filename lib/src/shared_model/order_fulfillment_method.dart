import 'package:json_annotation/json_annotation.dart';

@JsonEnum(fieldRename: FieldRename.snake)
enum OrderFulfillmentMethod {
  standard,
  catering,
  shopStage,
  shopDeliver,
  parcel,
}
