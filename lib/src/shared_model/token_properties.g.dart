// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_properties.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TokenProperties _$TokenPropertiesFromJson(Map<String, dynamic> json) =>
    TokenProperties(
      developerId: json['developer_id'] as String,
      keyId: json['key_id'] as String,
      signingSecret: json['signing_secret'] as String,
    );

Map<String, dynamic> _$TokenPropertiesToJson(TokenProperties instance) =>
    <String, dynamic>{
      'developer_id': instance.developerId,
      'key_id': instance.keyId,
      'signing_secret': instance.signingSecret,
    };
