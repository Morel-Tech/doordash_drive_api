import 'package:doordash_drive_api/doordash_drive_api.dart';
import 'package:doordash_drive_api/src/shared_model/delivery/index.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'fee_component.g.dart';

@JsonSerializable()
class FeeComponent extends Equatable {
  const FeeComponent({
    required this.type,
    required this.amount,
  });

  /// Converts a [Map]<[String], [dynamic]> to a [FeeComponent]
  factory FeeComponent.fromJson(Map<String, dynamic> json) =>
      _$FeeComponentFromJson(json);

  /// Converts a [FeeComponent] to a [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() => _$FeeComponentToJson(this);

  /// Name of the fee component.
  final FeeComponentType type;

  /// Amount of the fee component in the lowest currency denomination (e.g.
  /// cents). i.e. $5.99 = 599
  final int amount;

  @override
  List<Object?> get props => [type, amount];
}
