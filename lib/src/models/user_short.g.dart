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
      lastSeen: _$JsonConverterFromJson<String, DateTime>(
          json['last_seen'], const DateTimeWithOffset().fromJson),
    );

Map<String, dynamic> _$UserShortToJson(UserShort instance) => <String, dynamic>{
      'id': instance.id,
      'ingame_name': instance.ingameName,
      'status': _$UserStatusEnumMap[instance.status]!,
      'region': instance.region,
      'locale': instance.locale,
      'reputation': instance.reputation,
      'avatar': instance.avatar,
      'last_seen': _$JsonConverterToJson<String, DateTime>(
          instance.lastSeen, const DateTimeWithOffset().toJson),
    };

const _$UserStatusEnumMap = {
  UserStatus.ingame: 'ingame',
  UserStatus.online: 'online',
  UserStatus.offline: 'offline',
};

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
