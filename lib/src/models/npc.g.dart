// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'npc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Npc _$NpcFromJson(Map<String, dynamic> json) => Npc(
      id: json['id'] as String,
      urlName: json['urlName'] as String,
      icon: json['icon'] as String,
      thumb: json['thumb'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$NpcToJson(Npc instance) => <String, dynamic>{
      'id': instance.id,
      'urlName': instance.urlName,
      'icon': instance.icon,
      'thumb': instance.thumb,
      'name': instance.name,
    };
