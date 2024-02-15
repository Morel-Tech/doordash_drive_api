// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_item_options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeliveryItemOptions _$DeliveryItemOptionsFromJson(Map<String, dynamic> json) =>
    DeliveryItemOptions(
      weightUnit: json['weight_unit'] as String,
      substitutionPreference: json['substitution_preference'] as String,
      substituteItemIds: (json['substitute_item_ids'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$DeliveryItemOptionsToJson(DeliveryItemOptions instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('substitute_item_ids', instance.substituteItemIds);
  val['weight_unit'] = instance.weightUnit;
  val['substitution_preference'] = instance.substitutionPreference;
  return val;
}
