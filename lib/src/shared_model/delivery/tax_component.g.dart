// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tax_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TaxComponent _$TaxComponentFromJson(Map<String, dynamic> json) => TaxComponent(
      type: $enumDecode(_$TaxComponentTypeEnumMap, json['type']),
      amount: json['amount'] as int,
    );

Map<String, dynamic> _$TaxComponentToJson(TaxComponent instance) =>
    <String, dynamic>{
      'type': _$TaxComponentTypeEnumMap[instance.type]!,
      'amount': instance.amount,
    };

const _$TaxComponentTypeEnumMap = {
  TaxComponentType.taxTypeUnspecified: 'tax_type_unspecified',
  TaxComponentType.gstHst: 'gst_hst',
  TaxComponentType.qst: 'qst',
  TaxComponentType.pst: 'pst',
  TaxComponentType.unrecognized: 'unrecognized',
};
