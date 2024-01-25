import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'order_contains.g.dart';

@JsonSerializable()
class OrderContains extends Equatable {
  const OrderContains({
    this.alcohol,
  });

  /// Converts a [Map]<[String], [dynamic]> to a [OrderContains]
  factory OrderContains.fromJson(Map<String, dynamic> json) =>
      _$OrderContainsFromJson(json);

  /// Converts a [OrderContains] to a [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() => _$OrderContainsToJson(this);

  /// Flag to specify if the delivery contains alcohol.
  final bool? alcohol;

  @override
  List<Object?> get props => [alcohol];
}
