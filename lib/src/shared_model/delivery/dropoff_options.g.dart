// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dropoff_options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DropoffOptions _$DropoffOptionsFromJson(Map<String, dynamic> json) =>
    DropoffOptions(
      $enumDecodeNullable(_$SignatureDropoffOptionEnumMap, json['signature']),
      $enumDecodeNullable(
          _$IdVerificationDropoffOptionEnumMap, json['id_verification']),
      $enumDecodeNullable(
          _$ProofOfDeliveryDropoffOptionEnumMap, json['proof_of_delivery']),
    );

Map<String, dynamic> _$DropoffOptionsToJson(DropoffOptions instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'signature', _$SignatureDropoffOptionEnumMap[instance.signature]);
  writeNotNull('id_verification',
      _$IdVerificationDropoffOptionEnumMap[instance.idVerification]);
  writeNotNull('proof_of_delivery',
      _$ProofOfDeliveryDropoffOptionEnumMap[instance.proofOfDelivery]);
  return val;
}

const _$SignatureDropoffOptionEnumMap = {
  SignatureDropoffOption.required: 'required',
  SignatureDropoffOption.preferred: 'preferred',
  SignatureDropoffOption.none: 'none',
};

const _$IdVerificationDropoffOptionEnumMap = {
  IdVerificationDropoffOption.required: 'required',
  IdVerificationDropoffOption.preferred: 'preferred',
  IdVerificationDropoffOption.none: 'none',
};

const _$ProofOfDeliveryDropoffOptionEnumMap = {
  ProofOfDeliveryDropoffOption.photoRequired: 'photo_required',
  ProofOfDeliveryDropoffOption.photoPreferred: 'photo_preferred',
  ProofOfDeliveryDropoffOption.pinCode: 'pin_code',
  ProofOfDeliveryDropoffOption.none: 'none',
};
