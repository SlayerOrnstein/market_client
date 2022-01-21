import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:market_client/market_client.dart';

part 'user.g.dart';

/// {@template user_short}
/// Brief overview of User.
/// {@endtemplate}
@JsonSerializable()
class UserShort extends Equatable {
  /// {@macro user_short}
  const UserShort({
    required this.id,
    required this.ingameName,
    required this.status,
    required this.region,
    required this.reputation,
    this.avatar,
    this.lastSeen,
  });

  /// {@macro user_short}
  factory UserShort.fromJson(Map<String, dynamic> json) {
    return _$UserShortFromJson(json);
  }

  /// User ID.
  final String id;

  /// User's in-game name.
  @JsonKey(name: 'ingame_name')
  final String ingameName;

  /// User's current status.
  final UserStatus status;

  /// user's region.
  final String region;

  /// User reputation.
  final int reputation;

  /// User avatar.
  final String? avatar;

  /// When the user was last online.
  @JsonKey(name: 'last_seen')
  final DateTime? lastSeen;

  /// Returns this as a json.
  Map<String, dynamic> toJson() => _$UserShortToJson(this);

  @override
  List<Object?> get props {
    return [
      id,
      ingameName,
      status,
      region,
      reputation,
      avatar,
      lastSeen,
    ];
  }
}

/// User role.
enum Role {
  /// Anonymous User.
  anonymous,

  /// Regular user.
  user,

  /// Moderator.
  moderator,

  /// Admin.
  admin,
}

/// {@template current_user}
/// Current User's profile.
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
    required this.hasEmail,
    required this.writtenReviews,
    required this.unreadMessages,
  });

  /// {@macro current_user}
  factory CurrentUser.fromJson(Map<String, dynamic> json) {
    return _$CurrentUserFromJson(json);
  }

  /// User ID.
  final String id;

  /// If the user is anonymous. (?)
  final bool anonymous;

  /// If user has completed their verification process. (?)
  final bool verification;

  /// User's in-game name.
  @JsonKey(name: 'ingame_name')
  final String ingameName;

  /// Theory:
  /// Whether the user has checked their verification code.
  @JsonKey(name: 'check_code')
  final String checkCode;

  /// User [Role].
  final Role role;

  /// Patreon profile.
  @JsonKey(name: 'patreon_profile')
  final PatreonProfile patreonProfile;

  /// Game platform.
  final MarketPlatform platform;

  /// User Region.
  final String region;

  /// Whether the user is banned.
  ///
  /// See [banReason] to see why they were banned.
  final bool banned;

  /// Why the user was banned.
  @JsonKey(name: 'ban_reason')
  final String banReason;

  /// User avatar.
  final String? avatar;

  /// User background.
  final String background;

  /// Accounts linked to this.
  @JsonKey(name: 'linked_accounts')
  final LinkedAccounts linkedAccounts;

  /// Whether the user has an email linked to this account.
  @JsonKey(name: 'has_email')
  final bool hasEmail;

  /// How many reviews this user has.
  @JsonKey(name: 'written_reviews')
  final int writtenReviews;

  /// Unread messages.
  @JsonKey(name: 'unread_messages')
  final int unreadMessages;

  /// Returns this in as json.
  Map<String, dynamic> toJson() => _$CurrentUserToJson(this);

  @override
  List<Object?> get props {
    return [
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
      hasEmail,
      writtenReviews,
      unreadMessages,
    ];
  }
}

/// Patreon badge.
enum PatreonBadge {
  /// Bronze.
  bronze,

  /// Gold.
  gold,

  /// Silver.
  silver,

  /// Platinum.
  platinum,
}

/// {@template patreon_profile}
/// Patreon Profile linked to the [CurrentUser].
/// {@endtemplate}
@JsonSerializable()
class PatreonProfile extends Equatable {
  /// {@macro patreon_profile}
  const PatreonProfile({
    required this.patreonFounder,
    required this.subscription,
    required this.patreonBadge,
  });

  /// Patreon Profile from json.
  factory PatreonProfile.fromJson(Map<String, dynamic> json) {
    return _$PatreonProfileFromJson(json);
  }

  /// If user is a founder.
  @JsonKey(name: 'patreon_founder')
  final bool patreonFounder;

  /// Is the user is still subscribed.
  final bool subscription;

  /// The badge that user has.
  @JsonKey(name: 'patreon_badge')
  final PatreonBadge patreonBadge;

  /// Returns the instance as JSON.
  Map<String, dynamic> toJson() => _$PatreonProfileToJson(this);

  @override
  List<Object?> get props => [patreonFounder, subscription, patreonBadge];
}

/// {@template linked_accounts}
/// Accounts linked to the [CurrentUser]
///
/// Doesn't include actual profiles, just whether they're enabled or not.
/// {@endtemplate}
@JsonSerializable()
class LinkedAccounts extends Equatable {
  /// {@macro linked_accounts}
  const LinkedAccounts({
    required this.steam,
    required this.patreon,
    required this.xbox,
  });

  /// {@macro linked_accounts}
  factory LinkedAccounts.fromJson(Map<String, dynamic> json) {
    return _$LinkedAccountsFromJson(json);
  }

  /// If the user has linked their steam account.
  final bool steam;

  /// If user has linked their patreon account.
  final bool patreon;

  /// If user has linked thier xbox account.
  final bool xbox;

  /// Returns this as a json.
  Map<String, dynamic> toJson() => _$LinkedAccountsToJson(this);

  @override
  List<Object?> get props => [steam, patreon, xbox];
}
