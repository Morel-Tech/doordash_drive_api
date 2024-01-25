import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'time_window_details.g.dart';

@JsonSerializable()
class TimeWindowDetails extends Equatable {
  const TimeWindowDetails({
    this.startTime,
    this.endTime,
  });

  /// Converts a [Map]<[String], [dynamic]> to a [TimeWindowDetails]
  factory TimeWindowDetails.fromJson(Map<String, dynamic> json) =>
      _$TimeWindowDetailsFromJson(json);

  /// Converts a [TimeWindowDetails] to a [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() => _$TimeWindowDetailsToJson(this);

  /// Time details in ISO-8601 format.
  final String? startTime;

  /// Time details in ISO-8601 format.
  final String? endTime;

  @override
  List<Object?> get props => [startTime, endTime];
}
