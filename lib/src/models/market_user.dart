import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../enums.dart';

part 'market_user.g.dart';

/// {@template market_user}
/// Market user model
/// {@endtemplate}

@JsonSerializable()
class MarketUser extends Equatable {
  /// {@macro market_user}
  const MarketUser({
    required this.ingameName,
    required this.lastSeen,
    required this.reputation,
    required this.status,
    required this.id,
    this.avatar,
  });

  /// Return an instance of [MarketUser]
  factory MarketUser.fromJson(Map<String, dynamic> json) {
    return _$MarketUserFromJson(json);
  }

  /// Users in-game name.
  @JsonKey(name: 'ingame_name')
  final String ingameName;

  /// The last time this user was online.
  @JsonKey(name: 'last_seen')
  final DateTime? lastSeen;

  /// User reputation.
  final int reputation;

  /// User's current status
  final UserStatus status;

  /// User id.
  final String id;

  /// User's avater
  ///
  /// Note: this is not a full link, just the path
  final String? avatar;

  /// Returns [MarketUser] as a json object
  Map<String, dynamic> toJson() => _$MarketUserToJson(this);

  @override
  List<Object?> get props {
    return [
      ingameName,
      lastSeen,
      reputation,
      status,
      id,
      avatar,
    ];
  }
}

/// {@template market_user_profile}
/// Full [MarketUser] profile
/// {@endtemplate}

@JsonSerializable()
class MarketUserProfile extends MarketUser {
  /// {@macro market_user_profile}
  const MarketUserProfile({
    required String ingameName,
    required DateTime lastSeen,
    required int reputation,
    required UserStatus status,
    required String id,
    String? avatar,
    required this.banned,
    required this.about,
    this.background,
    required this.ownProfile,
    required this.platform,
    required this.region,
  }) : super(
          ingameName: ingameName,
          lastSeen: lastSeen,
          reputation: reputation,
          status: status,
          id: id,
          avatar: avatar,
        );

  /// Return an instance of [MarketUserProfile]
  factory MarketUserProfile.fromJson(Map<String, dynamic> json) {
    return _$MarketUserProfileFromJson(json);
  }

  /// User's region
  final String region;

  /// The platform that this user has set
  final MarketPlatform platform;

  ///
  @JsonKey(name: 'own_profile')
  final bool ownProfile;

  /// User's background image
  final String? background;

  /// User's about description
  final String about;

  /// Whether this user has been banned or not
  final bool banned;

  @override
  Map<String, dynamic> toJson() => _$MarketUserProfileToJson(this);

  @override
  List<Object?> get props {
    return super.props
      ..addAll([
        region,
        platform,
        ownProfile,
        background,
        about,
        banned,
      ]);
  }
}
