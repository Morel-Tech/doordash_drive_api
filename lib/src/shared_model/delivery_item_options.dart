// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'delivery_item_options.g.dart';

@JsonSerializable()
class DeliveryItemOptions extends Equatable {
  const DeliveryItemOptions({
    required this.weightUnit,
    required this.substitutionPreference,
    this.substituteItemIds,
  });

  /// Converts a [Map]<[String], [dynamic]> to a [DeliveryItemOptions]
  factory DeliveryItemOptions.fromJson(Map<String, dynamic> json) =>
      _$DeliveryItemOptionsFromJson(json);

  /// Converts a [DeliveryItemOptions] to a [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() => _$DeliveryItemOptionsToJson(this);

  /// External IDs for items to be substituted if the original item is out of
  /// stock. Not updatable.
  final List<String>? substituteItemIds;

  /// The weight unit for the item being shopped. Not updatable.
  final String weightUnit;

  /// Substitution preference to apply when an item is out of stock. Not
  /// updatable.
  final String substitutionPreference;

  @override
  List<Object?> get props => [
        substituteItemIds,
        weightUnit,
        substitutionPreference,
      ];
}
