import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:market_client/market_client.dart';

part 'item_order.g.dart';

/// {@template item_order}
/// ItemOrder description
/// {@endtemplate}
@JsonSerializable()
class ItemOrder extends Equatable implements Comparable<ItemOrder> {
  /// {@macro item_order}
  const ItemOrder({
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

  /// Creates a ItemOrder from Json map
  factory ItemOrder.fromJson(Map<String, dynamic> data) =>
      _$ItemOrderFromJson(data);

  /// A description for id
  final String id;

  /// A description for platinum
  final int platinum;

  /// A description for quantity
  final int quantity;

  /// A description for orderType
  @JsonKey(name: 'order_type')
  final OrderType orderType;

  /// A description for platform
  final MarketPlatform platform;

  /// A description for region
  final String region;

  /// A description for creationDate
  @JsonKey(name: 'creation_date')
  final DateTime creationDate;

  /// A description for lastUpdate
  @JsonKey(name: 'last_update')
  final DateTime lastUpdate;

  /// A description for subtype
  final String subtype;

  /// A description for visible
  final bool visible;

  /// User selling item.
  final UserShort user;

  /// Creates a copy of the current ItemOrder with property changes
  ItemOrder copyWith({
    String? id,
    int? platinum,
    int? quantity,
    OrderType? orderType,
    MarketPlatform? platform,
    String? region,
    DateTime? creationDate,
    DateTime? lastUpdate,
    String? subtype,
    bool? visible,
    UserShort? user,
  }) {
    return ItemOrder(
      id: id ?? this.id,
      platinum: platinum ?? this.platinum,
      quantity: quantity ?? this.quantity,
      orderType: orderType ?? this.orderType,
      platform: platform ?? this.platform,
      region: region ?? this.region,
      creationDate: creationDate ?? this.creationDate,
      lastUpdate: lastUpdate ?? this.lastUpdate,
      subtype: subtype ?? this.subtype,
      visible: visible ?? this.visible,
      user: user ?? this.user,
    );
  }

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

  /// Creates a Json map from a ItemOrder
  Map<String, dynamic> toJson() => _$ItemOrderToJson(this);

  /// Compares 2 ItemOrders
  static int compare(ItemOrder a, ItemOrder b) => a.compareTo(b);

  @override
  int compareTo(ItemOrder other) {
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
