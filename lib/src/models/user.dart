import 'package:dart_mappable/dart_mappable.dart';
import 'package:market_client/src/utils/utils.dart';

part 'user.mapper.dart';

/// User status.
enum UserStatus {
  /// User is online and in-game.
  ingame,

  /// User is online but not in -ame.
  online,

  /// User is offline.
  offline,
}

/// {@template user}
/// Base user class
/// {@endtemplate}
abstract class User {
  /// {@macro user}
  const User({
    required this.id,
    required this.ingameName,
    required this.avatar,
    required this.repoutation,
    required this.locale,
    required this.platform,
    required this.crossplay,
    required this.status,
    required this.activity,
    required this.lastSeen,
  });

  /// Unique identifier of the user.
  final String id;

  /// User's in-game namae.
  final String ingameName;

  /// Optional lint to the user's avatar image.
  final String? avatar;

  /// Reputation score.
  final int repoutation;

  /// Preffered communication locale
  final String locale;

  /// Gaming platform used by the user.
  final MarketPlatform platform;

  /// Does the user want to trade between platforms
  final bool crossplay;

  /// Current user status
  final UserStatus status;

  // TODO(SlayerOrnstein): ActivityType needs a hook to handle empty strings
  /// Current activity the user is engaged in.
  final ActivityType activity;

  /// Timstamp of the user's last online presence.
  final DateTime lastSeen;
}

/// {@template user_short}
/// UserShort description
/// {@endtemplate}
@MappableClass()
class UserShort extends User with UserShortMappable {
  /// {@macro user_short}
  const UserShort({
    required super.id,
    required super.ingameName,
    required super.avatar,
    required super.repoutation,
    required super.locale,
    required super.platform,
    required super.crossplay,
    required super.status,
    required super.activity,
    required super.lastSeen,
  });

  /// Creates a UserShort from Json map
  factory UserShort.fromJson(String json) => UserShortMapper.fromJson(json);
}

/// {@template user_public}
/// Public user profile
/// {@endtemplate}
@MappableClass()
class UserPublic extends User with UserPublicMappable {
  /// {@macro user_public}
  const UserPublic({
    required super.id,
    required super.ingameName,
    required super.avatar,
    required super.repoutation,
    required super.locale,
    required super.platform,
    required super.crossplay,
    required super.status,
    required super.activity,
    required super.lastSeen,
    required this.background,
    required this.about,
    required this.masteryLevel,
    required this.achievementShowcase,
    required this.banned,
    required this.banUntil,
    required this.warned,
    required this.warnMessage,
    required this.banMessage,
  });

  /// {@macro user_public}

  /// Optional lint to the user's profile background image.
  final String? background;

  /// Optional HTML formatted text about the user.
  final String? about;

  /// Optional in-game mastery level.
  final int? masteryLevel;

  /// List of achievements the user chose to showcas
  final List<Achievement> achievementShowcase;

  /// ndicates whether the user is currently banned.
  final bool? banned;

  /// End date of the current ban, if applicable.
  final DateTime? banUntil;

  /// Indicates whether the user has been warned.
  final bool? warned;

  /// Warning message if any.
  final String? warnMessage;

  /// Ban message if any.
  final String? banMessage;
}

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
@MappableClass()
class UserPrivate extends User with UserPrivateMappable {
  /// {@macro current_user}
  UserPrivate({
    required super.id,
    required super.ingameName,
    required super.avatar,
    required super.repoutation,
    required super.locale,
    required super.platform,
    required super.crossplay,
    required super.status,
    super.activity = ActivityType.unknown,
    required super.lastSeen,
    required this.role,
    this.background,
    this.about,
    this.aboutRaw,
    required this.reputation,
    required this.masteryRank,
    required this.credits,
    required this.theme,
    required this.achievementShowcase,
    required this.verification,
    required this.checkCode,
    required this.subscription,
    this.warned,
    this.warnMessage,
    this.banned,
    this.banMessage,
    required this.reviewsLeft,
    required this.unreadMessages,
    required this.ignoreList,
    this.deleteInProgress,
    this.deleteAt,
    required this.linkedAccounts,
    required this.hasEmail,
    required this.writtenReviews,
  });

  /// Creates a CurrentUser from Json map
  factory UserPrivate.fromJson(String data) => UserPrivateMapper.fromJson(data);

  /// User role.
  final Role role;

  /// User background link
  final String? background;

  /// Optional about text in html
  final String? about;

  /// Optional about text in raw markdown
  final String? aboutRaw;

  /// Reputation score
  final int reputation;

  /// In-game mastery level
  final int masteryRank;

  /// In-game currency balance
  final int credits;

  /// Preferred color scheme
  final String theme;

  /// List of achievements the user chose to showcase.
  final Achievement achievementShowcase;

  /// Verification status.
  final bool verification;

  /// Unique check code for the user.
  final String checkCode;

  // TODO(SlayerOrnstein): implement tier

  /// Subscription status.
  final bool subscription;

  /// Whether the user was warned or not.
  final bool? warned;

  /// Warning message.
  final String? warnMessage;

  /// Whether the user was banned or not.
  final bool? banned;

  /// Reseaon for user being banned.
  final String? banMessage;

  /// How many reviews the user can still write today.
  ///
  /// Resets at midnight UTC
  final int reviewsLeft;

  /// Count of unread messages.
  final int unreadMessages;

  /// List of ignored users.
  final List<String> ignoreList;

  /// Flag for pending deletion of the account.
  final bool? deleteInProgress;

  /// Scheduled deletion date.
  final String? deleteAt;

  /// User linked accounts.
  @MappableField(key: 'linked_accounts')
  final LinkedAccounts linkedAccounts;

  /// If the user has an email address.
  final bool hasEmail;

  /// How many reviews the user has written today.
  @MappableField(key: 'written_reviews')
  final int writtenReviews;
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
@MappableClass()
class PatreonProfile with PatreonProfileMappable {
  /// {@macro patreon_profile}
  const PatreonProfile({
    required this.patreonFounder,
    required this.subscription,
    required this.patreonBadge,
  });

  /// Creates a PatreonProfile from Json map
  factory PatreonProfile.fromJson(String json) =>
      PatreonProfileMapper.fromJson(json);

  /// User is a patreon founder.
  @MappableField(key: 'patreon_founder')
  final bool patreonFounder;

  /// User is subscribed.
  final bool subscription;

  /// Patreon tier badge.
  @MappableField(key: 'patreon_badge')
  final PatreonBadge patreonBadge;
}

/// {@template linked_accounts}
/// User linked  accounts.
/// {@endtemplate}
@MappableClass()
class LinkedAccounts with LinkedAccountsMappable {
  /// {@macro linked_accounts}
  const LinkedAccounts({
    this.steamProfile = false,
    this.patreonProfile = false,
    this.xboxProfile = false,
  });

  /// Creates a LinkedAccount from Json map.
  factory LinkedAccounts.fromJson(String json) =>
      LinkedAccountsMapper.fromJson(json);

  /// User has linked their steam profile.
  @MappableField(key: 'steam_profile')
  final bool steamProfile;

  /// User has linked their patreon profile.
  @MappableField(key: 'patreon_profile')
  final bool patreonProfile;

  /// User has linked their xbox profile.
  @MappableField(key: 'xbox_profile')
  final bool xboxProfile;
}

/// AchievementI18n holds localized information for an achievement.
typedef AchievementI18n = ({String name, String description});

/// {@template achievement}
/// Achievement represents a specific achievement.
/// {@endtemplate}
@MappableClass()
class Achievement with AchievementMappable {
  /// {@macro achievement}
  const Achievement({
    required this.id,
    required this.icon,
    required this.thumb,
    required this.type,
    required this.i18n,
  });

  /// Creates a Achievement from Json map.
  factory Achievement.fromJson(String json) => AchievementMapper.fromJson(json);

  /// Unique identifier for the achievement.
  final String id;

  /// URL to the icon representing the achievement.
  final String icon;

  /// URL to the thumbnail image for the achievement.
  final String thumb;

  /// Type or category of the achievement.
  final String type;

  /// Localized text for the achievement.
  final AchievementI18n i18n;
}

/// Currently known activity types
@MappableEnum(mode: ValuesMode.indexed)
enum ActivityType {
  /// User is in a mission
  @MappableValue('on_mission')
  onMission,

  /// User is in a dojo
  dojo,

  /// User activity is unknown
  unknown,

  /// Empty string activity
  @MappableValue('')
  empty;
}
