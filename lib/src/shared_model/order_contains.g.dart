// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_contains.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderContains _$OrderContainsFromJson(Map<String, dynamic> json) =>
    OrderContains(
      alcohol: json['alcohol'] as bool?,
      pharmacyItems: json['pharmacy_items'] as bool?,
      ageRestrictedPharmacyItems:
          json['age_restricted_pharmacy_items'] as bool?,
    );

Map<String, dynamic> _$OrderContainsToJson(OrderContains instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('alcohol', instance.alcohol);
  writeNotNull('pharmacy_items', instance.pharmacyItems);
  writeNotNull(
      'age_restricted_pharmacy_items', instance.ageRestrictedPharmacyItems);
  return val;
}
