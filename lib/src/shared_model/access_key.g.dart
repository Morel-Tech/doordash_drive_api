// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'access_key.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AccessKey _$AccessKeyFromJson(Map<String, dynamic> json) => AccessKey(
      developerId: json['developer_id'] as String,
      keyId: json['key_id'] as String,
      signingSecret: json['signing_secret'] as String,
    );

Map<String, dynamic> _$AccessKeyToJson(AccessKey instance) => <String, dynamic>{
      'developer_id': instance.developerId,
      'key_id': instance.keyId,
      'signing_secret': instance.signingSecret,
    };
