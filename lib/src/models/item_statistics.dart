// ignore_for_file: public_member_api_docs

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:market_client/src/enums.dart';

part 'item_statistics.g.dart';

@JsonSerializable()
class MarketItemStatistics extends Equatable {
  const MarketItemStatistics({
    required this.statisticsClosed,
    required this.statisticsLive,
  });

  factory MarketItemStatistics.fromJson(Map<String, dynamic> json) {
    return _$MarketItemStatisticsFromJson(json);
  }

  @JsonKey(name: 'statistics_closed')
  final StatisticsClosed statisticsClosed;

  @JsonKey(name: 'statistics_live')
  final StatisticsLive statisticsLive;

  Map<String, dynamic> toJson() => _$MarketItemStatisticsToJson(this);

  @override
  List<Object?> get props => [statisticsClosed, statisticsLive];
}

abstract class Statistics extends Equatable {
  const Statistics({required this.hours48, required this.days90});

  final List<ItemStatistic> hours48;
  final List<ItemStatistic> days90;
}

abstract class ItemStatistic extends Equatable {
  const ItemStatistic();
}

/// {@template stats_closed}
/// Holds statistics for all sold/brought(?) for an item.
///
/// [hours48] holds statistics within a 48 hour period(?).
/// [days90] holds statistics within a 90 day period(?).
/// {@endtemplate}
@JsonSerializable()
class StatisticsClosed implements Statistics {
  /// {@macro stats_closed}
  const StatisticsClosed({required this.hours48, required this.days90});

  factory StatisticsClosed.fromJson(Map<String, dynamic> json) {
    return _$StatisticsClosedFromJson(json);
  }

  @override
  @JsonKey(name: '48hours')
  final List<ItemStatisticClosed> hours48;

  @override
  @JsonKey(name: '90days')
  final List<ItemStatisticClosed> days90;

  Map<String, dynamic> toJson() => _$StatisticsClosedToJson(this);

  @override
  List<Object?> get props => [days90, hours48];

  @override
  bool? get stringify => false;
}

/// {@template stats_live}
/// Holds statistics for a specfic item currently being sold/brought(?).
///
/// [hours48] holds statistics within a 48 hour period(?).
/// [days90] holds statistics within a 90 day period(?).
/// {@endtemplate}
@JsonSerializable()
class StatisticsLive implements Statistics {
  /// {@macro stats_live}
  const StatisticsLive({required this.hours48, required this.days90});

  factory StatisticsLive.fromJson(Map<String, dynamic> json) {
    return _$StatisticsLiveFromJson(json);
  }

  @override
  @JsonKey(name: '48hours')
  final List<ItemStatisticLive> hours48;

  @override
  @JsonKey(name: '90days')
  final List<ItemStatisticLive> days90;

  Map<String, dynamic> toJson() => _$StatisticsLiveToJson(this);

  @override
  List<Object?> get props => [days90, hours48];

  @override
  bool? get stringify => false;
}

/// {@template item_stats_closed}
/// Representes statistics for a sold/brought(?) item.
///
/// Sadly a lot of this isn't very well documented by Warframe market, So
/// although some of this speaks for itself some I'm unsure of.
/// {@endtemplate}
@JsonSerializable()
class ItemStatisticClosed extends ItemStatistic {
  /// {@macro item_stats_closed}
  const ItemStatisticClosed({
    required this.dateTime,
    required this.volume,
    required this.minPrice,
    required this.maxPrice,
    required this.openPrice,
    required this.closedPrice,
    required this.avgPrice,
    required this.waPrice,
    required this.median,
    required this.movingAvg,
    required this.donchTop,
    required this.donchBot,
    required this.id,
  });

  factory ItemStatisticClosed.fromJson(Map<String, dynamic> json) {
    return _$ItemStatisticClosedFromJson(json);
  }

  final DateTime dateTime;

  final int volume;

  @JsonKey(name: 'min_price')
  final int minPrice;

  @JsonKey(name: 'max_price')
  final int maxPrice;

  @JsonKey(name: 'open_price')
  final int openPrice;

  @JsonKey(name: 'closed_price')
  final int closedPrice;

  @JsonKey(name: 'avg_price')
  final int avgPrice;

  @JsonKey(name: 'wa_price')
  final int waPrice;

  final int median;

  @JsonKey(name: 'moving_avg')
  final int movingAvg;

  @JsonKey(name: 'donch_top')
  final int donchTop;

  @JsonKey(name: 'donch_bot')
  final int donchBot;

  final String id;

  Map<String, dynamic> toJson() => _$ItemStatisticClosedToJson(this);

  @override
  List<Object?> get props {
    return [
      dateTime,
      volume,
      minPrice,
      maxPrice,
      openPrice,
      closedPrice,
      avgPrice,
      waPrice,
      median,
      movingAvg,
      donchTop,
      donchTop,
      id
    ];
  }
}

/// {@template item_stats_live}
/// Representes statistics for items currently being sold/brought(?).
///
/// Sadly a lot of this isn't very well documented by Warframe market, So
/// although some of this speaks for itself some I'm unsure of.
/// {@endtemplate}
@JsonSerializable()
class ItemStatisticLive extends ItemStatistic {
  /// {@macro item_stats_live}
  const ItemStatisticLive({
    required this.dateTime,
    required this.volume,
    required this.minPrice,
    required this.maxPrice,
    required this.avgPrice,
    required this.waPrice,
    required this.median,
    required this.orderType,
    required this.id,
  });

  factory ItemStatisticLive.fromJson(Map<String, dynamic> json) {
    return _$ItemStatisticLiveFromJson(json);
  }

  final DateTime dateTime;

  final int volume;

  @JsonKey(name: 'min_price')
  final int minPrice;

  @JsonKey(name: 'max_price')
  final int maxPrice;

  @JsonKey(name: 'avg_price')
  final int avgPrice;

  @JsonKey(name: 'wa_price')
  final int waPrice;

  final int median;

  @JsonKey(name: 'order_type')
  final OrderType orderType;

  final String id;

  Map<String, dynamic> toJson() => _$ItemStatisticLiveToJson(this);

  @override
  List<Object?> get props {
    return [
      dateTime,
      volume,
      minPrice,
      maxPrice,
      avgPrice,
      waPrice,
      median,
      id
    ];
  }
}
