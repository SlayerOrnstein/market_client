// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MarketItem _$MarketItemFromJson(Map json) {
  return $checkedNew('MarketItem', json, () {
    final val = MarketItem(
      thumb: $checkedConvert(json, 'thumb', (v) => v as String),
      itemName: $checkedConvert(json, 'item_name', (v) => v as String),
      id: $checkedConvert(json, 'id', (v) => v as String),
      urlName: $checkedConvert(json, 'url_name', (v) => v as String),
    );
    return val;
  }, fieldKeyMap: const {'itemName': 'item_name', 'urlName': 'url_name'});
}

Map<String, dynamic> _$MarketItemToJson(MarketItem instance) =>
    <String, dynamic>{
      'thumb': instance.thumb,
      'item_name': instance.itemName,
      'id': instance.id,
      'url_name': instance.urlName,
    };
