import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:market_client/market_client.dart';

part 'order.g.dart';

/// {@template item_order}
/// Common order data.
/// {@endtemplate}
abstract class OrderCommon extends Equatable
    implements Comparable<OrderCommon> {
  /// {@macro item_order}
  const OrderCommon({
    required this.id,
    required this.platinum,
    required this.quantity,
    required this.orderType,
    required this.platform,
    required this.region,
    required this.creationDate,
    required this.lastUpdate,
    required this.subtype,
    required this.visible,
    required this.user,
  });

  /// Order id.
  final String id;

  /// Platinum user is requesting for said item.
  final int platinum;

  /// A user's inventory of this Item.
  final int quantity;

  /// Whether this user is looking to buy or sell this item.
  @JsonKey(name: 'order_type')
  final OrderType orderType;

  /// The platform this user is on
  final MarketPlatform platform;

  /// A user's region.
  final String region;

  /// The date this order was created on
  @JsonKey(name: 'creation_date')
  @DateTimeWithOffset()
  final DateTime creationDate;

  /// THe last time this order was updated.
  @JsonKey(name: 'last_update')
  @DateTimeWithOffset()
  final DateTime lastUpdate;

  /// Item subtype.
  final String? subtype;

  /// Whether the order is visible to other users or not.
  final bool visible;

  // OrderRow and OrderFull both contain a user so I chose to keep it in their
  // common class.
  /// The user that created this order.
  final UserShort user;

  @override
  List<Object?> get props => [
        id,
        platinum,
        quantity,
        orderType,
        platform,
        region,
        creationDate,
        lastUpdate,
        subtype,
        visible,
      ];

  /// Compares 2 ItemOrders
  static int compare(OrderCommon a, OrderCommon b) => a.compareTo(b);

  @override
  int compareTo(OrderCommon other) {
    if (orderType != other.orderType) {
      return -orderType.index.compareTo(other.orderType.index);
    }

    if (user.status.index < other.user.status.index) {
      return -1;
    }

    if (user.status == other.user.status) {
      return orderType == OrderType.sell
          ? platinum.compareTo(other.platinum)
          : other.platinum.compareTo(platinum);
    }

    if (user.status.index > other.user.status.index) {
      return 1;
    }

    return 0;
  }
}

/// {@template order_row}
/// Short version of [OrderFull] without the item.
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
    required super.subtype,
    required super.visible,
    required super.user,
  });

  /// Creates a ItemOrder from Json map
  factory OrderRow.fromJson(Map<String, dynamic> data) =>
      _$OrderRowFromJson(data);

  /// Creates a Json map from a ItemOrder
  Map<String, dynamic> toJson() => _$OrderRowToJson(this);
}

/// {@template order_full}
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
    required super.subtype,
    required super.visible,
    required super.user,
    required this.item,
  });

  /// Creates an [OrderFull] instance from a json.
  factory OrderFull.fromJson(Map<String, dynamic> json) {
    return _$OrderFullFromJson(json);
  }

  /// The item the order is for.
  final ItemFull item;

  /// Creates a json map.
  Map<String, dynamic> toJson() => _$OrderFullToJson(this);

  @override
  List<Object?> get props => super.props..add(item);
}
