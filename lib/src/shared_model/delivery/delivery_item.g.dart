// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeliveryItem _$DeliveryItemFromJson(Map<String, dynamic> json) => DeliveryItem(
      name: json['name'] as String,
      quantity: json['quantity'] as int,
      description: json['description'] as String?,
      externalId: json['external_id'] as String?,
      externalInstanceId: json['external_instance_id'] as int?,
      volume: (json['volume'] as num?)?.toDouble(),
      weight: (json['weight'] as num?)?.toDouble(),
      length: (json['length'] as num?)?.toDouble(),
      width: (json['width'] as num?)?.toDouble(),
      height: (json['height'] as num?)?.toDouble(),
      price: json['price'] as int?,
      barcode: json['barcode'] as int?,
      itemOptions: json['item_options'] == null
          ? null
          : DeliveryItemOptions.fromJson(
              json['item_options'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DeliveryItemToJson(DeliveryItem instance) {
  final val = <String, dynamic>{
    'name': instance.name,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('description', instance.description);
  val['quantity'] = instance.quantity;
  writeNotNull('external_id', instance.externalId);
  writeNotNull('external_instance_id', instance.externalInstanceId);
  writeNotNull('volume', instance.volume);
  writeNotNull('weight', instance.weight);
  writeNotNull('length', instance.length);
  writeNotNull('width', instance.width);
  writeNotNull('height', instance.height);
  writeNotNull('price', instance.price);
  writeNotNull('barcode', instance.barcode);
  writeNotNull('item_options', instance.itemOptions?.toJson());
  return val;
}
