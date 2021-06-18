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
      platinum: $checkedConvert(json, 'platinum', (v) => v as int),
      orderType: $checkedConvert(
          json, 'order_type', (v) => _$enumDecode(_$OrderTypeEnumMap, v)),
      region: $checkedConvert(json, 'region', (v) => v as String),
      platform: $checkedConvert(
          json, 'platform', (v) => _$enumDecode(_$MarketPlatformEnumMap, v)),
      id: $checkedConvert(json, 'id', (v) => v as String),
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
  MarketPlatform.xbox: 'xbox',
  MarketPlatform.swi: 'swi',
};
