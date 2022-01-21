// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderCommon _$OrderCommonFromJson(Map json) => $checkedCreate(
      'OrderCommon',
      json,
      ($checkedConvert) {
        final val = OrderCommon(
          id: $checkedConvert('id', (v) => v as String),
          platinum: $checkedConvert('platinum', (v) => v as int),
          quantity: $checkedConvert('quantity', (v) => v as int),
          orderType: $checkedConvert(
              'order_type', (v) => $enumDecode(_$OrderTypeEnumMap, v)),
          platform: $checkedConvert(
              'platform', (v) => $enumDecode(_$MarketPlatformEnumMap, v)),
          region: $checkedConvert('region', (v) => v as String),
          creationDate: $checkedConvert(
              'creation_date', (v) => DateTime.parse(v as String)),
          lastUpdate: $checkedConvert(
              'last_update', (v) => DateTime.parse(v as String)),
          visible: $checkedConvert('visible', (v) => v as bool),
          user: $checkedConvert('user',
              (v) => UserShort.fromJson(Map<String, dynamic>.from(v as Map))),
        );
        return val;
      },
      fieldKeyMap: const {
        'orderType': 'order_type',
        'creationDate': 'creation_date',
        'lastUpdate': 'last_update'
      },
    );

Map<String, dynamic> _$OrderCommonToJson(OrderCommon instance) =>
    <String, dynamic>{
      'id': instance.id,
      'platinum': instance.platinum,
      'quantity': instance.quantity,
      'order_type': _$OrderTypeEnumMap[instance.orderType],
      'platform': _$MarketPlatformEnumMap[instance.platform],
      'region': instance.region,
      'creation_date': instance.creationDate.toIso8601String(),
      'last_update': instance.lastUpdate.toIso8601String(),
      'visible': instance.visible,
      'user': instance.user.toJson(),
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

OrderRow _$OrderRowFromJson(Map json) => $checkedCreate(
      'OrderRow',
      json,
      ($checkedConvert) {
        final val = OrderRow(
          id: $checkedConvert('id', (v) => v as String),
          platinum: $checkedConvert('platinum', (v) => v as int),
          quantity: $checkedConvert('quantity', (v) => v as int),
          orderType: $checkedConvert(
              'order_type', (v) => $enumDecode(_$OrderTypeEnumMap, v)),
          platform: $checkedConvert(
              'platform', (v) => $enumDecode(_$MarketPlatformEnumMap, v)),
          region: $checkedConvert('region', (v) => v as String),
          creationDate: $checkedConvert(
              'creation_date', (v) => DateTime.parse(v as String)),
          lastUpdate: $checkedConvert(
              'last_update', (v) => DateTime.parse(v as String)),
          visible: $checkedConvert('visible', (v) => v as bool),
          user: $checkedConvert('user',
              (v) => UserShort.fromJson(Map<String, dynamic>.from(v as Map))),
        );
        return val;
      },
      fieldKeyMap: const {
        'orderType': 'order_type',
        'creationDate': 'creation_date',
        'lastUpdate': 'last_update'
      },
    );

Map<String, dynamic> _$OrderRowToJson(OrderRow instance) => <String, dynamic>{
      'id': instance.id,
      'platinum': instance.platinum,
      'quantity': instance.quantity,
      'order_type': _$OrderTypeEnumMap[instance.orderType],
      'platform': _$MarketPlatformEnumMap[instance.platform],
      'region': instance.region,
      'creation_date': instance.creationDate.toIso8601String(),
      'last_update': instance.lastUpdate.toIso8601String(),
      'visible': instance.visible,
      'user': instance.user.toJson(),
    };

OrderFull _$OrderFullFromJson(Map json) => $checkedCreate(
      'OrderFull',
      json,
      ($checkedConvert) {
        final val = OrderFull(
          id: $checkedConvert('id', (v) => v as String),
          platinum: $checkedConvert('platinum', (v) => v as int),
          quantity: $checkedConvert('quantity', (v) => v as int),
          orderType: $checkedConvert(
              'order_type', (v) => $enumDecode(_$OrderTypeEnumMap, v)),
          platform: $checkedConvert(
              'platform', (v) => $enumDecode(_$MarketPlatformEnumMap, v)),
          region: $checkedConvert('region', (v) => v as String),
          creationDate: $checkedConvert(
              'creation_date', (v) => DateTime.parse(v as String)),
          lastUpdate: $checkedConvert(
              'last_update', (v) => DateTime.parse(v as String)),
          visible: $checkedConvert('visible', (v) => v as bool),
          user: $checkedConvert('user',
              (v) => UserShort.fromJson(Map<String, dynamic>.from(v as Map))),
          item: $checkedConvert('item',
              (v) => ItemInOrder.fromJson(Map<String, dynamic>.from(v as Map))),
        );
        return val;
      },
      fieldKeyMap: const {
        'orderType': 'order_type',
        'creationDate': 'creation_date',
        'lastUpdate': 'last_update'
      },
    );

Map<String, dynamic> _$OrderFullToJson(OrderFull instance) => <String, dynamic>{
      'id': instance.id,
      'platinum': instance.platinum,
      'quantity': instance.quantity,
      'order_type': _$OrderTypeEnumMap[instance.orderType],
      'platform': _$MarketPlatformEnumMap[instance.platform],
      'region': instance.region,
      'creation_date': instance.creationDate.toIso8601String(),
      'last_update': instance.lastUpdate.toIso8601String(),
      'visible': instance.visible,
      'user': instance.user.toJson(),
      'item': instance.item.toJson(),
    };
