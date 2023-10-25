// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_short.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ItemShort _$ItemShortFromJson(Map<String, dynamic> json) => ItemShort(
      id: json['id'] as String,
      urlName: json['url_name'] as String,
      thumb: json['thumb'] as String,
      itemName: json['item_name'] as String,
      vaulted: json['vaulted'] as bool?,
    );

Map<String, dynamic> _$ItemShortToJson(ItemShort instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'url_name': instance.urlName,
    'thumb': instance.thumb,
    'item_name': instance.itemName,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('vaulted', instance.vaulted);
  return val;
}
