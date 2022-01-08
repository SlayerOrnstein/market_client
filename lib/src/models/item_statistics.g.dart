// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_statistics.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MarketItemStatistics _$MarketItemStatisticsFromJson(Map json) => $checkedCreate(
      'MarketItemStatistics',
      json,
      ($checkedConvert) {
        final val = MarketItemStatistics(
          statisticsClosed: $checkedConvert(
              'statistics_closed',
              (v) => StatisticsClosed.fromJson(
                  Map<String, dynamic>.from(v as Map))),
          statisticsLive: $checkedConvert(
              'statistics_live',
              (v) =>
                  StatisticsLive.fromJson(Map<String, dynamic>.from(v as Map))),
        );
        return val;
      },
      fieldKeyMap: const {
        'statisticsClosed': 'statistics_closed',
        'statisticsLive': 'statistics_live'
      },
    );

Map<String, dynamic> _$MarketItemStatisticsToJson(
        MarketItemStatistics instance) =>
    <String, dynamic>{
      'statistics_closed': instance.statisticsClosed.toJson(),
      'statistics_live': instance.statisticsLive.toJson(),
    };

StatisticsClosed _$StatisticsClosedFromJson(Map json) => $checkedCreate(
      'StatisticsClosed',
      json,
      ($checkedConvert) {
        final val = StatisticsClosed(
          hours48: $checkedConvert(
              '48hours',
              (v) => (v as List<dynamic>)
                  .map((e) => ItemStatisticClosed.fromJson(
                      Map<String, dynamic>.from(e as Map)))
                  .toList()),
          days90: $checkedConvert(
              '90days',
              (v) => (v as List<dynamic>)
                  .map((e) => ItemStatisticClosed.fromJson(
                      Map<String, dynamic>.from(e as Map)))
                  .toList()),
        );
        return val;
      },
      fieldKeyMap: const {'hours48': '48hours', 'days90': '90days'},
    );

Map<String, dynamic> _$StatisticsClosedToJson(StatisticsClosed instance) =>
    <String, dynamic>{
      '48hours': instance.hours48.map((e) => e.toJson()).toList(),
      '90days': instance.days90.map((e) => e.toJson()).toList(),
    };

StatisticsLive _$StatisticsLiveFromJson(Map json) => $checkedCreate(
      'StatisticsLive',
      json,
      ($checkedConvert) {
        final val = StatisticsLive(
          hours48: $checkedConvert(
              '48hours',
              (v) => (v as List<dynamic>)
                  .map((e) => ItemStatisticLive.fromJson(
                      Map<String, dynamic>.from(e as Map)))
                  .toList()),
          days90: $checkedConvert(
              '90days',
              (v) => (v as List<dynamic>)
                  .map((e) => ItemStatisticLive.fromJson(
                      Map<String, dynamic>.from(e as Map)))
                  .toList()),
        );
        return val;
      },
      fieldKeyMap: const {'hours48': '48hours', 'days90': '90days'},
    );

Map<String, dynamic> _$StatisticsLiveToJson(StatisticsLive instance) =>
    <String, dynamic>{
      '48hours': instance.hours48.map((e) => e.toJson()).toList(),
      '90days': instance.days90.map((e) => e.toJson()).toList(),
    };

ItemStatisticClosed _$ItemStatisticClosedFromJson(Map json) => $checkedCreate(
      'ItemStatisticClosed',
      json,
      ($checkedConvert) {
        final val = ItemStatisticClosed(
          dateTime:
              $checkedConvert('dateTime', (v) => DateTime.parse(v as String)),
          volume: $checkedConvert('volume', (v) => v as int),
          minPrice: $checkedConvert('min_price', (v) => v as int),
          maxPrice: $checkedConvert('max_price', (v) => v as int),
          openPrice: $checkedConvert('open_price', (v) => v as int),
          closedPrice: $checkedConvert('closed_price', (v) => v as int),
          avgPrice: $checkedConvert('avg_price', (v) => v as int),
          waPrice: $checkedConvert('wa_price', (v) => v as int),
          median: $checkedConvert('median', (v) => v as int),
          movingAvg: $checkedConvert('moving_avg', (v) => v as int),
          donchTop: $checkedConvert('donch_top', (v) => v as int),
          donchBot: $checkedConvert('donch_bot', (v) => v as int),
          id: $checkedConvert('id', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {
        'minPrice': 'min_price',
        'maxPrice': 'max_price',
        'openPrice': 'open_price',
        'closedPrice': 'closed_price',
        'avgPrice': 'avg_price',
        'waPrice': 'wa_price',
        'movingAvg': 'moving_avg',
        'donchTop': 'donch_top',
        'donchBot': 'donch_bot'
      },
    );

Map<String, dynamic> _$ItemStatisticClosedToJson(
        ItemStatisticClosed instance) =>
    <String, dynamic>{
      'dateTime': instance.dateTime.toIso8601String(),
      'volume': instance.volume,
      'min_price': instance.minPrice,
      'max_price': instance.maxPrice,
      'open_price': instance.openPrice,
      'closed_price': instance.closedPrice,
      'avg_price': instance.avgPrice,
      'wa_price': instance.waPrice,
      'median': instance.median,
      'moving_avg': instance.movingAvg,
      'donch_top': instance.donchTop,
      'donch_bot': instance.donchBot,
      'id': instance.id,
    };

ItemStatisticLive _$ItemStatisticLiveFromJson(Map json) => $checkedCreate(
      'ItemStatisticLive',
      json,
      ($checkedConvert) {
        final val = ItemStatisticLive(
          dateTime:
              $checkedConvert('dateTime', (v) => DateTime.parse(v as String)),
          volume: $checkedConvert('volume', (v) => v as int),
          minPrice: $checkedConvert('min_price', (v) => v as int),
          maxPrice: $checkedConvert('max_price', (v) => v as int),
          avgPrice: $checkedConvert('avg_price', (v) => v as int),
          waPrice: $checkedConvert('wa_price', (v) => v as int),
          median: $checkedConvert('median', (v) => v as int),
          orderType: $checkedConvert(
              'order_type', (v) => $enumDecode(_$OrderTypeEnumMap, v)),
          id: $checkedConvert('id', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {
        'minPrice': 'min_price',
        'maxPrice': 'max_price',
        'avgPrice': 'avg_price',
        'waPrice': 'wa_price',
        'orderType': 'order_type'
      },
    );

Map<String, dynamic> _$ItemStatisticLiveToJson(ItemStatisticLive instance) =>
    <String, dynamic>{
      'dateTime': instance.dateTime.toIso8601String(),
      'volume': instance.volume,
      'min_price': instance.minPrice,
      'max_price': instance.maxPrice,
      'avg_price': instance.avgPrice,
      'wa_price': instance.waPrice,
      'median': instance.median,
      'order_type': _$OrderTypeEnumMap[instance.orderType],
      'id': instance.id,
    };

const _$OrderTypeEnumMap = {
  OrderType.buy: 'buy',
  OrderType.sell: 'sell',
};
