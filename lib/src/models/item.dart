import 'package:dart_mappable/dart_mappable.dart';

part 'item.mapper.dart';

/// {@template item_i18n}
/// Localized text for an item
/// {@endtemplate}
@MappableClass()
class ItemI18n with ItemI18nMappable {
  /// {@macro item_i18n}
  const ItemI18n({
    required this.name,
    this.description,
    this.wikiLink,
    required this.icon,
    required this.thumb,
    this.subIcon,
  });

  /// [ItemI18n] from json string
  factory ItemI18n.fromJson(String json) => ItemI18nMapper.fromJson(json);

  /// Localized item name.
  final String name;

  /// Localized item description.
  final String? description;

  /// Wikia item link
  final String? wikiLink;

  /// Icon for item
  final String icon;

  /// Thumbnail for item
  final String thumb;

  /// Sub Icon?
  final String? subIcon;
}

/// {@template item}
/// Common fields for [ItemShort] and [ItemFull]
/// {@endtemplate}
abstract class Item {
  /// {@macro item}
  const Item({
    required this.id,
    required this.slug,
    required this.gameRef,
    required this.i18n,
    required this.tags,
    required this.maxRank,
    required this.maxCharges,
    required this.vaulted,
    required this.bulkTradable,
    required this.ducats,
    required this.maxAmberStars,
    required this.maxCyanStars,
    required this.baseEndo,
    required this.endoMultiplier,
    required this.subtypes,
  });

  /// Unique identifier of the item
  final String id;

  /// URL friendly name of the item.
  final String slug;

  /// Reference to the item in-game.
  ///
  /// This is the item's uniqueName
  final String gameRef;

  /// Localized text for the item in various languages
  final Map<String, ItemI18n> i18n;

  /// Item tags.
  final List<String> tags;

  /// Mmaximum rank the item can achieve.
  final int? maxRank;

  /// Maximum chanrges the item can achieve, used for requiem mods.
  final int? maxCharges;

  /// Whether the item is vaulted.
  final bool? vaulted;

  /// Whether the item can be traded in bulk or not.
  final bool? bulkTradable;

  /// Ducats that the item can be traded for in-game.
  final int? ducats;

  /// Amount of installed amber stars.
  final int? maxAmberStars;

  /// Amount of installed cyan stars.
  final int? maxCyanStars;

  /// Base endo value of the item
  final int? baseEndo;

  /// Multiplier for the endo value.
  final int? endoMultiplier;

  /// Defines the specific subtype or category of the item.
  final List<String>? subtypes;
}

/// {@template item_short}
/// Represent trimmed Item model, only used to build initial local copy of
/// tradable items list on a client.
/// {@endtemplate}
@MappableClass()
class ItemShort extends Item with ItemShortMappable {
  /// {@macro item-short}
  const ItemShort({
    required super.id,
    required super.slug,
    required super.gameRef,
    required super.i18n,
    required super.tags,
    required super.maxRank,
    required super.maxCharges,
    required super.vaulted,
    required super.bulkTradable,
    required super.ducats,
    required super.maxAmberStars,
    required super.maxCyanStars,
    required super.baseEndo,
    required super.endoMultiplier,
    required super.subtypes,
  });

  /// [ItemShort] from json string
  factory ItemShort.fromJson(String json) => ItemShortMapper.fromJson(json);

  /// [ItemShort] from a [Map]
  factory ItemShort.fromMap(Map<String, dynamic> map) {
    return ItemShortMapper.fromMap(map);
  }
}

/// {@template item_full}
/// Full item model with all possible fields
/// {@endtemplate}
@MappableClass()
class ItemFull extends Item with ItemFullMappable {
  /// {@macro item_full}
  const ItemFull({
    required super.id,
    required super.slug,
    required super.gameRef,
    required super.i18n,
    required super.tags,
    required super.maxRank,
    required super.maxCharges,
    required super.vaulted,
    required super.bulkTradable,
    required super.ducats,
    required super.maxAmberStars,
    required super.maxCyanStars,
    required super.baseEndo,
    required super.endoMultiplier,
    required super.subtypes,
    required this.tradable,
    required this.setRoot,
    required this.setParts,
    required this.quantityInSet,
    required this.rarity,
    required this.reqMasteryRank,
    required this.tradingTax,
  });

  /// [ItemFull] from json string.
  factory ItemFull.fromJson(String json) => ItemFullMapper.fromJson(json);

  /// [ItemFull] from a [Map]
  factory ItemFull.fromMap(Map<String, dynamic> map) {
    return ItemFullMapper.fromMap(map);
  }

  /// Whether the item can be traded or not.
  final bool tradable;

  /// Whether the current item is the root of a set.
  final bool? setRoot;

  /// List of parts in set.
  final List<String> setParts;

  /// Number of items in the set
  final int quantityInSet;

  /// Rarity of the item.
  final String? rarity;

  /// Mastery rank requirement in order to use item.
  final int? reqMasteryRank;

  /// Clan trading tax
  final int? tradingTax;
}
