// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shipping_label.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ShippingLabel _$ShippingLabelFromJson(Map<String, dynamic> json) =>
    ShippingLabel(
      labelFormat: json['label_format'] as String?,
      labelSize: json['label_size'] as String?,
      printDensity: $enumDecodeNullable(
          _$ShippingLabelPrintDensityEnumMap, json['print_density']),
      labelString: json['label_string'] as String?,
    );

Map<String, dynamic> _$ShippingLabelToJson(ShippingLabel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('label_format', instance.labelFormat);
  writeNotNull('label_size', instance.labelSize);
  writeNotNull('print_density',
      _$ShippingLabelPrintDensityEnumMap[instance.printDensity]);
  writeNotNull('label_string', instance.labelString);
  return val;
}

const _$ShippingLabelPrintDensityEnumMap = {
  ShippingLabelPrintDensity.print203dpi: '203dpi',
  ShippingLabelPrintDensity.print300dpi: '300dpi',
};
