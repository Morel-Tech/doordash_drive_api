import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'order_contains.g.dart';

@JsonSerializable()
class OrderContains extends Equatable {
  const OrderContains({
    this.alcohol,
    this.pharmacyItems,
    this.ageRestrictedPharmacyItems,
  });

  /// Converts a [Map]<[String], [dynamic]> to a [OrderContains]
  factory OrderContains.fromJson(Map<String, dynamic> json) =>
      _$OrderContainsFromJson(json);

  /// Converts a [OrderContains] to a [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() => _$OrderContainsToJson(this);

  /// Flag to specify if the delivery contains alcohol.
  final bool? alcohol;

  /// Flag to specify if the delivery contains pharmacy items.
  final bool? pharmacyItems;

  /// Flag to specify if the delivery contains age restricted pharmacy items.
  /// The order is an S3+ pharmacy order which requires ID Verification and
  /// can only be delivered to 18+/21+ year olds.
  final bool? ageRestrictedPharmacyItems;

  @override
  List<Object?> get props => [
        alcohol,
        pharmacyItems,
        ageRestrictedPharmacyItems,
      ];
}
