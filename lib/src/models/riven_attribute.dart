import 'package:dart_mappable/dart_mappable.dart';

part 'riven_attribute.mapper.dart';

/// Localized text for riven attribute
typedef RivenAttributeI18n = ({String effect, String icon, String thumb});

/// {@template riven_attribute}
/// Full riven attribute with all possible fields.
/// {@endtemplate}
@MappableClass()
class RivenAttribute with RivenAttributeMappable {
  /// {@macro riven_attribute}
  RivenAttribute({
    required this.id,
    required this.slug,
    required this.gameRef,
    required this.group,
    required this.prefix,
    required this.suffix,
    required this.exclusiveTo,
    required this.positiveIsNegative,
    required this.unit,
    required this.positiveOnly,
    required this.negativeOnly,
    required this.i18n,
  });

  /// [RivenAttribute] from map
  factory RivenAttribute.fromMap(Map<String, dynamic> map) {
    return RivenAttributeMapper.fromMap(map);
  }

  /// Unique identifier.
  final String id;

  /// URl friendly identifier.
  final String slug;

  ///  Item unique name for game file lookup.
  final String gameRef;

  /// Group tag
  final String? group;

  /// Prefix
  final String prefix;

  /// Suffix
  final String suffix;

  /// List of tags this riven attribute is exclusive to.
  final List<String>? exclusiveTo;

  ///
  final bool? positiveIsNegative;

  ///
  final String? unit;

  ///
  final bool? positiveOnly;

  ///
  final bool? negativeOnly;

  /// Localized text in various languages
  final Map<String, RivenAttributeI18n> i18n;
}
