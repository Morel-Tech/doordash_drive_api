import 'package:json_annotation/json_annotation.dart';

enum ShippingLabelPrintDensity {
  @JsonValue('203dpi')
  print203dpi,
  @JsonValue('300dpi')
  print300dpi,
}
