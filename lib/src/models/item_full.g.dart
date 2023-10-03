// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_full.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ItemFull _$ItemFullFromJson(Map<String, dynamic> json) => ItemFull(
      id: json['id'] as String,
      urlName: json['url_name'] as String,
      icon: json['icon'] as String,
      iconFormat: json['icon_format'] as String,
      thumb: json['thumb'] as String,
      subIcon: json['sub_icon'] as String?,
      modMaxRank: json['mod_max_rank'] as int?,
      subtypes: (json['subtypes'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      cyanStars: json['cyan_stars'] as int?,
      amberStars: json['amber_stars'] as int?,
      ducats: json['ducats'] as int?,
      quantityForSet: json['quantity_for_set'] as int?,
      setRoot: json['set_root'] as bool?,
      masteryLevel: json['mastery_level'] as int?,
      rarity: $enumDecodeNullable(_$RarityEnumMap, json['rarity']),
      tradingTax: json['trading_tax'] as int,
      en: LangInItem.fromJson(json['en'] as Map<String, dynamic>),
      ru: LangInItem.fromJson(json['ru'] as Map<String, dynamic>),
      ko: LangInItem.fromJson(json['ko'] as Map<String, dynamic>),
      fr: LangInItem.fromJson(json['fr'] as Map<String, dynamic>),
      de: LangInItem.fromJson(json['de'] as Map<String, dynamic>),
      sv: LangInItem.fromJson(json['sv'] as Map<String, dynamic>),
      zhHant: LangInItem.fromJson(json['zh-hant'] as Map<String, dynamic>),
      zhHans: LangInItem.fromJson(json['zh-hans'] as Map<String, dynamic>),
      pt: LangInItem.fromJson(json['pt'] as Map<String, dynamic>),
      es: LangInItem.fromJson(json['es'] as Map<String, dynamic>),
      pl: LangInItem.fromJson(json['pl'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ItemFullToJson(ItemFull instance) => <String, dynamic>{
      'id': instance.id,
      'url_name': instance.urlName,
      'icon': instance.icon,
      'thumb': instance.thumb,
      'sub_icon': instance.subIcon,
      'mod_max_rank': instance.modMaxRank,
      'subtypes': instance.subtypes,
      'tags': instance.tags,
      'cyan_stars': instance.cyanStars,
      'amber_stars': instance.amberStars,
      'ducats': instance.ducats,
      'icon_format': instance.iconFormat,
      'quantity_for_set': instance.quantityForSet,
      'set_root': instance.setRoot,
      'mastery_level': instance.masteryLevel,
      'rarity': _$RarityEnumMap[instance.rarity],
      'trading_tax': instance.tradingTax,
      'en': instance.en,
      'ru': instance.ru,
      'ko': instance.ko,
      'fr': instance.fr,
      'de': instance.de,
      'sv': instance.sv,
      'zh-hant': instance.zhHant,
      'zh-hans': instance.zhHans,
      'pt': instance.pt,
      'es': instance.es,
      'pl': instance.pl,
    };

const _$RarityEnumMap = {
  Rarity.common: 'common',
  Rarity.uncommon: 'uncommon',
  Rarity.rare: 'rare',
  Rarity.legendary: 'legendary',
  Rarity.peculiar: 'peculiar',
};

LangInItem _$LangInItemFromJson(Map<String, dynamic> json) => LangInItem(
      itemName: json['item_name'] as String,
      description: json['description'] as String,
      wikiLink: json['wiki_link'] as String?,
      drop: (json['drop'] as List<dynamic>)
          .map((e) => LangDrop.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$LangInItemToJson(LangInItem instance) =>
    <String, dynamic>{
      'item_name': instance.itemName,
      'description': instance.description,
      'wiki_link': instance.wikiLink,
      'drop': instance.drop,
    };

LangDrop _$LangDropFromJson(Map<String, dynamic> json) => LangDrop(
      name: json['name'] as String,
      link: json['link'] as String?,
    );

Map<String, dynamic> _$LangDropToJson(LangDrop instance) => <String, dynamic>{
      'name': instance.name,
      'link': instance.link,
    };
