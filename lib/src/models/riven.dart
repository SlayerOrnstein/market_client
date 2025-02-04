import 'package:dart_mappable/dart_mappable.dart';

part 'riven.mapper.dart';

/// Riven types
@MappableEnum()
enum RivenType {
  /// Kitgun Riven type
  kitgun,

  /// Melee Riven type
  melee,

  /// Pistol Riven type
  pistol,

  /// Rifle Riven type
  rifle,

  /// Shotgun Riven type
  shotgun,

  /// Zaw Riven type
  zaw
}

/// {@template riven}
/// Riven Weapon
/// {@endtemplate}
@MappableClass()
class Riven with RivenMappable {
  /// {@macro riven}
  const Riven({
    required this.id,
    required this.slug,
    required this.gameRef,
    required this.group,
    required this.rivenType,
    required this.disposition,
    required this.reqMasteryRank,
    required this.i18n,
  });

  /// [Riven] from map
  factory Riven.fromMap(Map<String, dynamic> map) => RivenMapper.fromMap(map);

  /// Unique identifier
  final String id;

  /// URL friendly slug
  final String slug;

  /// in-game uniqueName
  final String gameRef;

  /// Used to break riven by groups on the frontend, used for rendering only
  final String? group;

  /// Denotes the riven weapon compatibility
  final RivenType? rivenType;

  /// Weapon riven disposition
  final double disposition;

  /// Required mastery rank
  final int reqMasteryRank;

  /// Localized text
  final Map<String, RivenI18n> i18n;
}

/// {@template riven_i18n}
/// Localized text for the [Riven] instance
/// {@endtemplate}
@MappableClass()
class RivenI18n with RivenI18nMappable {
  /// {@macro riven_i18n}
  const RivenI18n({
    required this.itemName,
    required this.wikiLink,
    required this.icon,
    required this.thumb,
  });

  /// Localized item name
  final String itemName;

  /// Wikia link
  final String? wikiLink;

  /// Icon URL
  final String icon;

  /// Thumbnail URl
  final String thumb;
}
