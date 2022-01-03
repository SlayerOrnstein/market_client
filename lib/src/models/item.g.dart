// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MarketItem _$MarketItemFromJson(Map json) => $checkedCreate(
      'MarketItem',
      json,
      ($checkedConvert) {
        final val = MarketItem(
          thumb: $checkedConvert('thumb', (v) => v as String),
          itemName: $checkedConvert('item_name', (v) => v as String),
          id: $checkedConvert('id', (v) => v as String),
          urlName: $checkedConvert('url_name', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {'itemName': 'item_name', 'urlName': 'url_name'},
    );

Map<String, dynamic> _$MarketItemToJson(MarketItem instance) =>
    <String, dynamic>{
      'thumb': instance.thumb,
      'item_name': instance.itemName,
      'id': instance.id,
      'url_name': instance.urlName,
    };
