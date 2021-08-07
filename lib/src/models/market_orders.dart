import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:market_client/src/models/item_order.dart';

part 'market_orders.g.dart';

/// {@template market_order}
/// Contains both sell and buy orders models for most recent orders
///
/// Is also used to better filter orders when searching orders, this is because
/// when searching orders are bundled together.
/// {@endtemplate}
@JsonSerializable()
class MarketOrders extends Equatable {
  /// {@macro market_order}
  const MarketOrders({required this.sellOrders, required this.buyOrders});

  /// Create a [MarketOrders] instance from json.
  factory MarketOrders.fromJson(Map<String, dynamic> json) {
    return _$MarketOrdersFromJson(json);
  }

  /// List of sell orders.
  @JsonKey(name: 'sell_orders')
  final List<ItemOrder> sellOrders;

  /// List of buy orders.
  @JsonKey(name: 'buy_orders')
  final List<ItemOrder> buyOrders;

  /// Return this instance of [MarketOrders] as a json object
  Map<String, dynamic> toJson() => _$MarketOrdersToJson(this);

  @override
  List<Object?> get props => [sellOrders, buyOrders];
}
