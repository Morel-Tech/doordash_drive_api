// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dropped_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DroppedItem _$DroppedItemFromJson(Map<String, dynamic> json) => DroppedItem(
      externalId: json['external_id'] as String,
      type: $enumDecode(_$DroppedItemTypeEnumMap, json['type']),
      reason: $enumDecode(_$DroppedItemReasonEnumMap, json['reason']),
    );

Map<String, dynamic> _$DroppedItemToJson(DroppedItem instance) =>
    <String, dynamic>{
      'external_id': instance.externalId,
      'type': _$DroppedItemTypeEnumMap[instance.type]!,
      'reason': _$DroppedItemReasonEnumMap[instance.reason]!,
    };

const _$DroppedItemTypeEnumMap = {
  DroppedItemType.mainItem: 'main_item',
  DroppedItemType.substituteItem: 'substitute_item',
};

const _$DroppedItemReasonEnumMap = {
  DroppedItemReason.itemNotFoundInCatalog: 'item_not_found_in_catalog',
  DroppedItemReason.itemSuspended: 'item_suspended',
  DroppedItemReason.itemNotConsidered: 'item_not_considered',
};
