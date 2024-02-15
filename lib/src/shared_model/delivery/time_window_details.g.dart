// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_window_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TimeWindowDetails _$TimeWindowDetailsFromJson(Map<String, dynamic> json) =>
    TimeWindowDetails(
      startTime: json['start_time'] as String?,
      endTime: json['end_time'] as String?,
    );

Map<String, dynamic> _$TimeWindowDetailsToJson(TimeWindowDetails instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('start_time', instance.startTime);
  writeNotNull('end_time', instance.endTime);
  return val;
}
