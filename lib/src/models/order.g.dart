// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderRow _$OrderRowFromJson(Map<String, dynamic> json) => OrderRow(
      id: json['id'] as String,
      platinum: json['platinum'] as int,
      quantity: json['quantity'] as int,
      orderType: $enumDecode(_$OrderTypeEnumMap, json['order_type']),
      platform: $enumDecode(_$MarketPlatformEnumMap, json['platform']),
      region: json['region'] as String,
      creationDate: DateTime.parse(json['creation_date'] as String),
      lastUpdate: DateTime.parse(json['last_update'] as String),
      subtype: json['subtype'] as String,
      visible: json['visible'] as bool,
      user: UserShort.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrderRowToJson(OrderRow instance) => <String, dynamic>{
      'id': instance.id,
      'platinum': instance.platinum,
      'quantity': instance.quantity,
      'order_type': _$OrderTypeEnumMap[instance.orderType]!,
      'platform': _$MarketPlatformEnumMap[instance.platform]!,
      'region': instance.region,
      'creation_date': instance.creationDate.toIso8601String(),
      'last_update': instance.lastUpdate.toIso8601String(),
      'subtype': instance.subtype,
      'visible': instance.visible,
      'user': instance.user,
    };

const _$OrderTypeEnumMap = {
  OrderType.sell: 'sell',
  OrderType.buy: 'buy',
};

const _$MarketPlatformEnumMap = {
  MarketPlatform.pc: 'pc',
  MarketPlatform.ps4: 'ps4',
  MarketPlatform.swi: 'switch',
  MarketPlatform.xbox: 'xbox',
};

OrderFull _$OrderFullFromJson(Map<String, dynamic> json) => OrderFull(
      id: json['id'] as String,
      platinum: json['platinum'] as int,
      quantity: json['quantity'] as int,
      orderType: $enumDecode(_$OrderTypeEnumMap, json['order_type']),
      platform: $enumDecode(_$MarketPlatformEnumMap, json['platform']),
      region: json['region'] as String,
      creationDate: DateTime.parse(json['creation_date'] as String),
      lastUpdate: DateTime.parse(json['last_update'] as String),
      subtype: json['subtype'] as String,
      visible: json['visible'] as bool,
      user: UserShort.fromJson(json['user'] as Map<String, dynamic>),
      item: ItemInOrder.fromJson(json['item'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrderFullToJson(OrderFull instance) => <String, dynamic>{
      'id': instance.id,
      'platinum': instance.platinum,
      'quantity': instance.quantity,
      'order_type': _$OrderTypeEnumMap[instance.orderType]!,
      'platform': _$MarketPlatformEnumMap[instance.platform]!,
      'region': instance.region,
      'creation_date': instance.creationDate.toIso8601String(),
      'last_update': instance.lastUpdate.toIso8601String(),
      'subtype': instance.subtype,
      'visible': instance.visible,
      'user': instance.user,
      'item': instance.item,
    };
