// ignore_for_file: deprecated_member_use_from_same_package

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:market_client/src/enums.dart';
import 'package:market_client/src/models/item.dart';
import 'package:market_client/src/models/user.dart';

part 'order.g.dart';

/// {@template order_common}
/// Common fields for both [OrderRow] and [OrderFull]
/// {@endtemplate}
@JsonSerializable()
class OrderCommon extends Equatable implements Comparable<OrderCommon> {
  /// {@macro order_common}
  const OrderCommon({
    required this.id,
    required this.platinum,
    required this.quantity,
    required this.orderType,
    required this.platform,
    @Deprecated('Will be deprecated eventually by Warframe Market')
        required this.region,
    required this.creationDate,
    required this.lastUpdate,
    required this.visible,
    required this.user,
  });

  /// Creates in [OrderCommon] instance from json.
  factory OrderCommon.fromJson(Map<String, dynamic> json) {
    return _$OrderCommonFromJson(json);
  }

  /// Item ID.
  final String id;

  /// Amount of platinum this item is trading for.
  final int platinum;

  /// How many items are in stock.
  final int quantity;

  /// If this is a buy order or a sell order.
  @JsonKey(name: 'order_type')
  final OrderType orderType;

  /// What platform the [UserShort] is on.
  final MarketPlatform platform;

  /// The region the user is on.
  // Gonna keep it here until it's actually removed.
  @Deprecated('Will be deprecated eventually by Warframe Market')
  final String region;

  /// The date this order was created.
  @JsonKey(name: 'creation_date')
  final DateTime creationDate;

  /// The date this order was last edited on.
  @JsonKey(name: 'last_update')
  final DateTime lastUpdate;

  /// Whether is order is visible to the public or not.
  final bool visible;

  /// User this order pertains to.
  final UserShort user;

  /// Create a json object from this instance.
  Map<String, dynamic> toJson() => _$OrderCommonToJson(this);

  /// Compares 2 ItemOrders
  static int compare(OrderCommon a, OrderCommon b) {
    if (a.orderType.index != a.orderType.index) {
      return -a.orderType.index.compareTo(a.orderType.index);
    }
    if (a.user.status.index < a.user.status.index) {
      return -1;
    }
    if (a.user.status.index == a.user.status.index) {
      return a.orderType == OrderType.sell
          ? a.platinum.compareTo(a.platinum)
          : a.platinum.compareTo(a.platinum);
    }
    if (a.user.status.index > a.user.status.index) {
      return 1;
    }
    return 0;
  }

  /// Compares this ItemOrder to another
  @override
  int compareTo(OrderCommon b) {
    return OrderCommon.compare(this, b);
  }

  @override
  List<Object?> get props {
    return [
      id,
      platinum,
      quantity,
      orderType,
      platform,
      region,
      creationDate,
      lastUpdate,
      visible
    ];
  }
}

/// {@template order_row}
/// Order information for recent orders.
/// {@endtemplate}
@JsonSerializable()
class OrderRow extends OrderCommon {
  /// {@macro order_row}
  const OrderRow({
    required super.id,
    required super.platinum,
    required super.quantity,
    required super.orderType,
    required super.platform,
    required super.region,
    required super.creationDate,
    required super.lastUpdate,
    required super.visible,
    required super.user,
  });

  /// Create an [OrderRow] instance from json.
  factory OrderRow.fromJson(Map<String, dynamic> json) {
    return _$OrderRowFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() => _$OrderRowToJson(this);

  @override
  List<Object?> get props => super.props..add(user);
}

/// {@template order_full}
/// Full order object that includes [ItemInOrder].
/// {@endtemplate}
@JsonSerializable()
class OrderFull extends OrderCommon {
  /// {@macro order_full}
  const OrderFull({
    required super.id,
    required super.platinum,
    required super.quantity,
    required super.orderType,
    required super.platform,
    required super.region,
    required super.creationDate,
    required super.lastUpdate,
    required super.visible,
    required super.user,
    required this.item,
  });

  /// Create an [OrderFull] instance from json.
  factory OrderFull.fromJson(Map<String, dynamic> json) {
    return _$OrderFullFromJson(json);
  }

  /// Item information for this order.
  final ItemInOrder item;

  @override
  Map<String, dynamic> toJson() => _$OrderFullToJson(this);

  @override
  List<Object?> get props => super.props..addAll([user, item]);
}
