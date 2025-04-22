import 'package:dart_mappable/dart_mappable.dart';

part 'dashboard_showcase.mapper.dart';

/// Localized text for a [DashboardItem]
@MappableRecord()
typedef DashboardI18n = ({String title, String? description});

/// {@template dashboard_showcase}
/// Items to be shown in a showcase
/// {@endtemplate}
@MappableClass()
class DashboardShowcase with DashboardShowcaseMappable {
  /// {@macro dashboard_showcase}
  DashboardShowcase({required this.items, required this.i18n});

  /// Map to [DashboardShowcase]
  static const fromMap = DashboardShowcaseMapper.fromMap;

  /// Items in showcase
  final List<DashboardItem> items;

  /// Localized showcase text
  final Map<String, DashboardI18n> i18n;
}

/// {@template dashboard_item}
/// Represents a dashboard item
/// {@endtemplate}
@MappableClass()
class DashboardItem with DashboardItemMappable {
  /// {@macro dashboard_item}
  DashboardItem({required this.item, required this.background, required this.isBigCard});

  /// Map to [DashboardItem]
  static const fromMap = DashboardItemMapper.fromMap;

  /// WFM generated unique ID
  final String item;

  /// background image
  final String background;

  /// Whether it should use a big card or not
  @MappableField(key: 'bigCard')
  final bool isBigCard;
}
