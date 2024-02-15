// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_business.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateBusinessRequest _$UpdateBusinessRequestFromJson(
        Map<String, dynamic> json) =>
    UpdateBusinessRequest(
      name: json['name'] as String?,
      description: json['description'] as String?,
      activationStatus: json['activation_status'] as String?,
    );

Map<String, dynamic> _$UpdateBusinessRequestToJson(
    UpdateBusinessRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('description', instance.description);
  writeNotNull('activation_status', instance.activationStatus);
  return val;
}
