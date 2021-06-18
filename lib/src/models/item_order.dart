import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../enums.dart';
import 'market_user.dart';

part 'item_order.g.dart';

@JsonSerializable()
class ItemOrder extends Equatable {
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

  factory ItemOrder.fromJson(Map<String, dynamic> json) {
    return _$ItemOrderFromJson(json);
  }

  @JsonKey(name: 'creation_date')
  final DateTime creationDate;

  final bool visible;

  final int quantity;

  final MarketUser user;

  @JsonKey(name: 'last_update')
  final DateTime lastUpdate;

  final int platinum;

  @JsonKey(name: 'order_type')
  final OrderType orderType;

  final String region;

  final MarketPlatform platform;

  final String id;

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
