// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_set.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ItemSet _$ItemSetFromJson(Map json) {
  return $checkedNew('ItemSet', json, () {
    final val = ItemSet(
      id: $checkedConvert(json, 'id', (v) => v as String),
      itemsInSet: $checkedConvert(
          json,
          'items_in_set',
          (v) => (v as List<dynamic>)
              .map((e) => SetItem.fromJson(Map<String, dynamic>.from(e as Map)))
              .toList()),
    );
    return val;
  }, fieldKeyMap: const {'itemsInSet': 'items_in_set'});
}

Map<String, dynamic> _$ItemSetToJson(ItemSet instance) => <String, dynamic>{
      'id': instance.id,
      'items_in_set': instance.itemsInSet.map((e) => e.toJson()).toList(),
    };

SetItem _$SetItemFromJson(Map json) {
  return $checkedNew('SetItem', json, () {
    final val = SetItem(
      id: $checkedConvert(json, 'id', (v) => v as String),
      urlName: $checkedConvert(json, 'url_name', (v) => v as String),
      tradingTax: $checkedConvert(json, 'trading_tax', (v) => v as int),
      subIcon: $checkedConvert(json, 'sub_icon', (v) => v as String?),
      icon: $checkedConvert(json, 'icon', (v) => v as String),
      iconFormat: $checkedConvert(json, 'icon_format', (v) => v as String),
      masteryLevel: $checkedConvert(json, 'mastery_level', (v) => v as int?),
      tags: $checkedConvert(json, 'tags',
          (v) => (v as List<dynamic>).map((e) => e as String).toList()),
      thumb: $checkedConvert(json, 'thumb', (v) => v as String),
      ducats: $checkedConvert(json, 'ducats', (v) => v as int?),
      setRoot: $checkedConvert(json, 'set_root', (v) => v as bool?),
      en: $checkedConvert(json, 'en',
          (v) => ItemLanguage.fromJson(Map<String, dynamic>.from(v as Map))),
      ru: $checkedConvert(json, 'ru',
          (v) => ItemLanguage.fromJson(Map<String, dynamic>.from(v as Map))),
      ko: $checkedConvert(json, 'ko',
          (v) => ItemLanguage.fromJson(Map<String, dynamic>.from(v as Map))),
      fr: $checkedConvert(json, 'fr',
          (v) => ItemLanguage.fromJson(Map<String, dynamic>.from(v as Map))),
      sv: $checkedConvert(json, 'sv',
          (v) => ItemLanguage.fromJson(Map<String, dynamic>.from(v as Map))),
      de: $checkedConvert(json, 'de',
          (v) => ItemLanguage.fromJson(Map<String, dynamic>.from(v as Map))),
      zhhant: $checkedConvert(json, 'zh-hant',
          (v) => ItemLanguage.fromJson(Map<String, dynamic>.from(v as Map))),
      zhhans: $checkedConvert(json, 'zh-hans',
          (v) => ItemLanguage.fromJson(Map<String, dynamic>.from(v as Map))),
      pt: $checkedConvert(json, 'pt',
          (v) => ItemLanguage.fromJson(Map<String, dynamic>.from(v as Map))),
      es: $checkedConvert(json, 'es',
          (v) => ItemLanguage.fromJson(Map<String, dynamic>.from(v as Map))),
      pl: $checkedConvert(json, 'pl',
          (v) => ItemLanguage.fromJson(Map<String, dynamic>.from(v as Map))),
    );
    return val;
  }, fieldKeyMap: const {
    'urlName': 'url_name',
    'tradingTax': 'trading_tax',
    'subIcon': 'sub_icon',
    'iconFormat': 'icon_format',
    'masteryLevel': 'mastery_level',
    'setRoot': 'set_root',
    'zhhant': 'zh-hant',
    'zhhans': 'zh-hans'
  });
}

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

ItemLanguage _$ItemLanguageFromJson(Map json) {
  return $checkedNew('ItemLanguage', json, () {
    final val = ItemLanguage(
      itemName: $checkedConvert(json, 'item_name', (v) => v as String),
      description: $checkedConvert(json, 'description', (v) => v as String),
      wikiLink: $checkedConvert(json, 'wiki_link', (v) => v as String),
      drops: $checkedConvert(
          json,
          'drop',
          (v) => (v as List<dynamic>?)
              ?.map(
                  (e) => ItemDrop.fromJson(Map<String, dynamic>.from(e as Map)))
              .toList()),
    );
    return val;
  }, fieldKeyMap: const {
    'itemName': 'item_name',
    'wikiLink': 'wiki_link',
    'drops': 'drop'
  });
}

Map<String, dynamic> _$ItemLanguageToJson(ItemLanguage instance) =>
    <String, dynamic>{
      'item_name': instance.itemName,
      'description': instance.description,
      'wiki_link': instance.wikiLink,
      'drop': instance.drops?.map((e) => e.toJson()).toList(),
    };

ItemDrop _$ItemDropFromJson(Map json) {
  return $checkedNew('ItemDrop', json, () {
    final val = ItemDrop(
      name: $checkedConvert(json, 'name', (v) => v as String),
      link: $checkedConvert(json, 'link', (v) => v as String),
    );
    return val;
  });
}

Map<String, dynamic> _$ItemDropToJson(ItemDrop instance) => <String, dynamic>{
      'name': instance.name,
      'link': instance.link,
    };
