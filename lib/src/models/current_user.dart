import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:market_client/market_client.dart';

part 'current_user.g.dart';

/// User's role.
enum Role {
  /// Anonymous user.
  anonymous,

  /// User.
  user,

  /// This user is a moderator.
  moderator,

  /// This user is an admin.
  admin
}

/// {@template current_user}
/// CurrentUser description
/// {@endtemplate}
@JsonSerializable()
class CurrentUser extends Equatable {
  /// {@macro current_user}
  const CurrentUser({
    required this.id,
    required this.anonymous,
    required this.verification,
    required this.ingameName,
    required this.checkCode,
    required this.role,
    required this.patreonProfile,
    required this.platform,
    required this.region,
    required this.banned,
    required this.banReason,
    required this.avatar,
    required this.background,
    required this.linkedAccounts,
    required this.hasMail,
    required this.writtenReviews,
    required this.unreadMessages,
  });

  /// Creates a CurrentUser from Json map
  factory CurrentUser.fromJson(Map<String, dynamic> data) =>
      _$CurrentUserFromJson(data);

  /// User Id
  final String id;

  /// User is anonymous
  final bool anonymous;

  /// A description for verification
  // TODO(Ornstein): find out what this is.
  final bool verification;

  /// User's ingame name.
  @JsonKey(name: 'ingame_name')
  final String ingameName;

  /// Whether the user has verfied their email(?)
  // TODO(Ornstein): confirm what check code is.
  @JsonKey(name: 'check_code')
  final String checkCode;

  /// User role.
  final Role role;

  /// User patreon profile.
  @JsonKey(name: 'patreon_profile')
  final PatreonProfile? patreonProfile;

  /// User preferred game platform.
  final MarketPlatform platform;

  /// User's region.
  final String region;

  /// Whether the user was banned or not.
  final bool banned;

  /// Reseaon for user being banned.
  @JsonKey(name: 'ban_reason')
  final String? banReason;

  /// User avater link.
  final String? avatar;

  /// User background link
  final String? background;

  /// User linked accounts.
  @JsonKey(name: 'linked_accounts')
  final LinkedAccounts linkedAccounts;

  /// if the use has a verified email.
  // TODO(Ornstein): needs comfirmation.
  @JsonKey(name: 'has_mail')
  final bool hasMail;

  /// How many reviews the user has written today.
  @JsonKey(name: 'written_reviews')
  final int writtenReviews;

  /// Number of unread messages.
  @JsonKey(name: 'unread_messages')
  final int unreadMessages;

  /// Creates a copy of the current CurrentUser with property changes
  CurrentUser copyWith({
    String? id,
    bool? anonymous,
    bool? verification,
    String? ingameName,
    String? checkCode,
    Role? role,
    PatreonProfile? patreonProfile,
    MarketPlatform? platform,
    String? region,
    bool? banned,
    String? banReason,
    String? avatar,
    String? background,
    LinkedAccounts? linkedAccounts,
    bool? hasMail,
    int? writtenReviews,
    int? unreadMessages,
  }) {
    return CurrentUser(
      id: id ?? this.id,
      anonymous: anonymous ?? this.anonymous,
      verification: verification ?? this.verification,
      ingameName: ingameName ?? this.ingameName,
      checkCode: checkCode ?? this.checkCode,
      role: role ?? this.role,
      patreonProfile: patreonProfile ?? this.patreonProfile,
      platform: platform ?? this.platform,
      region: region ?? this.region,
      banned: banned ?? this.banned,
      banReason: banReason ?? this.banReason,
      avatar: avatar ?? this.avatar,
      background: background ?? this.background,
      linkedAccounts: linkedAccounts ?? this.linkedAccounts,
      hasMail: hasMail ?? this.hasMail,
      writtenReviews: writtenReviews ?? this.writtenReviews,
      unreadMessages: unreadMessages ?? this.unreadMessages,
    );
  }

  @override
  List<Object?> get props => [
        id,
        anonymous,
        verification,
        ingameName,
        checkCode,
        role,
        patreonProfile,
        platform,
        region,
        banned,
        banReason,
        avatar,
        background,
        linkedAccounts,
        hasMail,
        writtenReviews,
        unreadMessages,
      ];

  /// Creates a Json map from a CurrentUser
  Map<String, dynamic> toJson() => _$CurrentUserToJson(this);
}

/// User patreon badge.
enum PatreonBadge {
  /// Bronze badge.
  bronze,

  /// Silver badge.
  silver,

  /// Gold badge.
  gold,

  /// Platinum badge.
  platinum,
}

/// {@template patreon_profile}
/// User Patreon profile
/// {@endtemplate}
@JsonSerializable()
class PatreonProfile extends Equatable {
  /// {@macro patreon_profile}
  const PatreonProfile({
    required this.patreonFounder,
    required this.subscription,
    required this.patreonBadge,
  });

  /// Creates a PatreonProfile from Json map
  factory PatreonProfile.fromJson(Map<String, dynamic> data) {
    return _$PatreonProfileFromJson(data);
  }

  /// User is a patreon founder.
  @JsonKey(name: 'patreon_founder')
  final bool patreonFounder;

  /// User is subscribed.
  final bool subscription;

  /// Patreon tier badge.
  @JsonKey(name: 'patreon_badge')
  final PatreonBadge patreonBadge;

  @override
  List<Object?> get props => [patreonFounder, subscription, patreonBadge];

  /// Creates a Json map from a PatreonProfile
  Map<String, dynamic> toJson() => _$PatreonProfileToJson(this);
}

/// {@template linked_accounts}
/// User linked  accounts.
/// {@endtemplate}
@JsonSerializable()
class LinkedAccounts extends Equatable {
  /// {@macro linked_accounts}
  const LinkedAccounts({
    this.steamProfile = false,
    this.patreonProfile = false,
    this.xboxProfile = false,
  });

  /// Creates a LinkedAccount from Json map.
  factory LinkedAccounts.fromJson(Map<String, dynamic> data) {
    return _$LinkedAccountsFromJson(data);
  }

  /// User has linked their steam profile.
  @JsonKey(name: 'steam_profile')
  final bool steamProfile;

  /// User has linked their patreon profile.
  @JsonKey(name: 'patreon_profile')
  final bool patreonProfile;

  /// User has linked their xbox profile.
  @JsonKey(name: 'xbox_profile')
  final bool xboxProfile;

  @override
  List<Object?> get props => [steamProfile, patreonProfile, xboxProfile];

  /// Creates a Json map from a LinkedAccount.
  Map<String, dynamic> toJson() => _$LinkedAccountsToJson(this);
}
