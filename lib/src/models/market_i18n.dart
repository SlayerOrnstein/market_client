import 'package:dart_mappable/dart_mappable.dart';
import 'package:market_client/market_client.dart';

part 'market_i18n.mapper.dart';

abstract class MarketI18n {
  const MarketI18n();
}

/// Localized text for a [DashboardItem]
@MappableClass()
class DashboardI18n extends MarketI18n with DashboardI18nMappable {
  const DashboardI18n({required this.title, required this.description});

  final String title;
  final String? description;
}

/// {@template item_i18n}
/// Localized text for an item
/// {@endtemplate}
@MappableClass()
class ItemI18n extends MarketI18n with ItemI18nMappable {
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

/// {@template nemesis_weapon_i18n}
/// Localized text for [NemesisWeapon]
/// {@endtemplate}
@MappableClass()
class NemesisI18n extends MarketI18n with NemesisI18nMappable {
  /// {@macro nemesis_weapon_i18n}
  const NemesisI18n({
    required this.itemName,
    required this.description,
    required this.wikiLink,
    required this.icon,
    required this.thumb,
  });

  /// [NemesisI18n] from a json map
  factory NemesisI18n.fromJson(Map<String, dynamic> map) {
    return NemesisI18nMapper.fromMap(map);
  }

  /// Localized name
  final String itemName;

  /// Localized description
  final String? description;

  /// Wiki link
  final String? wikiLink;

  /// Icon url
  final String? icon;

  /// Thumbnail url
  final String? thumb;
}
