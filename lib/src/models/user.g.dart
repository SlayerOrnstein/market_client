// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserShort _$UserShortFromJson(Map json) => $checkedCreate(
      'UserShort',
      json,
      ($checkedConvert) {
        final val = UserShort(
          id: $checkedConvert('id', (v) => v as String),
          ingameName: $checkedConvert('ingame_name', (v) => v as String),
          status: $checkedConvert(
              'status', (v) => $enumDecode(_$UserStatusEnumMap, v)),
          region: $checkedConvert('region', (v) => v as String),
          reputation: $checkedConvert('reputation', (v) => v as int),
          avatar: $checkedConvert('avatar', (v) => v as String?),
          lastSeen: $checkedConvert('last_seen',
              (v) => v == null ? null : DateTime.parse(v as String)),
        );
        return val;
      },
      fieldKeyMap: const {'ingameName': 'ingame_name', 'lastSeen': 'last_seen'},
    );

Map<String, dynamic> _$UserShortToJson(UserShort instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'ingame_name': instance.ingameName,
    'status': _$UserStatusEnumMap[instance.status],
    'region': instance.region,
    'reputation': instance.reputation,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('avatar', instance.avatar);
  writeNotNull('last_seen', instance.lastSeen?.toIso8601String());
  return val;
}

const _$UserStatusEnumMap = {
  UserStatus.ingame: 'ingame',
  UserStatus.online: 'online',
  UserStatus.offline: 'offline',
};

CurrentUser _$CurrentUserFromJson(Map json) => $checkedCreate(
      'CurrentUser',
      json,
      ($checkedConvert) {
        final val = CurrentUser(
          id: $checkedConvert('id', (v) => v as String),
          anonymous: $checkedConvert('anonymous', (v) => v as bool),
          verification: $checkedConvert('verification', (v) => v as bool),
          ingameName: $checkedConvert('ingame_name', (v) => v as String),
          checkCode: $checkedConvert('check_code', (v) => v as String),
          role: $checkedConvert('role', (v) => $enumDecode(_$RoleEnumMap, v)),
          patreonProfile: $checkedConvert(
              'patreon_profile',
              (v) =>
                  PatreonProfile.fromJson(Map<String, dynamic>.from(v as Map))),
          platform: $checkedConvert(
              'platform', (v) => $enumDecode(_$MarketPlatformEnumMap, v)),
          region: $checkedConvert('region', (v) => v as String),
          banned: $checkedConvert('banned', (v) => v as bool),
          banReason: $checkedConvert('ban_reason', (v) => v as String),
          avatar: $checkedConvert('avatar', (v) => v as String?),
          background: $checkedConvert('background', (v) => v as String),
          linkedAccounts: $checkedConvert(
              'linked_accounts',
              (v) =>
                  LinkedAccounts.fromJson(Map<String, dynamic>.from(v as Map))),
          hasEmail: $checkedConvert('has_email', (v) => v as bool),
          writtenReviews: $checkedConvert('written_reviews', (v) => v as int),
          unreadMessages: $checkedConvert('unread_messages', (v) => v as int),
        );
        return val;
      },
      fieldKeyMap: const {
        'ingameName': 'ingame_name',
        'checkCode': 'check_code',
        'patreonProfile': 'patreon_profile',
        'banReason': 'ban_reason',
        'linkedAccounts': 'linked_accounts',
        'hasEmail': 'has_email',
        'writtenReviews': 'written_reviews',
        'unreadMessages': 'unread_messages'
      },
    );

Map<String, dynamic> _$CurrentUserToJson(CurrentUser instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'anonymous': instance.anonymous,
    'verification': instance.verification,
    'ingame_name': instance.ingameName,
    'check_code': instance.checkCode,
    'role': _$RoleEnumMap[instance.role],
    'patreon_profile': instance.patreonProfile.toJson(),
    'platform': _$MarketPlatformEnumMap[instance.platform],
    'region': instance.region,
    'banned': instance.banned,
    'ban_reason': instance.banReason,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('avatar', instance.avatar);
  val['background'] = instance.background;
  val['linked_accounts'] = instance.linkedAccounts.toJson();
  val['has_email'] = instance.hasEmail;
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
  MarketPlatform.swi: 'swi',
  MarketPlatform.xbox: 'xbox',
};

PatreonProfile _$PatreonProfileFromJson(Map json) => $checkedCreate(
      'PatreonProfile',
      json,
      ($checkedConvert) {
        final val = PatreonProfile(
          patreonFounder: $checkedConvert('patreon_founder', (v) => v as bool),
          subscription: $checkedConvert('subscription', (v) => v as bool),
          patreonBadge: $checkedConvert(
              'patreon_badge', (v) => $enumDecode(_$PatreonBadgeEnumMap, v)),
        );
        return val;
      },
      fieldKeyMap: const {
        'patreonFounder': 'patreon_founder',
        'patreonBadge': 'patreon_badge'
      },
    );

Map<String, dynamic> _$PatreonProfileToJson(PatreonProfile instance) =>
    <String, dynamic>{
      'patreon_founder': instance.patreonFounder,
      'subscription': instance.subscription,
      'patreon_badge': _$PatreonBadgeEnumMap[instance.patreonBadge],
    };

const _$PatreonBadgeEnumMap = {
  PatreonBadge.bronze: 'bronze',
  PatreonBadge.gold: 'gold',
  PatreonBadge.silver: 'silver',
  PatreonBadge.platinum: 'platinum',
};

LinkedAccounts _$LinkedAccountsFromJson(Map json) => $checkedCreate(
      'LinkedAccounts',
      json,
      ($checkedConvert) {
        final val = LinkedAccounts(
          steam: $checkedConvert('steam', (v) => v as bool),
          patreon: $checkedConvert('patreon', (v) => v as bool),
          xbox: $checkedConvert('xbox', (v) => v as bool),
        );
        return val;
      },
    );

Map<String, dynamic> _$LinkedAccountsToJson(LinkedAccounts instance) =>
    <String, dynamic>{
      'steam': instance.steam,
      'patreon': instance.patreon,
      'xbox': instance.xbox,
    };
