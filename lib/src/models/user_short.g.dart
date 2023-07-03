part of 'user_short.dart';

UserShort _$UserShortFromJson(Map<String, dynamic> json) => UserShort(
      id: json['id'] as String,
      ingameName: json['ingameName'] as String,
      status: UserStatus.fromJson(json['status'] as Map<String, dynamic>),
      region: json['region'] as String,
      reputation: json['reputation'] as int,
      avatar: json['avatar'] as String?,
      lastSeen: json['lastSeen'] as DateTime?,
    );

Map<String, dynamic> _$UserShortToJson(UserShort instance) => <String, dynamic>{ 
      'id': instance.id,
      'ingameName': instance.ingameName,
      'status': instance.status,
      'region': instance.region,
      'reputation': instance.reputation,
      'avatar': instance.avatar,
      'lastSeen': instance.lastSeen,
    };