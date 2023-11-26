// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recent_orders.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MostRecentOrders _$MostRecentOrdersFromJson(Map<String, dynamic> json) =>
    MostRecentOrders(
      sellOrders: (json['sell_orders'] as List<dynamic>)
          .map((e) => OrderFull.fromJson(e as Map<String, dynamic>))
          .toList(),
      buyOrders: (json['buy_orders'] as List<dynamic>)
          .map((e) => OrderFull.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MostRecentOrdersToJson(MostRecentOrders instance) =>
    <String, dynamic>{
      'sell_orders': instance.sellOrders.map((e) => e.toJson()).toList(),
      'buy_orders': instance.buyOrders.map((e) => e.toJson()).toList(),
    };
