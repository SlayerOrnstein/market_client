import 'package:dart_mappable/dart_mappable.dart';
import 'package:market_client/src/utils/utils.dart';

part 'user.mapper.dart';

/// User status.
@MappableEnum()
enum UserStatus {
  /// User is online and in-game.
  ingame,

  /// User is online but not in -ame.
  online,

  /// User is offline.
  offline,
}

/// Subscription tier, form Patreon \ Afdian \ Nitropay
@MappableEnum()
enum SubscriptionTier {
  /// Not subscribed
  none,

  /// Bronze tier
  bronze,

  /// Silver tier
  silver,

  /// Gold tier
  gold,

  /// Diamond tier
  diamond,
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
    required this.reputation,
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
  final int reputation;

  /// Preffered communication locale
  final String locale;

  /// Gaming platform used by the user.
  final MarketPlatform platform;

  /// Does the user want to trade between platforms
  final bool crossplay;

  /// Current user status
  final UserStatus status;

  /// Current activity the user is engaged in.
  final Activity activity;

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
    required super.reputation,
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
    required super.reputation,
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
    required this.isBanned,
    required this.banUntil,
    required this.wasWarned,
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
  @MappableField(key: 'banned')
  final bool? isBanned;

  /// End date of the current ban, if applicable.
  final DateTime? banUntil;

  /// Indicates whether the user has been warned.
  @MappableField(key: 'warned')
  final bool? wasWarned;

  /// Warning message if any.
  final String? warnMessage;

  /// Ban message if any.
  final String? banMessage;
}

/// User's role.
@MappableEnum()
enum Role {
  /// Anonymous user.
  anonymous,

  /// User.
  user,

  /// This user is a moderator.
  moderator,

  /// This user is an admin.
  admin,
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
    required super.reputation,
    required super.locale,
    required super.platform,
    required super.crossplay,
    required super.status,
    super.activity = const Activity(type: ''),
    required super.lastSeen,
    required this.role,
    this.background,
    this.about,
    this.aboutRaw,
    required this.masteryRank,
    required this.credits,
    required this.theme,
    required this.achievementShowcase,
    required this.verification,
    required this.checkCode,
    required this.tier,
    required this.isSubscribed,
    this.wasWarned,
    this.warnMessage,
    this.isBanned,
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

  /// User subscription tier
  final SubscriptionTier tier;

  /// Subscription status.
  @MappableField(key: 'subscription')
  final bool isSubscribed;

  /// Whether the user was warned or not.
  @MappableField(key: 'warned')
  final bool? wasWarned;

  /// Warning message.
  final String? warnMessage;

  /// Whether the user was banned or not.
  @MappableField(key: 'banned')
  final bool? isBanned;

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
@MappableEnum()
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
@MappableRecord()
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

/// Type of activity
@MappableEnum()
enum ActivityType {
  /// User is on a mission
  @MappableValue('on_mission')
  onMission,

  /// User is in a dojo
  dojo,

  /// Unknown activity type
  unknown,

  /// Nothing
  @MappableValue('')
  none,
}

/// {@template activity}
/// Details about current activity the user is engaged in.
/// {@endtemplate}
@MappableClass()
class Activity with ActivityMappable {
  /// {@macro activity}
  const Activity({required this.type, this.details, this.startedAt});

  /// Name of the activity.
  ///
  /// i.e. 'on mission', 'dojo'.
  final String type;

  /// Optional specifics about the activity.
  ///
  /// i.e. mission name, solo/squad status.
  final String? details;

  /// Timestamp of when the activity was started.
  final DateTime? startedAt;
}
