import 'package:dart_mappable/dart_mappable.dart';
import 'package:market_client/src/models/user.dart';
import 'package:market_client/src/utils/utils.dart';

part 'order.mapper.dart';

/// {@template base_order}
/// Base order class
/// {@endtemplate}
abstract class BaseOrder {
  /// {@macro base_order}
  const BaseOrder({
    required this.id,
    required this.type,
    required this.platinum,
    required this.quantity,
    required this.perTrade,
    required this.rank,
    required this.charges,
    required this.subtype,
    required this.amberStars,
    required this.cyanStars,
    required this.visible,
    required this.createdAt,
    required this.updatedAt,
    required this.itemId,
  });

  /// Order id.
  final String id;

  /// Whether this user is looking to buy or sell this item.
  final OrderType type;

  /// Platinum user is requesting for said item.
  final int platinum;

  /// A user's inventory of this Item.
  final int quantity;

  /// Indicates the items quantity per transaction.
  final int? perTrade;

  /// Specifies the rank or level of the item in the order.
  final int? rank;

  /// Specifies number of charges left.
  ///
  /// Used for requiem mods.
  final int? charges;

  /// Defines the specific subtype or category of the item.
  final String? subtype;

  /// Denotes the count of amber stars in a sculpture order.
  final int? amberStars;

  /// Denotes the count of cyan stars in a sculpture order.
  final int? cyanStars;

  /// Indicates whether the order is publicly visible or not.
  final bool visible;

  /// The date this order was created on
  final DateTime createdAt;

  /// THe last time this order was updated.
  final DateTime updatedAt;

  /// Is the unique identifier of the item involved in the order.
  final String? itemId;
}

/// {@template order}
/// Just an order, that’s it.
/// Without specifying the owner, used in cases where you already know who the
/// owner of the order is, such as in a user profile or your own profile.
/// {@endtemplate}
@MappableClass()
class Order extends BaseOrder with OrderMappable {
  /// {@macro order}
  const Order({
    required super.id,
    required super.type,
    required super.platinum,
    required super.quantity,
    required super.perTrade,
    required super.rank,
    required super.charges,
    required super.subtype,
    required super.amberStars,
    required super.cyanStars,
    required super.visible,
    required super.createdAt,
    required super.updatedAt,
    required super.itemId,
    required this.group,
  });

  /// [Order] from a [Map]
  factory Order.fromMap(Map<String, dynamic> map) => OrderMapper.fromMap(map);

  /// User defined group to which the order belongs to.
  final String group;
}

/// {@template order_with_user}
/// This is a typical order model found in most requests, including a record
/// about an owner.
/// {@endtemplate}
@MappableClass()
class OrderWithUser extends BaseOrder with OrderWithUserMappable implements Comparable<OrderWithUser> {
  /// {@macro order_with_user}
  const OrderWithUser({
    required super.id,
    required super.type,
    required super.platinum,
    required super.quantity,
    required super.perTrade,
    required super.rank,
    required super.charges,
    required super.subtype,
    required super.amberStars,
    required super.cyanStars,
    required super.visible,
    required super.createdAt,
    required super.updatedAt,
    required super.itemId,
    required this.user,
  });

  /// [OrderWithUser] from a [Map]
  factory OrderWithUser.fromMap(Map<String, dynamic> map) {
    return OrderWithUserMapper.fromMap(map);
  }

  /// Represents the user who created the order, with basic profile
  /// information.
  final UserShort user;

  /// Compares 2 ItemOrders
  static int compare(OrderWithUser a, OrderWithUser b) => a.compareTo(b);

  @override
  int compareTo(OrderWithUser other) {
    if (type != other.type) {
      return -type.index.compareTo(other.type.index);
    }

    if (user.status.index < other.user.status.index) {
      return -1;
    }

    if (user.status == other.user.status) {
      return type == OrderType.sell ? platinum.compareTo(other.platinum) : other.platinum.compareTo(platinum);
    }

    if (user.status.index > other.user.status.index) {
      return 1;
    }

    return 0;
  }
}
