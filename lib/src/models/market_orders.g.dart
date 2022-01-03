// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'market_orders.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MarketOrders _$MarketOrdersFromJson(Map json) => $checkedCreate(
      'MarketOrders',
      json,
      ($checkedConvert) {
        final val = MarketOrders(
          sellOrders: $checkedConvert(
              'sell_orders',
              (v) => (v as List<dynamic>)
                  .map((e) =>
                      ItemOrder.fromJson(Map<String, dynamic>.from(e as Map)))
                  .toList()),
          buyOrders: $checkedConvert(
              'buy_orders',
              (v) => (v as List<dynamic>)
                  .map((e) =>
                      ItemOrder.fromJson(Map<String, dynamic>.from(e as Map)))
                  .toList()),
        );
        return val;
      },
      fieldKeyMap: const {
        'sellOrders': 'sell_orders',
        'buyOrders': 'buy_orders'
      },
    );

Map<String, dynamic> _$MarketOrdersToJson(MarketOrders instance) =>
    <String, dynamic>{
      'sell_orders': instance.sellOrders.map((e) => e.toJson()).toList(),
      'buy_orders': instance.buyOrders.map((e) => e.toJson()).toList(),
    };

RecentMarketOrders _$RecentMarketOrdersFromJson(Map json) => $checkedCreate(
      'RecentMarketOrders',
      json,
      ($checkedConvert) {
        final val = RecentMarketOrders(
          sellOrders: $checkedConvert(
              'sell_orders',
              (v) => (v as List<dynamic>)
                  .map((e) =>
                      RecentOrder.fromJson(Map<String, dynamic>.from(e as Map)))
                  .toList()),
          buyOrders: $checkedConvert(
              'buy_orders',
              (v) => (v as List<dynamic>)
                  .map((e) =>
                      RecentOrder.fromJson(Map<String, dynamic>.from(e as Map)))
                  .toList()),
        );
        return val;
      },
      fieldKeyMap: const {
        'sellOrders': 'sell_orders',
        'buyOrders': 'buy_orders'
      },
    );

Map<String, dynamic> _$RecentMarketOrdersToJson(RecentMarketOrders instance) =>
    <String, dynamic>{
      'sell_orders': instance.sellOrders.map((e) => e.toJson()).toList(),
      'buy_orders': instance.buyOrders.map((e) => e.toJson()).toList(),
    };
