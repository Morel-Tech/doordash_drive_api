// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'business.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Business _$BusinessFromJson(Map<String, dynamic> json) => Business(
      name: json['name'] as String,
      description: json['description'] as String,
      externalBusinessId: json['external_business_id'] as String,
      activationStatus: json['activation_status'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      lastUpdatedAt: DateTime.parse(json['last_updated_at'] as String),
      isTest: json['is_test'] as bool,
      externalMetadata: ExternalMetadata.fromJson(
          json['external_metadata'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BusinessToJson(Business instance) => <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'external_business_id': instance.externalBusinessId,
      'activation_status': instance.activationStatus,
      'created_at': instance.createdAt.toIso8601String(),
      'last_updated_at': instance.lastUpdatedAt.toIso8601String(),
      'is_test': instance.isTest,
      'external_metadata': instance.externalMetadata.toJson(),
    };

ExternalMetadata _$ExternalMetadataFromJson(Map<String, dynamic> json) =>
    ExternalMetadata(
      numberOfStores: json['number_of_stores'] as String,
      clientEmail: json['client_email'] as String,
      clientPhoneNumber: json['client_phone_number'] as String,
      externalStoreIds: (json['external_store_ids'] as List<dynamic>)
          .map((e) => e as String?)
          .toList(),
    );

Map<String, dynamic> _$ExternalMetadataToJson(ExternalMetadata instance) =>
    <String, dynamic>{
      'number_of_stores': instance.numberOfStores,
      'client_email': instance.clientEmail,
      'client_phone_number': instance.clientPhoneNumber,
      'external_store_ids': instance.externalStoreIds,
    };
