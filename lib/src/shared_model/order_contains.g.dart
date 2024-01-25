// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_contains.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderContains _$OrderContainsFromJson(Map<String, dynamic> json) =>
    OrderContains(
      alcohol: json['alcohol'] as bool?,
    );

Map<String, dynamic> _$OrderContainsToJson(OrderContains instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('alcohol', instance.alcohol);
  return val;
}
