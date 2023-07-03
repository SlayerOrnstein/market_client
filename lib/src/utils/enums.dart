import 'package:json_annotation/json_annotation.dart';

enum AuthType {
  /// Authoriz via cookie.
  cookie,

  /// Authorize via header (use of device id is required)
  header,
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
  @JsonValue('switch')
  swi,

  /// Microsoft Xbox series, not including the Xbox 360 or OG Xbox.
  xbox,
}

enum Rarity {
  common,
  uncommon,
  rare,
  legendary,
  peculiar,
}

enum UserStatus {
  ingame,
  online,
  offline,
}

enum OrderType { sell, buy }
