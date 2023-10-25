// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CurrentUser _$CurrentUserFromJson(Map<String, dynamic> json) => CurrentUser(
      id: json['id'] as String,
      anonymous: json['anonymous'] as bool,
      verification: json['verification'] as bool,
      ingameName: json['ingame_name'] as String,
      checkCode: json['check_code'] as String,
      role: $enumDecode(_$RoleEnumMap, json['role']),
      patreonProfile: json['patreon_profile'] == null
          ? null
          : PatreonProfile.fromJson(
              json['patreon_profile'] as Map<String, dynamic>),
      platform: $enumDecode(_$MarketPlatformEnumMap, json['platform']),
      region: json['region'] as String,
      banned: json['banned'] as bool,
      banReason: json['ban_reason'] as String?,
      avatar: json['avatar'] as String?,
      background: json['background'] as String?,
      linkedAccounts: LinkedAccounts.fromJson(
          json['linked_accounts'] as Map<String, dynamic>),
      hasMail: json['has_mail'] as bool,
      writtenReviews: json['written_reviews'] as int,
      unreadMessages: json['unread_messages'] as int,
    );

Map<String, dynamic> _$CurrentUserToJson(CurrentUser instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'anonymous': instance.anonymous,
    'verification': instance.verification,
    'ingame_name': instance.ingameName,
    'check_code': instance.checkCode,
    'role': _$RoleEnumMap[instance.role]!,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('patreon_profile', instance.patreonProfile?.toJson());
  val['platform'] = _$MarketPlatformEnumMap[instance.platform]!;
  val['region'] = instance.region;
  val['banned'] = instance.banned;
  writeNotNull('ban_reason', instance.banReason);
  writeNotNull('avatar', instance.avatar);
  writeNotNull('background', instance.background);
  val['linked_accounts'] = instance.linkedAccounts.toJson();
  val['has_mail'] = instance.hasMail;
  val['written_reviews'] = instance.writtenReviews;
  val['unread_messages'] = instance.unreadMessages;
  return val;
}

const _$RoleEnumMap = {
  Role.anonymous: 'anonymous',
  Role.user: 'user',
  Role.moderator: 'moderator',
  Role.admin: 'admin',
};

const _$MarketPlatformEnumMap = {
  MarketPlatform.pc: 'pc',
  MarketPlatform.ps4: 'ps4',
  MarketPlatform.swi: 'switch',
  MarketPlatform.xbox: 'xbox',
};

PatreonProfile _$PatreonProfileFromJson(Map<String, dynamic> json) =>
    PatreonProfile(
      patreonFounder: json['patreon_founder'] as bool,
      subscription: json['subscription'] as bool,
      patreonBadge: $enumDecode(_$PatreonBadgeEnumMap, json['patreon_badge']),
    );

Map<String, dynamic> _$PatreonProfileToJson(PatreonProfile instance) =>
    <String, dynamic>{
      'patreon_founder': instance.patreonFounder,
      'subscription': instance.subscription,
      'patreon_badge': _$PatreonBadgeEnumMap[instance.patreonBadge]!,
    };

const _$PatreonBadgeEnumMap = {
  PatreonBadge.bronze: 'bronze',
  PatreonBadge.silver: 'silver',
  PatreonBadge.gold: 'gold',
  PatreonBadge.platinum: 'platinum',
};

LinkedAccounts _$LinkedAccountsFromJson(Map<String, dynamic> json) =>
    LinkedAccounts(
      steamProfile: json['steam_profile'] as bool? ?? false,
      patreonProfile: json['patreon_profile'] as bool? ?? false,
      xboxProfile: json['xbox_profile'] as bool? ?? false,
    );

Map<String, dynamic> _$LinkedAccountsToJson(LinkedAccounts instance) =>
    <String, dynamic>{
      'steam_profile': instance.steamProfile,
      'patreon_profile': instance.patreonProfile,
      'xbox_profile': instance.xboxProfile,
    };
