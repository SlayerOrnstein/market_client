// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Location _$LocationFromJson(Map<String, dynamic> json) => Location(
      id: json['id'] as String,
      urlName: json['url_name'] as String,
      icon: json['icon'] as String,
      thumb: json['thumb'] as String,
      minLevel: (json['min_level'] as num).toInt(),
      maxLevel: (json['max_level'] as num).toInt(),
      faction: $enumDecode(_$FactionEnumMap, json['faction']),
      nodeName: json['node_name'] as String,
      systemName: json['system_name'] as String,
    );

Map<String, dynamic> _$LocationToJson(Location instance) => <String, dynamic>{
      'id': instance.id,
      'url_name': instance.urlName,
      'icon': instance.icon,
      'thumb': instance.thumb,
      'min_level': instance.minLevel,
      'max_level': instance.maxLevel,
      'faction': _$FactionEnumMap[instance.faction]!,
      'node_name': instance.nodeName,
      'system_name': instance.systemName,
    };

const _$FactionEnumMap = {
  Faction.infested: 'infested',
  Faction.grineer: 'grineer',
  Faction.corpus: 'corpus',
  Faction.corrupted: 'corrupted',
};
