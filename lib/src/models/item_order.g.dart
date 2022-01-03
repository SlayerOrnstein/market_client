// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ItemOrder _$ItemOrderFromJson(Map json) => $checkedCreate(
      'ItemOrder',
      json,
      ($checkedConvert) {
        final val = ItemOrder(
          creationDate: $checkedConvert(
              'creation_date', (v) => DateTime.parse(v as String)),
          modRank: $checkedConvert('mod_rank', (v) => v as int?),
          visible: $checkedConvert('visible', (v) => v as bool),
          quantity: $checkedConvert('quantity', (v) => v as int),
          user: $checkedConvert('user',
              (v) => MarketUser.fromJson(Map<String, dynamic>.from(v as Map))),
          lastUpdate: $checkedConvert(
              'last_update', (v) => DateTime.parse(v as String)),
          platinum: $checkedConvert('platinum', (v) => (v as num).toDouble()),
          orderType: $checkedConvert(
              'order_type', (v) => $enumDecode(_$OrderTypeEnumMap, v)),
          region: $checkedConvert('region', (v) => v as String),
          platform: $checkedConvert(
              'platform', (v) => $enumDecode(_$MarketPlatformEnumMap, v)),
          id: $checkedConvert('id', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {
        'creationDate': 'creation_date',
        'modRank': 'mod_rank',
        'lastUpdate': 'last_update',
        'orderType': 'order_type'
      },
    );

Map<String, dynamic> _$ItemOrderToJson(ItemOrder instance) => <String, dynamic>{
      'creation_date': instance.creationDate.toIso8601String(),
      'mod_rank': instance.modRank,
      'visible': instance.visible,
      'quantity': instance.quantity,
      'user': instance.user.toJson(),
      'last_update': instance.lastUpdate.toIso8601String(),
      'platinum': instance.platinum,
      'order_type': _$OrderTypeEnumMap[instance.orderType],
      'region': instance.region,
      'platform': _$MarketPlatformEnumMap[instance.platform],
      'id': instance.id,
    };

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

RecentOrder _$RecentOrderFromJson(Map json) => $checkedCreate(
      'RecentOrder',
      json,
      ($checkedConvert) {
        final val = RecentOrder(
          creationDate: $checkedConvert(
              'creation_date', (v) => DateTime.parse(v as String)),
          modRank: $checkedConvert('mod_rank', (v) => v as int?),
          visible: $checkedConvert('visible', (v) => v as bool),
          quantity: $checkedConvert('quantity', (v) => v as int),
          user: $checkedConvert('user',
              (v) => MarketUser.fromJson(Map<String, dynamic>.from(v as Map))),
          lastUpdate: $checkedConvert(
              'last_update', (v) => DateTime.parse(v as String)),
          platinum: $checkedConvert('platinum', (v) => (v as num).toDouble()),
          orderType: $checkedConvert(
              'order_type', (v) => $enumDecode(_$OrderTypeEnumMap, v)),
          region: $checkedConvert('region', (v) => v as String),
          platform: $checkedConvert(
              'platform', (v) => $enumDecode(_$MarketPlatformEnumMap, v)),
          id: $checkedConvert('id', (v) => v as String),
          item: $checkedConvert('item',
              (v) => OrderItem.fromJson(Map<String, dynamic>.from(v as Map))),
        );
        return val;
      },
      fieldKeyMap: const {
        'creationDate': 'creation_date',
        'modRank': 'mod_rank',
        'lastUpdate': 'last_update',
        'orderType': 'order_type'
      },
    );

Map<String, dynamic> _$RecentOrderToJson(RecentOrder instance) =>
    <String, dynamic>{
      'creation_date': instance.creationDate.toIso8601String(),
      'mod_rank': instance.modRank,
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

OrderItem _$OrderItemFromJson(Map json) => $checkedCreate(
      'OrderItem',
      json,
      ($checkedConvert) {
        final val = OrderItem(
          iconFormat: $checkedConvert('icon_format', (v) => v as String?),
          thumb: $checkedConvert('thumb', (v) => v as String),
          id: $checkedConvert('id', (v) => v as String),
          urlName: $checkedConvert('url_name', (v) => v as String),
          tags: $checkedConvert('tags',
              (v) => (v as List<dynamic>).map((e) => e as String).toList()),
          subIcon: $checkedConvert('sub_icon', (v) => v as String?),
          modMaxRank: $checkedConvert('mod_max_rank', (v) => v as int?),
          icon: $checkedConvert('icon', (v) => v as String),
          en: $checkedConvert(
              'en',
              (v) =>
                  ItemLanguage.fromJson(Map<String, dynamic>.from(v as Map))),
          ru: $checkedConvert(
              'ru',
              (v) =>
                  ItemLanguage.fromJson(Map<String, dynamic>.from(v as Map))),
          ko: $checkedConvert(
              'ko',
              (v) =>
                  ItemLanguage.fromJson(Map<String, dynamic>.from(v as Map))),
          fr: $checkedConvert(
              'fr',
              (v) =>
                  ItemLanguage.fromJson(Map<String, dynamic>.from(v as Map))),
          sv: $checkedConvert(
              'sv',
              (v) =>
                  ItemLanguage.fromJson(Map<String, dynamic>.from(v as Map))),
          de: $checkedConvert(
              'de',
              (v) =>
                  ItemLanguage.fromJson(Map<String, dynamic>.from(v as Map))),
          zhhant: $checkedConvert(
              'zh-hant',
              (v) =>
                  ItemLanguage.fromJson(Map<String, dynamic>.from(v as Map))),
          zhhans: $checkedConvert(
              'zh-hans',
              (v) =>
                  ItemLanguage.fromJson(Map<String, dynamic>.from(v as Map))),
          pt: $checkedConvert(
              'pt',
              (v) =>
                  ItemLanguage.fromJson(Map<String, dynamic>.from(v as Map))),
          es: $checkedConvert(
              'es',
              (v) =>
                  ItemLanguage.fromJson(Map<String, dynamic>.from(v as Map))),
          pl: $checkedConvert(
              'pl',
              (v) =>
                  ItemLanguage.fromJson(Map<String, dynamic>.from(v as Map))),
        );
        return val;
      },
      fieldKeyMap: const {
        'iconFormat': 'icon_format',
        'urlName': 'url_name',
        'subIcon': 'sub_icon',
        'modMaxRank': 'mod_max_rank',
        'zhhant': 'zh-hant',
        'zhhans': 'zh-hans'
      },
    );

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
    };
