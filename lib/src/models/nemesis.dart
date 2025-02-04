import 'package:dart_mappable/dart_mappable.dart';

part 'nemesis.mapper.dart';

/// {@template nemesis_weapon_i18n}
/// Localized text for [NemesisWeapon]
/// {@endtemplate}
@MappableClass(ignoreNull: true)
class NemesisI18n with NemesisI18nMappable {
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

/// {@template nemesis_weapon}
/// Data class for litch/sister/Technocyte weapon
/// {@endtemplate}
@MappableClass()
class NemesisWeapon with NemesisWeaponMappable {
  /// {@macro nemesis_weapon}
  const NemesisWeapon({
    required this.id,
    required this.slug,
    required this.gameRef,
    required this.reqMasteryRank,
    required this.i18n,
  });

  /// [NemesisWeapon] from a json map
  factory NemesisWeapon.fromJson(Map<String, dynamic> map) {
    return NemesisWeaponMapper.fromMap(map);
  }

  /// Unique identifier.
  final String id;

  /// URL friendly id.
  final String slug;

  /// in-game uniquename.
  final String gameRef;

  /// Required mastery rank.
  final int reqMasteryRank;

  /// Localized text.
  final Map<String, dynamic> i18n;
}

/// {@template nemesis_ephemera}
/// Data model for litch/sister/Technocyte ephemera
/// {@endtemplate}
@MappableClass()
class NemesisEphemera with NemesisEphemeraMappable {
  /// {@macro nemesis_ephemera}
  const NemesisEphemera({
    required this.id,
    required this.slug,
    required this.gameRef,
    required this.animation,
    required this.element,
    required this.i18n,
  });

  /// [NemesisEphemera] from a json map
  factory NemesisEphemera.fromJson(Map<String, dynamic> map) {
    return NemesisEphemeraMapper.fromMap(map);
  }

  /// Unique identifier.
  final String id;

  /// URL friendly id.
  final String slug;

  /// in-game uniquename.
  final String gameRef;

  /// Animation image path.
  ///
  /// Images are animated webp.
  final String animation;

  /// Ephemera element.
  final String element;

  /// Localized text.
  final Map<String, NemesisI18n> i18n;
}

/// {@template nemesis_quirk}
/// Data model for litch/sister/Technocyte quirk
/// {@endtemplate}
@MappableClass(ignoreNull: true)
class NemesisQuirk with NemesisQuirkMappable {
  /// {@macro nemesis_quirk}
  const NemesisQuirk({
    required this.id,
    required this.slug,
    required this.group,
    required this.i18n,
  });

  /// [NemesisQuirk] from a json map
  factory NemesisQuirk.fromJson(Map<String, dynamic> map) {
    return NemesisQuirkMapper.fromMap(map);
  }

  /// Unique identifier
  final String id;

  /// URL friendly identifier
  final String slug;

  /// Group name
  final String? group;

  /// Localized text
  final Map<String, NemesisI18n> i18n;
}
