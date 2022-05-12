// ignore_for_file: comment_references

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:market_client/src/models/lang.dart';

part 'item.g.dart';

/// {@template item_common}
/// Common fields for [ItemInOrder] and [ItemFull]
/// {@endtemplate item_common}
@JsonSerializable()
class ItemCommon extends Equatable {
  /// {@macro item_common}
  const ItemCommon({
    required this.id,
    required this.urlName,
    required this.icon,
    required this.thumb,
    required this.subIcon,
    required this.maxRank,
    required this.subTypes,
    required this.tags,
    required this.cyanStars,
    required this.amberStars,
    required this.ducats,
  });

  /// {@macro item_in_order}
  factory ItemCommon.fromJson(Map<String, dynamic> json) {
    return _$ItemCommonFromJson(json);
  }

  /// Item id.
  final String id;

  /// Item url in snake case.
  @JsonKey(name: 'url_name')
  final String urlName;

  /// Path to the item icon.
  ///
  /// This is only part of the url. The root path is ommited out.
  /// Example: `icons/en/axi_a1_relic.a74c06f0cae21bdb8933685c867385f8.png`
  final String icon;

  /// Thumbnail for item.
  ///
  /// See [icon].
  final String thumb;

  /// Sub icon for item.
  ///
  /// Usually, if item is part of set and not set itself, it will have sub_icon
  /// like: Mirage Blueprint is part of Mirage Set, therefore the icon will be
  /// the Mirage warframe icon, and the sub_icon will be the blueprint icon
  @JsonKey(name: 'sub_icon')
  final String? subIcon;

  /// Max Rank for Mod item.
  @JsonKey(name: 'mod_max_rank')
  final int? maxRank;

  /// Subtypes for relics or fish items.
  final List<String>? subTypes;

  /// Item tags.
  final List<String> tags;

  /// Amount of installed cyan stars.
  @JsonKey(name: 'cyan_stars')
  final int? cyanStars;

  /// Amount of installed amber stars.
  @JsonKey(name: 'amber_stars')
  final int? amberStars;

  /// Ducats that the item can be traded for in-game.
  final int? ducats;

  /// Returns this as json.
  Map<String, dynamic> toJson() => _$ItemCommonToJson(this);

  @override
  List<Object?> get props {
    return [
      id,
      urlName,
      icon,
      thumb,
      subIcon,
      maxRank,
      subTypes,
      tags,
      cyanStars,
      amberStars,
      ducats
    ];
  }
}

/// {@template item_in_order}
/// Item information for [OrderFull]
/// {@endtemplate}
@JsonSerializable()
class ItemInOrder extends ItemCommon {
  /// {@macro item_in_order}
  const ItemInOrder({
    required super.id,
    required super.urlName,
    required super.icon,
    required super.thumb,
    required super.subIcon,
    required super.maxRank,
    required super.subTypes,
    required super.tags,
    required super.cyanStars,
    required super.amberStars,
    required super.ducats,
    required this.en,
    required this.ru,
    required this.ko,
    required this.fr,
    required this.de,
    required this.sv,
    required this.zhHant,
    required this.zhHans,
    required this.pt,
    required this.es,
    required this.pl,
  });

  /// {@macro item_in_order}
  factory ItemInOrder.fromJson(Map<String, dynamic> json) {
    return _$ItemInOrderFromJson(json);
  }

  /// English item name translations.
  final LangShort en;

  /// Russian item name translations.
  final LangShort ru;

  /// Korean item name translations.
  final LangShort ko;

  /// French item name translations.
  final LangShort fr;

  /// German item name translations.
  final LangShort de;

  /// Swedish item name translations.
  final LangShort sv;

  /// Chinese (Traditional) item name translations.
  @JsonKey(name: 'zh_hant')
  final LangShort zhHant;

  /// Chinese (Simplified) item name translations.
  @JsonKey(name: 'zh_hans')
  final LangShort zhHans;

  /// Portuguese (Brazil) item name translations.
  final LangShort pt;

  /// Spanish item name translations.
  final LangShort es;

  /// Polish item name translations.
  final LangShort pl;

  /// Returns this as json.
  @override
  Map<String, dynamic> toJson() => _$ItemInOrderToJson(this);

  @override
  List<Object?> get props {
    return super.props
      ..addAll([
        en,
        ru,
        ko,
        fr,
        de,
        sv,
        zhHant,
        zhHans,
        pt,
        es,
        pl,
      ]);
  }
}

/// {@template item_short}
/// Brief information about an item.
/// {@endtemplate}
@JsonSerializable()
class ItemShort extends Equatable {
  /// {@macro item_short}
  const ItemShort({
    required this.id,
    required this.urlName,
    required this.thumb,
    required this.itemName,
  });

  /// {@macro item_short}
  factory ItemShort.fromJson(Map<String, dynamic> json) {
    return _$ItemShortFromJson(json);
  }

  /// Item ID.
  final String id;

  /// Item url.
  @JsonKey(name: 'url_name')
  final String urlName;

  /// Item thumbnail.
  final String thumb;

  /// Name of the item
  ///
  /// Depending on the set language this can be translated.
  @JsonKey(name: 'item_name')
  final String itemName;

  /// Returns this to json.
  Map<String, dynamic> toJson() => _$ItemShortToJson(this);

  @override
  List<Object?> get props => [id, urlName, thumb, itemName];
}

/// Mod rarity.
enum Rarity {
  /// Mod/item drops frequently.
  common,

  /// Mod/item drops infrequently.
  uncommon,

  /// Mod/item drops rarely.
  rare,

  /// Mod/item is from a specfic vendors, who may not always have the item.
  legendary,

  /// Mod/item is specfic to a weapon and has odd effects.
  peculiar,
}

/// {@template item_full}
/// Full information of the item.
/// {@endtemplate}
@JsonSerializable()
class ItemFull extends ItemCommon {
  /// {@macro item_full}
  const ItemFull({
    required super.id,
    required super.urlName,
    required super.icon,
    required super.thumb,
    required super.subIcon,
    required super.maxRank,
    required super.subTypes,
    required super.tags,
    required super.cyanStars,
    required super.amberStars,
    required super.ducats,
    required this.setRoot,
    required this.masteryRank,
    required this.rarity,
    required this.tradingTax,
    required this.en,
    required this.ru,
    required this.ko,
    required this.fr,
    required this.de,
    required this.sv,
    required this.zhHant,
    required this.zhHans,
    required this.pt,
    required this.es,
    required this.pl,
  });

  /// {@macro item_full}
  factory ItemFull.fromJson(Map<String, dynamic> json) {
    return _$ItemFullFromJson(json);
  }

  /// Whether the item represents the set itself.
  @JsonKey(name: 'set_root')
  final bool setRoot;

  /// Mastery required to build this item.
  @JsonKey(name: 'mastery_rank')
  final int? masteryRank;

  /// The rarity of the mod.
  final Rarity? rarity;

  /// The trading tax when trading in-game.
  ///
  /// Does not include Clan tax.
  @JsonKey(name: 'trading_tax')
  final int tradingTax;

  /// English item name translations.
  final LangInItem en;

  /// Russian item name translations.
  final LangInItem ru;

  /// Korean item name translations.
  final LangInItem ko;

  /// French item name translations.
  final LangInItem fr;

  /// German item name translations.
  final LangInItem de;

  /// Swedish item name translations.
  final LangInItem sv;

  /// Chinese (Traditional) item name translations.
  @JsonKey(name: 'zh-hant')
  final LangInItem zhHant;

  /// Chinese (Simplified) item name translations.
  @JsonKey(name: 'zh-hans')
  final LangInItem zhHans;

  /// Portuguese (Brazil) item name translations.
  final LangInItem pt;

  /// Spanish item name translations.
  final LangInItem es;

  /// Polish item name translations.
  final LangInItem pl;

  /// Returns this as json.
  @override
  Map<String, dynamic> toJson() => _$ItemFullToJson(this);

  @override
  List<Object?> get props {
    return super.props
      ..addAll([
        setRoot,
        masteryRank,
        rarity,
        tradingTax,
        en,
        ru,
        ko,
        fr,
        de,
        sv,
        zhHant,
        zhHans,
        pt,
        es,
        pl,
      ]);
  }
}

/// {@template item_set}
/// The complete set for an item.
/// {@endtemplate}
@JsonSerializable()
class ItemSet extends Equatable {
  /// {@macro item_set}
  const ItemSet({required this.id, required this.itemsInSet});

  /// Creates an [ItemSet] from a json value.
  factory ItemSet.fromJson(Map<String, dynamic> json) {
    return _$ItemSetFromJson(json);
  }

  /// Set ID.
  final String id;

  /// The items in this set.
  @JsonKey(name: 'items_in_set')
  final List<ItemFull> itemsInSet;

  /// Returns a json value for instance.
  Map<String, dynamic> toJson() => _$ItemSetToJson(this);

  @override
  List<Object?> get props => [id, itemsInSet];
}
