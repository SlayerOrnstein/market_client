// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lang.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LangShort _$LangShortFromJson(Map json) => $checkedCreate(
      'LangShort',
      json,
      ($checkedConvert) {
        final val = LangShort(
          itemName: $checkedConvert('item_name', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {'itemName': 'item_name'},
    );

Map<String, dynamic> _$LangShortToJson(LangShort instance) => <String, dynamic>{
      'item_name': instance.itemName,
    };

LangInItem _$LangInItemFromJson(Map json) => $checkedCreate(
      'LangInItem',
      json,
      ($checkedConvert) {
        final val = LangInItem(
          itemName: $checkedConvert('item_name', (v) => v as String),
          description: $checkedConvert('description', (v) => v as String),
          wikiLink: $checkedConvert('wiki_link', (v) => v as String?),
          drops: $checkedConvert(
              'drop',
              (v) => (v as List<dynamic>)
                  .map((e) =>
                      LangDrop.fromJson(Map<String, dynamic>.from(e as Map)))
                  .toList()),
        );
        return val;
      },
      fieldKeyMap: const {
        'itemName': 'item_name',
        'wikiLink': 'wiki_link',
        'drops': 'drop'
      },
    );

Map<String, dynamic> _$LangInItemToJson(LangInItem instance) {
  final val = <String, dynamic>{
    'item_name': instance.itemName,
    'description': instance.description,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('wiki_link', instance.wikiLink);
  val['drop'] = instance.drops.map((e) => e.toJson()).toList();
  return val;
}

LangDrop _$LangDropFromJson(Map json) => $checkedCreate(
      'LangDrop',
      json,
      ($checkedConvert) {
        final val = LangDrop(
          name: $checkedConvert('name', (v) => v as String),
          link: $checkedConvert('link', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$LangDropToJson(LangDrop instance) {
  final val = <String, dynamic>{
    'name': instance.name,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('link', instance.link);
  return val;
}
