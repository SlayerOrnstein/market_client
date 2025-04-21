import 'package:dart_mappable/dart_mappable.dart';

part 'enums.mapper.dart';

/// Game platforms that Warframe Market supports
@MappableEnum()
enum MarketPlatform {
  /// The PC platform, consist of steam users, and at one time dicord users
  pc,

  /// The Playstation 4, way better looks then the Playstation 5.
  ///
  /// Note: Pretty sure it also works for PS5 but don't quote me on that.
  ps4,

  /// The Nintendo Switch, not great, but not bad.
  swi,

  /// Microsoft Xbox series, not including the Xbox 360 or OG Xbox.
  xbox,

  /// Mobile platform (Android/iOS)
  mobile,
}

/// Level of rarity for an item
@MappableEnum()
enum Rarity {
  /// Item drops commonly.
  common,

  /// Item drop is not common but very possible.
  uncommon,

  /// Item drops rarely.
  rare,

  /// Item can only be obtined from a specfic source
  legendary,

  /// A peculiar item.
  peculiar,
}

/// Item order type.
@MappableEnum()
enum OrderType {
  /// Item is for sale.
  sell('WTS'),

  /// An order to buy said item.
  buy('WTB');

  const OrderType(this.inGameName);

  /// How this is referenced in-game
  final String inGameName;
}

/// Enemy factions
@MappableEnum()
enum Faction {
  /// Infested
  infested,

  /// Grineer
  grineer,

  /// Corpus
  corpus,

  /// Corrupted
  corrupted,
}
