// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_short.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserShort _$UserShortFromJson(Map<String, dynamic> json) => UserShort(
      id: json['id'] as String,
      ingameName: json['ingame_name'] as String,
      status: $enumDecode(_$UserStatusEnumMap, json['status']),
      region: json['region'] as String,
      locale: json['locale'] as String,
      reputation: json['reputation'] as int,
      avatar: json['avatar'] as String?,
      lastSeen: json['last_seen'] == null
          ? null
          : DateTime.parse(json['last_seen'] as String),
    );

Map<String, dynamic> _$UserShortToJson(UserShort instance) => <String, dynamic>{
      'id': instance.id,
      'ingame_name': instance.ingameName,
      'status': _$UserStatusEnumMap[instance.status]!,
      'region': instance.region,
      'locale': instance.locale,
      'reputation': instance.reputation,
      'avatar': instance.avatar,
      'last_seen': instance.lastSeen?.toIso8601String(),
    };

const _$UserStatusEnumMap = {
  UserStatus.ingame: 'ingame',
  UserStatus.online: 'online',
  UserStatus.offline: 'offline',
};
