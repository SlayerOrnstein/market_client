import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:market_client/market_client.dart';

part 'recent_orders.g.dart';

/// {@template most_recent_orders}
/// Instance containing both sell and buy orders.
/// {@endtemplate}
@JsonSerializable()
class MostRecentOrders extends Equatable {
  /// {@macro most_recent_orders}
  const MostRecentOrders({required this.sellOrders, required this.buyOrders});

  /// Creates an instance of [MostRecentOrders] from a json object.
  factory MostRecentOrders.fromJson(Map<String, dynamic> json) {
    return _$MostRecentOrdersFromJson(json);
  }

  /// A list of most recent sell orders.
  @JsonKey(name: 'sell_orders')
  final List<OrderFull> sellOrders;

  /// a list of most recent buy orders.
  @JsonKey(name: 'buy_orders')
  final List<OrderFull> buyOrders;

  /// Creates a json object from the current [MostRecentOrders].
  Map<String, dynamic> toJson() => _$MostRecentOrdersToJson(this);

  /// Creates a new instance of most recent with updated values.
  MostRecentOrders copyWith({
    List<OrderFull>? sellOrders,
    List<OrderFull>? buyOrders,
  }) {
    return MostRecentOrders(
      sellOrders: sellOrders ?? this.sellOrders,
      buyOrders: buyOrders ?? this.buyOrders,
    );
  }

  @override
  List<Object?> get props => [sellOrders, buyOrders];
}
