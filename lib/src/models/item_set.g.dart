// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_set.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ItemSet _$ItemSetFromJson(Map<String, dynamic> json) => ItemSet(
      id: json['id'] as String,
      itemsInSet: (json['items_in_set'] as List<dynamic>)
          .map((e) => ItemFull.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ItemSetToJson(ItemSet instance) => <String, dynamic>{
      'id': instance.id,
      'items_in_set': instance.itemsInSet,
    };
