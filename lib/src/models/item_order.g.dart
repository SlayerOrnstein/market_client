// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ItemOrder _$ItemOrderFromJson(Map json) {
  return $checkedNew('ItemOrder', json, () {
    final val = ItemOrder(
      creationDate: $checkedConvert(
          json, 'creation_date', (v) => DateTime.parse(v as String)),
      visible: $checkedConvert(json, 'visible', (v) => v as bool),
      quantity: $checkedConvert(json, 'quantity', (v) => v as int),
      user: $checkedConvert(json, 'user',
          (v) => MarketUser.fromJson(Map<String, dynamic>.from(v as Map))),
      lastUpdate: $checkedConvert(
          json, 'last_update', (v) => DateTime.parse(v as String)),
      platinum: $checkedConvert(json, 'platinum', (v) => (v as num).toDouble()),
      orderType: $checkedConvert(
          json, 'order_type', (v) => _$enumDecode(_$OrderTypeEnumMap, v)),
      region: $checkedConvert(json, 'region', (v) => v as String),
      platform: $checkedConvert(
          json, 'platform', (v) => _$enumDecode(_$MarketPlatformEnumMap, v)),
      id: $checkedConvert(json, 'id', (v) => v as String),
      item: $checkedConvert(json, 'item',
          (v) => OrderItem.fromJson(Map<String, dynamic>.from(v as Map))),
    );
    return val;
  }, fieldKeyMap: const {
    'creationDate': 'creation_date',
    'lastUpdate': 'last_update',
    'orderType': 'order_type'
  });
}

Map<String, dynamic> _$ItemOrderToJson(ItemOrder instance) => <String, dynamic>{
      'creation_date': instance.creationDate.toIso8601String(),
      'visible': instance.visible,
      'quantity': instance.quantity,
      'user': instance.user.toJson(),
      'last_update': instance.lastUpdate.toIso8601String(),
      'platinum': instance.platinum,
      'order_type': _$OrderTypeEnumMap[instance.orderType],
      'region': instance.region,
      'platform': _$MarketPlatformEnumMap[instance.platform],
      'id': instance.id,
      'item': instance.item.toJson(),
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

const _$OrderTypeEnumMap = {
  OrderType.buy: 'buy',
  OrderType.sell: 'sell',
};

const _$MarketPlatformEnumMap = {
  MarketPlatform.pc: 'pc',
  MarketPlatform.ps4: 'ps4',
  MarketPlatform.swi: 'swi',
  MarketPlatform.xbox: 'xbox',
};

OrderItem _$OrderItemFromJson(Map json) {
  return $checkedNew('OrderItem', json, () {
    final val = OrderItem(
      iconFormat: $checkedConvert(json, 'icon_format', (v) => v as String),
      thumb: $checkedConvert(json, 'thumb', (v) => v as String),
      id: $checkedConvert(json, 'id', (v) => v as String),
      urlName: $checkedConvert(json, 'url_name', (v) => v as String),
      tags: $checkedConvert(json, 'tags',
          (v) => (v as List<dynamic>).map((e) => e as String).toList()),
      subIcon: $checkedConvert(json, 'sub_icon', (v) => v as String?),
      modMaxRank: $checkedConvert(json, 'mod_max_rank', (v) => v as int?),
      icon: $checkedConvert(json, 'icon', (v) => v as String),
      en: $checkedConvert(json, 'en',
          (v) => ItemLanguage.fromJson(Map<String, dynamic>.from(v as Map))),
      ru: $checkedConvert(json, 'ru',
          (v) => ItemLanguage.fromJson(Map<String, dynamic>.from(v as Map))),
      ko: $checkedConvert(json, 'ko',
          (v) => ItemLanguage.fromJson(Map<String, dynamic>.from(v as Map))),
      fr: $checkedConvert(json, 'fr',
          (v) => ItemLanguage.fromJson(Map<String, dynamic>.from(v as Map))),
      sv: $checkedConvert(json, 'sv',
          (v) => ItemLanguage.fromJson(Map<String, dynamic>.from(v as Map))),
      de: $checkedConvert(json, 'de',
          (v) => ItemLanguage.fromJson(Map<String, dynamic>.from(v as Map))),
      zhhant: $checkedConvert(json, 'zh-hant',
          (v) => ItemLanguage.fromJson(Map<String, dynamic>.from(v as Map))),
      zhhans: $checkedConvert(json, 'zh-hans',
          (v) => ItemLanguage.fromJson(Map<String, dynamic>.from(v as Map))),
      pt: $checkedConvert(json, 'pt',
          (v) => ItemLanguage.fromJson(Map<String, dynamic>.from(v as Map))),
      es: $checkedConvert(json, 'es',
          (v) => ItemLanguage.fromJson(Map<String, dynamic>.from(v as Map))),
      pl: $checkedConvert(json, 'pl',
          (v) => ItemLanguage.fromJson(Map<String, dynamic>.from(v as Map))),
      platinum: $checkedConvert(json, 'platinum', (v) => v as int),
      orderType: $checkedConvert(
          json, 'order_type', (v) => _$enumDecode(_$OrderTypeEnumMap, v)),
      platform: $checkedConvert(
          json, 'platform', (v) => _$enumDecode(_$MarketPlatformEnumMap, v)),
      creationDate: $checkedConvert(
          json, 'creation_date', (v) => DateTime.parse(v as String)),
      quantity: $checkedConvert(json, 'quantity', (v) => v as int),
      lastUpdate: $checkedConvert(
          json, 'last_update', (v) => DateTime.parse(v as String)),
    );
    return val;
  }, fieldKeyMap: const {
    'iconFormat': 'icon_format',
    'urlName': 'url_name',
    'subIcon': 'sub_icon',
    'modMaxRank': 'mod_max_rank',
    'zhhant': 'zh-hant',
    'zhhans': 'zh-hans',
    'orderType': 'order_type',
    'creationDate': 'creation_date',
    'lastUpdate': 'last_update'
  });
}

Map<String, dynamic> _$OrderItemToJson(OrderItem instance) => <String, dynamic>{
      'icon_format': instance.iconFormat,
      'thumb': instance.thumb,
      'id': instance.id,
      'url_name': instance.urlName,
      'tags': instance.tags,
      'sub_icon': instance.subIcon,
      'mod_max_rank': instance.modMaxRank,
      'icon': instance.icon,
      'en': instance.en.toJson(),
      'ru': instance.ru.toJson(),
      'ko': instance.ko.toJson(),
      'fr': instance.fr.toJson(),
      'sv': instance.sv.toJson(),
      'de': instance.de.toJson(),
      'zh-hant': instance.zhhant.toJson(),
      'zh-hans': instance.zhhans.toJson(),
      'pt': instance.pt.toJson(),
      'es': instance.es.toJson(),
      'pl': instance.pl.toJson(),
      'platinum': instance.platinum,
      'order_type': _$OrderTypeEnumMap[instance.orderType],
      'platform': _$MarketPlatformEnumMap[instance.platform],
      'creation_date': instance.creationDate.toIso8601String(),
      'quantity': instance.quantity,
      'last_update': instance.lastUpdate.toIso8601String(),
    };
