import 'package:json_annotation/json_annotation.dart';

@JsonEnum(fieldRename: FieldRename.snake)
enum FeeComponentType {
  driveFeeComponentTypeUnspecified,
  distanceBasedFee,
  orderValueBasedFee,
  serviceFee,
  mxSubsidy,
  other,
  dasherRegulatoryFee,
  promotion,
  smallOrderFee,
  flatFee,
  dwtFee,
  unrecognized,
}
