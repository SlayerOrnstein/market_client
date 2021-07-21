import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../enums.dart';
import 'market_user.dart';

part 'item_order.g.dart';

/// {@template item_order}
/// Representes an Order.
/// {@endtemplate}
@JsonSerializable()
class ItemOrder extends Equatable {
  /// {@macro item_order}
  const ItemOrder({
    required this.creationDate,
    required this.visible,
    required this.quantity,
    required this.user,
    required this.lastUpdate,
    required this.platinum,
    required this.orderType,
    required this.region,
    required this.platform,
    required this.id,
  });

  /// Creates an [ItemOrder] from a json.
  factory ItemOrder.fromJson(Map<String, dynamic> json) {
    return _$ItemOrderFromJson(json);
  }

  /// The timestamp for the order.
  @JsonKey(name: 'creation_date')
  final DateTime creationDate;

  /// Whether the user made the order visible or not.
  final bool visible;

  /// The amount of an item the user made available.
  final int quantity;

  /// The user who created the order.
  final MarketUser user;

  /// The timestamp that the order was last updated/edited.
  @JsonKey(name: 'last_update')
  final DateTime lastUpdate;

  /// THe price in platinum for the order
  final double platinum;

  /// The order type, can be [OrderType.sell] or [OrderType.buy].
  @JsonKey(name: 'order_type')
  final OrderType orderType;

  /// The language.
  final String region;

  /// The game platform this order is for.
  final MarketPlatform platform;

  /// Order ID.
  final String id;

  /// Returns instance as a json encodable value.
  Map<String, dynamic> toJson() => _$ItemOrderToJson(this);

  @override
  List<Object?> get props {
    return [
      creationDate,
      visible,
      quantity,
      user,
      lastUpdate,
      platinum,
      orderType,
      region,
      platform,
      id
    ];
  }
}
