// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'accept_quote.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AcceptQuoteRequest _$AcceptQuoteRequestFromJson(Map<String, dynamic> json) =>
    AcceptQuoteRequest(
      tip: json['tip'] as int,
      dropoffPhoneNumber: json['dropoff_phone_number'] as String,
    );

Map<String, dynamic> _$AcceptQuoteRequestToJson(AcceptQuoteRequest instance) =>
    <String, dynamic>{
      'tip': instance.tip,
      'dropoff_phone_number': instance.dropoffPhoneNumber,
    };
