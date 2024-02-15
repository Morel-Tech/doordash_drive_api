// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fee_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FeeComponent _$FeeComponentFromJson(Map<String, dynamic> json) => FeeComponent(
      type: $enumDecode(_$FeeComponentTypeEnumMap, json['type']),
      amount: json['amount'] as int,
    );

Map<String, dynamic> _$FeeComponentToJson(FeeComponent instance) =>
    <String, dynamic>{
      'type': _$FeeComponentTypeEnumMap[instance.type]!,
      'amount': instance.amount,
    };

const _$FeeComponentTypeEnumMap = {
  FeeComponentType.driveFeeComponentTypeUnspecified:
      'drive_fee_component_type_unspecified',
  FeeComponentType.distanceBasedFee: 'distance_based_fee',
  FeeComponentType.orderValueBasedFee: 'order_value_based_fee',
  FeeComponentType.serviceFee: 'service_fee',
  FeeComponentType.mxSubsidy: 'mx_subsidy',
  FeeComponentType.other: 'other',
  FeeComponentType.dasherRegulatoryFee: 'dasher_regulatory_fee',
  FeeComponentType.promotion: 'promotion',
  FeeComponentType.smallOrderFee: 'small_order_fee',
  FeeComponentType.flatFee: 'flat_fee',
  FeeComponentType.dwtFee: 'dwt_fee',
  FeeComponentType.unrecognized: 'unrecognized',
};
