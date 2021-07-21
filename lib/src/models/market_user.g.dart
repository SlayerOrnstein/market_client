// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'market_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MarketUser _$MarketUserFromJson(Map json) {
  return $checkedNew('MarketUser', json, () {
    final val = MarketUser(
      ingameName: $checkedConvert(json, 'ingame_name', (v) => v as String),
      lastSeen: $checkedConvert(json, 'last_seen',
          (v) => v == null ? null : DateTime.parse(v as String)),
      reputation: $checkedConvert(json, 'reputation', (v) => v as int),
      status: $checkedConvert(
          json, 'status', (v) => _$enumDecode(_$UserStatusEnumMap, v)),
      id: $checkedConvert(json, 'id', (v) => v as String),
      avatar: $checkedConvert(json, 'avatar', (v) => v as String?),
    );
    return val;
  }, fieldKeyMap: const {'ingameName': 'ingame_name', 'lastSeen': 'last_seen'});
}

Map<String, dynamic> _$MarketUserToJson(MarketUser instance) =>
    <String, dynamic>{
      'ingame_name': instance.ingameName,
      'last_seen': instance.lastSeen?.toIso8601String(),
      'reputation': instance.reputation,
      'status': _$UserStatusEnumMap[instance.status],
      'id': instance.id,
      'avatar': instance.avatar,
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

const _$UserStatusEnumMap = {
  UserStatus.ingame: 'ingame',
  UserStatus.online: 'online',
  UserStatus.offline: 'offline',
};

MarketUserProfile _$MarketUserProfileFromJson(Map json) {
  return $checkedNew('MarketUserProfile', json, () {
    final val = MarketUserProfile(
      ingameName: $checkedConvert(json, 'ingame_name', (v) => v as String),
      lastSeen: $checkedConvert(
          json, 'last_seen', (v) => DateTime.parse(v as String)),
      reputation: $checkedConvert(json, 'reputation', (v) => v as int),
      status: $checkedConvert(
          json, 'status', (v) => _$enumDecode(_$UserStatusEnumMap, v)),
      id: $checkedConvert(json, 'id', (v) => v as String),
      avatar: $checkedConvert(json, 'avatar', (v) => v as String?),
      banned: $checkedConvert(json, 'banned', (v) => v as bool),
      about: $checkedConvert(json, 'about', (v) => v as String),
      background: $checkedConvert(json, 'background', (v) => v as String?),
      ownProfile: $checkedConvert(json, 'own_profile', (v) => v as bool),
      platform: $checkedConvert(
          json, 'platform', (v) => _$enumDecode(_$MarketPlatformEnumMap, v)),
      region: $checkedConvert(json, 'region', (v) => v as String),
    );
    return val;
  }, fieldKeyMap: const {
    'ingameName': 'ingame_name',
    'lastSeen': 'last_seen',
    'ownProfile': 'own_profile'
  });
}

Map<String, dynamic> _$MarketUserProfileToJson(MarketUserProfile instance) =>
    <String, dynamic>{
      'ingame_name': instance.ingameName,
      'last_seen': instance.lastSeen?.toIso8601String(),
      'reputation': instance.reputation,
      'status': _$UserStatusEnumMap[instance.status],
      'id': instance.id,
      'avatar': instance.avatar,
      'region': instance.region,
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
