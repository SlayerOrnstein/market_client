import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:market_client/market_client.dart';
import 'package:market_client/src/utils/market_uri_builder.dart';

import '../enums.dart';
import 'market_user.dart';

part 'item_order.g.dart';

/// {@template item_order}
/// Representes an Order.
/// {@endtemplate}
@JsonSerializable()
class ItemOrder extends Equatable implements Comparable {
  /// {@macro item_order}
  const ItemOrder({
    required this.creationDate,
    this.modRank,
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

  /// The mod's rank
  @JsonKey(name: 'mod_rank')
  final int? modRank;

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

  /// Compares 2 ItemOrders
  static int compare(dynamic a, dynamic b) {
    final itemA = a as ItemOrder;
    final itemB = b as ItemOrder;
    if (itemA.orderType.index != itemB.orderType.index) {
      return -(a.orderType.index.compareTo(itemB.orderType.index));
    }
    if (itemA.user.status.index < itemB.user.status.index) {
      return -1;
    }
    if (itemA.user.status.index == itemB.user.status.index) {
      return itemA.orderType == OrderType.sell
          ? itemA.platinum.compareTo(itemB.platinum)
          : itemB.platinum.compareTo(itemA.platinum);
    }
    if (itemA.user.status.index > itemB.user.status.index) {
      return 1;
    }
    return 0;
  }

  /// Compares this ItemOrder to another
  @override
  int compareTo(dynamic b) {
    return ItemOrder.compare(this, b);
  }

  @override
  List<Object?> get props {
    return [
      creationDate,
      modRank,
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

/// {@template order_item}
/// The Item for any given order
/// {@endtemplate}
@JsonSerializable()
class OrderItem extends Equatable {
  /// {@macro order_item}
  const OrderItem({
    required this.iconFormat,
    required this.thumb,
    required this.id,
    required this.urlName,
    required this.tags,
    this.subIcon,
    this.modMaxRank,
    required this.icon,
    required this.en,
    required this.ru,
    required this.ko,
    required this.fr,
    required this.sv,
    required this.de,
    required this.zhhant,
    required this.zhhans,
    required this.pt,
    required this.es,
    required this.pl,
  });

  /// {@macro order_item}
  /// from json
  factory OrderItem.fromJson(Map<String, dynamic> json) {
    return _$OrderItemFromJson(json);
  }

  /// The icon format
  @JsonKey(name: 'icon_format')
  final String iconFormat;

  /// Icon Thumbnail
  final String thumb;

  /// Item id
  final String id;

  /// Item url
  @JsonKey(name: 'url_name')
  final String urlName;

  /// Item tags
  final List<String> tags;

  /// Item sub icon
  @JsonKey(name: 'sub_icon')
  final String? subIcon;

  /// Mod's max rank
  @JsonKey(name: 'mod_max_rank')
  final int? modMaxRank;

  /// Item icon
  final String icon;

  /// Item name in English.
  final ItemLanguage en;

  /// Item name in Russion.
  final ItemLanguage ru;

  /// Item name in Korean.
  final ItemLanguage ko;

  /// Item name in French.
  final ItemLanguage fr;

  /// Item name in English.
  final ItemLanguage sv;

  /// Item name in German.
  final ItemLanguage de;

  /// Item name in Traditional Chinese(?).
  @JsonKey(name: 'zh-hant')
  final ItemLanguage zhhant;

  /// Item name in Simplified Chinese.
  @JsonKey(name: 'zh-hans')
  final ItemLanguage zhhans;

  /// Item name in Portuguese.
  final ItemLanguage pt;

  /// Item name in Spanish.
  final ItemLanguage es;

  /// Item name in Polish.
  final ItemLanguage pl;

  /// Icon Uri
  Uri get iconUri => marketImageUriBuilder(icon);

  /// Thumbnail Uri
  Uri get thumbnailUri => marketImageUriBuilder(thumb);

  /// Returns this instance as a [Map<String, dynamic>]
  Map<String, dynamic> toJson() => _$OrderItemToJson(this);

  @override
  List<Object?> get props {
    return [
      iconFormat,
      thumb,
      id,
      urlName,
      tags,
      subIcon,
      modMaxRank,
      icon,
      en,
      ru,
      ko,
      fr,
      sv,
      de,
      zhhant,
      zhhans,
      pt,
      es,
      pl,
    ];
  }
}
