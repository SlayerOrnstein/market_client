// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'online_count.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OnlineCount _$OnlineCountFromJson(Map<String, dynamic> json) => OnlineCount(
      totalUsers: json['total_users'] as int,
      registeredUsers: json['registered_users'] as int,
    );

Map<String, dynamic> _$OnlineCountToJson(OnlineCount instance) =>
    <String, dynamic>{
      'total_users': instance.totalUsers,
      'registered_users': instance.registeredUsers,
    };
