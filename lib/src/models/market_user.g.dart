// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'market_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MarketUser _$MarketUserFromJson(Map json) => $checkedCreate(
      'MarketUser',
      json,
      ($checkedConvert) {
        final val = MarketUser(
          ingameName: $checkedConvert('ingame_name', (v) => v as String),
          lastSeen: $checkedConvert('last_seen',
              (v) => v == null ? null : DateTime.parse(v as String)),
          reputation: $checkedConvert('reputation', (v) => v as int),
          region: $checkedConvert('region', (v) => v as String),
          status: $checkedConvert(
              'status', (v) => $enumDecode(_$UserStatusEnumMap, v)),
          id: $checkedConvert('id', (v) => v as String),
          avatar: $checkedConvert('avatar', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {'ingameName': 'ingame_name', 'lastSeen': 'last_seen'},
    );

Map<String, dynamic> _$MarketUserToJson(MarketUser instance) =>
    <String, dynamic>{
      'ingame_name': instance.ingameName,
      'last_seen': instance.lastSeen?.toIso8601String(),
      'reputation': instance.reputation,
      'region': instance.region,
      'status': _$UserStatusEnumMap[instance.status],
      'id': instance.id,
      'avatar': instance.avatar,
    };

const _$UserStatusEnumMap = {
  UserStatus.ingame: 'ingame',
  UserStatus.online: 'online',
  UserStatus.offline: 'offline',
};

MarketUserProfile _$MarketUserProfileFromJson(Map json) => $checkedCreate(
      'MarketUserProfile',
      json,
      ($checkedConvert) {
        final val = MarketUserProfile(
          ingameName: $checkedConvert('ingame_name', (v) => v as String),
          lastSeen:
              $checkedConvert('last_seen', (v) => DateTime.parse(v as String)),
          reputation: $checkedConvert('reputation', (v) => v as int),
          region: $checkedConvert('region', (v) => v as String),
          status: $checkedConvert(
              'status', (v) => $enumDecode(_$UserStatusEnumMap, v)),
          id: $checkedConvert('id', (v) => v as String),
          avatar: $checkedConvert('avatar', (v) => v as String?),
          banned: $checkedConvert('banned', (v) => v as bool),
          about: $checkedConvert('about', (v) => v as String),
          background: $checkedConvert('background', (v) => v as String?),
          ownProfile: $checkedConvert('own_profile', (v) => v as bool),
          platform: $checkedConvert(
              'platform', (v) => $enumDecode(_$MarketPlatformEnumMap, v)),
        );
        return val;
      },
      fieldKeyMap: const {
        'ingameName': 'ingame_name',
        'lastSeen': 'last_seen',
        'ownProfile': 'own_profile'
      },
    );

Map<String, dynamic> _$MarketUserProfileToJson(MarketUserProfile instance) =>
    <String, dynamic>{
      'ingame_name': instance.ingameName,
      'last_seen': instance.lastSeen?.toIso8601String(),
      'reputation': instance.reputation,
      'region': instance.region,
      'status': _$UserStatusEnumMap[instance.status],
      'id': instance.id,
      'avatar': instance.avatar,
      'platform': _$MarketPlatformEnumMap[instance.platform],
      'own_profile': instance.ownProfile,
      'background': instance.background,
      'about': instance.about,
      'banned': instance.banned,
    };

const _$MarketPlatformEnumMap = {
  MarketPlatform.pc: 'pc',
  MarketPlatform.ps4: 'ps4',
  MarketPlatform.swi: 'swi',
  MarketPlatform.xbox: 'xbox',
};
