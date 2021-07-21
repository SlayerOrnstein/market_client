/// Order Type.
///
/// I don't think this needs much explanation...
enum OrderType {
  /// This order type means someone is looking to buy the item.
  buy,

  /// This order type means someone is selling the item.
  sell
}

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

/// The user status.
enum UserStatus {
  /// User is online and in-game.
  ingame,

  /// User is online but not in-game.
  online,

  /// User is neither online or in-game.
  offline,
}
