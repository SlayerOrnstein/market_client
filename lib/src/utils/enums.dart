/// Game platforms that Warframe Market supports
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
}

/// Level of rarity for an item
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
enum OrderType {
  /// Item is for sale.
  sell,

  /// An order to buy said item.
  buy,
}

/// Enemy factions
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
