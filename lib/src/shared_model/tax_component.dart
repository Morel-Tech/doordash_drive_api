import 'package:doordash_drive_api/doordash_drive_api.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'tax_component.g.dart';

@JsonSerializable()
class TaxComponent extends Equatable {
  const TaxComponent({
    required this.type,
    required this.amount,
  });

  /// Converts a [Map]<[String], [dynamic]> to a [TaxComponent]
  factory TaxComponent.fromJson(Map<String, dynamic> json) =>
      _$TaxComponentFromJson(json);

  /// Converts a [TaxComponent] to a [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() => _$TaxComponentToJson(this);

  /// Name of the tax component.
  final TaxComponentType type;

  /// Amount of the tax component in the lowest currency denomination (e.g.
  /// cents). i.e. $5.99 = 599
  final int amount;

  @override
  List<Object?> get props => [];
}
