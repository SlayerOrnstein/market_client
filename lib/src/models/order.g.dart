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
      creationDate:
          const DateTimeWithOffset().fromJson(json['creation_date'] as String),
      lastUpdate:
          const DateTimeWithOffset().fromJson(json['last_update'] as String),
      subtype: json['subtype'] as String?,
      visible: json['visible'] as bool,
      user: UserShort.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrderRowToJson(OrderRow instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'platinum': instance.platinum,
    'quantity': instance.quantity,
    'order_type': _$OrderTypeEnumMap[instance.orderType]!,
    'platform': _$MarketPlatformEnumMap[instance.platform]!,
    'region': instance.region,
    'creation_date': const DateTimeWithOffset().toJson(instance.creationDate),
    'last_update': const DateTimeWithOffset().toJson(instance.lastUpdate),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('subtype', instance.subtype);
  val['visible'] = instance.visible;
  val['user'] = instance.user.toJson();
  return val;
}

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
      creationDate:
          const DateTimeWithOffset().fromJson(json['creation_date'] as String),
      lastUpdate:
          const DateTimeWithOffset().fromJson(json['last_update'] as String),
      subtype: json['subtype'] as String?,
      visible: json['visible'] as bool,
      user: UserShort.fromJson(json['user'] as Map<String, dynamic>),
      item: ItemFull.fromJson(json['item'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrderFullToJson(OrderFull instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'platinum': instance.platinum,
    'quantity': instance.quantity,
    'order_type': _$OrderTypeEnumMap[instance.orderType]!,
    'platform': _$MarketPlatformEnumMap[instance.platform]!,
    'region': instance.region,
    'creation_date': const DateTimeWithOffset().toJson(instance.creationDate),
    'last_update': const DateTimeWithOffset().toJson(instance.lastUpdate),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('subtype', instance.subtype);
  val['visible'] = instance.visible;
  val['user'] = instance.user.toJson();
  val['item'] = instance.item.toJson();
  return val;
}
