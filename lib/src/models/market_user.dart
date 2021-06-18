import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../enums.dart';

part 'market_user.g.dart';

@JsonSerializable()
class MarketUser extends Equatable {
  const MarketUser({
    required this.ingameName,
    required this.lastSeen,
    required this.reputation,
    required this.status,
    required this.id,
    this.avatar,
  });

  factory MarketUser.fromJson(Map<String, dynamic> json) {
    return _$MarketUserFromJson(json);
  }

  @JsonKey(name: 'ingame_name')
  final String ingameName;

  @JsonKey(name: 'last_seen')
  final DateTime lastSeen;

  final int reputation;

  final UserStatus status;

  final String id;

  final String? avatar;

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

@JsonSerializable()
class MarketUserProfile extends MarketUser {
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

  factory MarketUserProfile.fromJson(Map<String, dynamic> json) {
    return _$MarketUserProfileFromJson(json);
  }

  final String region;

  final MarketPlatform platform;

  @JsonKey(name: 'own_profile')
  final bool ownProfile;

  final String? background;

  final String about;

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
