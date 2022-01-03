// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_set.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ItemSet _$ItemSetFromJson(Map json) => $checkedCreate(
      'ItemSet',
      json,
      ($checkedConvert) {
        final val = ItemSet(
          id: $checkedConvert('id', (v) => v as String),
          itemsInSet: $checkedConvert(
              'items_in_set',
              (v) => (v as List<dynamic>)
                  .map((e) =>
                      SetItem.fromJson(Map<String, dynamic>.from(e as Map)))
                  .toList()),
        );
        return val;
      },
      fieldKeyMap: const {'itemsInSet': 'items_in_set'},
    );

Map<String, dynamic> _$ItemSetToJson(ItemSet instance) => <String, dynamic>{
      'id': instance.id,
      'items_in_set': instance.itemsInSet.map((e) => e.toJson()).toList(),
    };

SetItem _$SetItemFromJson(Map json) => $checkedCreate(
      'SetItem',
      json,
      ($checkedConvert) {
        final val = SetItem(
          id: $checkedConvert('id', (v) => v as String),
          urlName: $checkedConvert('url_name', (v) => v as String),
          tradingTax: $checkedConvert('trading_tax', (v) => v as int),
          subIcon: $checkedConvert('sub_icon', (v) => v as String?),
          icon: $checkedConvert('icon', (v) => v as String),
          iconFormat: $checkedConvert('icon_format', (v) => v as String),
          masteryLevel: $checkedConvert('mastery_level', (v) => v as int?),
          tags: $checkedConvert('tags',
              (v) => (v as List<dynamic>).map((e) => e as String).toList()),
          thumb: $checkedConvert('thumb', (v) => v as String),
          ducats: $checkedConvert('ducats', (v) => v as int?),
          setRoot: $checkedConvert('set_root', (v) => v as bool?),
          en: $checkedConvert(
              'en',
              (v) =>
                  ItemLanguage.fromJson(Map<String, dynamic>.from(v as Map))),
          ru: $checkedConvert(
              'ru',
              (v) =>
                  ItemLanguage.fromJson(Map<String, dynamic>.from(v as Map))),
          ko: $checkedConvert(
              'ko',
              (v) =>
                  ItemLanguage.fromJson(Map<String, dynamic>.from(v as Map))),
          fr: $checkedConvert(
              'fr',
              (v) =>
                  ItemLanguage.fromJson(Map<String, dynamic>.from(v as Map))),
          sv: $checkedConvert(
              'sv',
              (v) =>
                  ItemLanguage.fromJson(Map<String, dynamic>.from(v as Map))),
          de: $checkedConvert(
              'de',
              (v) =>
                  ItemLanguage.fromJson(Map<String, dynamic>.from(v as Map))),
          zhhant: $checkedConvert(
              'zh-hant',
              (v) =>
                  ItemLanguage.fromJson(Map<String, dynamic>.from(v as Map))),
          zhhans: $checkedConvert(
              'zh-hans',
              (v) =>
                  ItemLanguage.fromJson(Map<String, dynamic>.from(v as Map))),
          pt: $checkedConvert(
              'pt',
              (v) =>
                  ItemLanguage.fromJson(Map<String, dynamic>.from(v as Map))),
          es: $checkedConvert(
              'es',
              (v) =>
                  ItemLanguage.fromJson(Map<String, dynamic>.from(v as Map))),
          pl: $checkedConvert(
              'pl',
              (v) =>
                  ItemLanguage.fromJson(Map<String, dynamic>.from(v as Map))),
        );
        return val;
      },
      fieldKeyMap: const {
        'urlName': 'url_name',
        'tradingTax': 'trading_tax',
        'subIcon': 'sub_icon',
        'iconFormat': 'icon_format',
        'masteryLevel': 'mastery_level',
        'setRoot': 'set_root',
        'zhhant': 'zh-hant',
        'zhhans': 'zh-hans'
      },
    );

Map<String, dynamic> _$SetItemToJson(SetItem instance) => <String, dynamic>{
      'id': instance.id,
      'url_name': instance.urlName,
      'trading_tax': instance.tradingTax,
      'sub_icon': instance.subIcon,
      'icon': instance.icon,
      'icon_format': instance.iconFormat,
      'mastery_level': instance.masteryLevel,
      'tags': instance.tags,
      'thumb': instance.thumb,
      'ducats': instance.ducats,
      'set_root': instance.setRoot,
      'en': instance.en.toJson(),
      'ru': instance.ru.toJson(),
      'ko': instance.ko.toJson(),
      'fr': instance.fr.toJson(),
      'sv': instance.sv.toJson(),
      'de': instance.de.toJson(),
      'zh-hant': instance.zhhant.toJson(),
      'zh-hans': instance.zhhans.toJson(),
      'pt': instance.pt.toJson(),
      'es': instance.es.toJson(),
      'pl': instance.pl.toJson(),
    };

ItemLanguage _$ItemLanguageFromJson(Map json) => $checkedCreate(
      'ItemLanguage',
      json,
      ($checkedConvert) {
        final val = ItemLanguage(
          itemName: $checkedConvert('item_name', (v) => v as String),
          description: $checkedConvert('description', (v) => v as String?),
          wikiLink: $checkedConvert('wiki_link', (v) => v as String?),
          drops: $checkedConvert(
              'drop',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      ItemDrop.fromJson(Map<String, dynamic>.from(e as Map)))
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

Map<String, dynamic> _$ItemLanguageToJson(ItemLanguage instance) =>
    <String, dynamic>{
      'item_name': instance.itemName,
      'description': instance.description,
      'wiki_link': instance.wikiLink,
      'drop': instance.drops?.map((e) => e.toJson()).toList(),
    };

ItemDrop _$ItemDropFromJson(Map json) => $checkedCreate(
      'ItemDrop',
      json,
      ($checkedConvert) {
        final val = ItemDrop(
          name: $checkedConvert('name', (v) => v as String),
          link: $checkedConvert('link', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$ItemDropToJson(ItemDrop instance) => <String, dynamic>{
      'name': instance.name,
      'link': instance.link,
    };
