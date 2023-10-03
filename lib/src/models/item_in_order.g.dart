// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_in_order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ItemInOrder _$ItemInOrderFromJson(Map<String, dynamic> json) => ItemInOrder(
      id: json['id'] as String,
      urlName: json['url_name'] as String,
      icon: json['icon'] as String,
      thumb: json['thumb'] as String,
      subIcon: json['sub_icon'] as String?,
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      cyanStars: json['cyan_stars'] as int?,
      amberStars: json['amber_stars'] as int?,
      ducats: json['ducats'] as int?,
      modMaxRank: json['mod_max_rank'] as int?,
      subtypes: (json['subtypes'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      en: LangShort.fromJson(json['en'] as Map<String, dynamic>),
      ru: LangShort.fromJson(json['ru'] as Map<String, dynamic>),
      ko: LangShort.fromJson(json['ko'] as Map<String, dynamic>),
      fr: LangShort.fromJson(json['fr'] as Map<String, dynamic>),
      de: LangShort.fromJson(json['de'] as Map<String, dynamic>),
      sv: LangShort.fromJson(json['sv'] as Map<String, dynamic>),
      zhHant: LangShort.fromJson(json['zh_hant'] as Map<String, dynamic>),
      zhHans: LangShort.fromJson(json['zh_hans'] as Map<String, dynamic>),
      pt: LangShort.fromJson(json['pt'] as Map<String, dynamic>),
      es: LangShort.fromJson(json['es'] as Map<String, dynamic>),
      pl: LangShort.fromJson(json['pl'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ItemInOrderToJson(ItemInOrder instance) =>
    <String, dynamic>{
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
      'en': instance.en,
      'ru': instance.ru,
      'ko': instance.ko,
      'fr': instance.fr,
      'de': instance.de,
      'sv': instance.sv,
      'zh_hant': instance.zhHant,
      'zh_hans': instance.zhHans,
      'pt': instance.pt,
      'es': instance.es,
      'pl': instance.pl,
    };

LangShort _$LangShortFromJson(Map<String, dynamic> json) => LangShort(
      itemName: json['item_name'] as String,
    );

Map<String, dynamic> _$LangShortToJson(LangShort instance) => <String, dynamic>{
      'item_name': instance.itemName,
    };
