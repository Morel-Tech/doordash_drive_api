import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'location.g.dart';

@JsonSerializable()
class Location extends Equatable {
  const Location({
    required this.lat,
    required this.lng,
  });

  /// Converts a [Map]<[String], [dynamic]> to a [Location]
  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);

  /// Converts a [Location] to a [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() => _$LocationToJson(this);

  /// Latitude of the location
  final double lat;

  /// Longitude of the location
  final double lng;

  @override
  List<Object?> get props => [lat, lng];
}
