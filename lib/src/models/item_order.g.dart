part of 'item_order.dart';

ItemOrder _$ItemOrderFromJson(Map<String, dynamic> json) => ItemOrder(
      id: json['id'] as String,
      platinum: json['platinum'] as int,
      quantity: json['quantity'] as int,
      orderType: OrderType.fromJson(json['orderType'] as Map<String, dynamic>),
      platform: MarketPlatform.fromJson(json['platform'] as Map<String, dynamic>),
      region: json['region'] as String,
      creationDate: json['creationDate'] as DateTime,
      lastUpdate: json['lastUpdate'] as DateTime,
      subtype: json['subtype'] as String,
      visible: json['visible'] as bool,
    );

Map<String, dynamic> _$ItemOrderToJson(ItemOrder instance) => <String, dynamic>{ 
      'id': instance.id,
      'platinum': instance.platinum,
      'quantity': instance.quantity,
      'orderType': instance.orderType,
      'platform': instance.platform,
      'region': instance.region,
      'creationDate': instance.creationDate,
      'lastUpdate': instance.lastUpdate,
      'subtype': instance.subtype,
      'visible': instance.visible,
    };