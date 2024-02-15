import 'package:doordash_drive_api/doordash_drive_api.dart';
import 'package:doordash_drive_api/src/shared_model/delivery/index.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'dropped_item.g.dart';

@JsonSerializable()
class DroppedItem extends Equatable {
  const DroppedItem({
    required this.externalId,
    required this.type,
    required this.reason,
  });

  /// Converts a [Map]<[String], [dynamic]> to a [DroppedItem]
  factory DroppedItem.fromJson(Map<String, dynamic> json) =>
      _$DroppedItemFromJson(json);

  /// Converts a [DroppedItem] to a [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() => _$DroppedItemToJson(this);

  final String externalId;
  final DroppedItemType type;
  final DroppedItemReason reason;

  @override
  List<Object?> get props => [externalId, type, reason];
}
