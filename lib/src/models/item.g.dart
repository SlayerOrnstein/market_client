// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ItemCommon _$ItemCommonFromJson(Map json) => $checkedCreate(
      'ItemCommon',
      json,
      ($checkedConvert) {
        final val = ItemCommon(
          id: $checkedConvert('id', (v) => v as String),
          urlName: $checkedConvert('url_name', (v) => v as String),
          icon: $checkedConvert('icon', (v) => v as String),
          thumb: $checkedConvert('thumb', (v) => v as String),
          subIcon: $checkedConvert('sub_icon', (v) => v as String?),
          maxRank: $checkedConvert('mod_max_rank', (v) => v as int?),
          subTypes: $checkedConvert('subTypes',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          tags: $checkedConvert('tags',
              (v) => (v as List<dynamic>).map((e) => e as String).toList()),
          cyanStars: $checkedConvert('cyan_stars', (v) => v as int?),
          amberStars: $checkedConvert('amber_stars', (v) => v as int?),
          ducats: $checkedConvert('ducats', (v) => v as int?),
        );
        return val;
      },
      fieldKeyMap: const {
        'urlName': 'url_name',
        'subIcon': 'sub_icon',
        'maxRank': 'mod_max_rank',
        'cyanStars': 'cyan_stars',
        'amberStars': 'amber_stars'
      },
    );

Map<String, dynamic> _$ItemCommonToJson(ItemCommon instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'url_name': instance.urlName,
    'icon': instance.icon,
    'thumb': instance.thumb,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('sub_icon', instance.subIcon);
  writeNotNull('mod_max_rank', instance.maxRank);
  writeNotNull('subTypes', instance.subTypes);
  val['tags'] = instance.tags;
  writeNotNull('cyan_stars', instance.cyanStars);
  writeNotNull('amber_stars', instance.amberStars);
  writeNotNull('ducats', instance.ducats);
  return val;
}

ItemInOrder _$ItemInOrderFromJson(Map json) => $checkedCreate(
      'ItemInOrder',
      json,
      ($checkedConvert) {
        final val = ItemInOrder(
          id: $checkedConvert('id', (v) => v as String),
          urlName: $checkedConvert('url_name', (v) => v as String),
          icon: $checkedConvert('icon', (v) => v as String),
          thumb: $checkedConvert('thumb', (v) => v as String),
          subIcon: $checkedConvert('sub_icon', (v) => v as String?),
          maxRank: $checkedConvert('mod_max_rank', (v) => v as int?),
          subTypes: $checkedConvert('subTypes',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          tags: $checkedConvert('tags',
              (v) => (v as List<dynamic>).map((e) => e as String).toList()),
          cyanStars: $checkedConvert('cyan_stars', (v) => v as int?),
          amberStars: $checkedConvert('amber_stars', (v) => v as int?),
          ducats: $checkedConvert('ducats', (v) => v as int?),
          en: $checkedConvert('en',
              (v) => LangShort.fromJson(Map<String, dynamic>.from(v as Map))),
          ru: $checkedConvert('ru',
              (v) => LangShort.fromJson(Map<String, dynamic>.from(v as Map))),
          ko: $checkedConvert('ko',
              (v) => LangShort.fromJson(Map<String, dynamic>.from(v as Map))),
          fr: $checkedConvert('fr',
              (v) => LangShort.fromJson(Map<String, dynamic>.from(v as Map))),
          de: $checkedConvert('de',
              (v) => LangShort.fromJson(Map<String, dynamic>.from(v as Map))),
          sv: $checkedConvert('sv',
              (v) => LangShort.fromJson(Map<String, dynamic>.from(v as Map))),
          zhHant: $checkedConvert('zh_hant',
              (v) => LangShort.fromJson(Map<String, dynamic>.from(v as Map))),
          zhHans: $checkedConvert('zh_hans',
              (v) => LangShort.fromJson(Map<String, dynamic>.from(v as Map))),
          pt: $checkedConvert('pt',
              (v) => LangShort.fromJson(Map<String, dynamic>.from(v as Map))),
          es: $checkedConvert('es',
              (v) => LangShort.fromJson(Map<String, dynamic>.from(v as Map))),
          pl: $checkedConvert('pl',
              (v) => LangShort.fromJson(Map<String, dynamic>.from(v as Map))),
        );
        return val;
      },
      fieldKeyMap: const {
        'urlName': 'url_name',
        'subIcon': 'sub_icon',
        'maxRank': 'mod_max_rank',
        'cyanStars': 'cyan_stars',
        'amberStars': 'amber_stars',
        'zhHant': 'zh_hant',
        'zhHans': 'zh_hans'
      },
    );

Map<String, dynamic> _$ItemInOrderToJson(ItemInOrder instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'url_name': instance.urlName,
    'icon': instance.icon,
    'thumb': instance.thumb,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('sub_icon', instance.subIcon);
  writeNotNull('mod_max_rank', instance.maxRank);
  writeNotNull('subTypes', instance.subTypes);
  val['tags'] = instance.tags;
  writeNotNull('cyan_stars', instance.cyanStars);
  writeNotNull('amber_stars', instance.amberStars);
  writeNotNull('ducats', instance.ducats);
  val['en'] = instance.en.toJson();
  val['ru'] = instance.ru.toJson();
  val['ko'] = instance.ko.toJson();
  val['fr'] = instance.fr.toJson();
  val['de'] = instance.de.toJson();
  val['sv'] = instance.sv.toJson();
  val['zh_hant'] = instance.zhHant.toJson();
  val['zh_hans'] = instance.zhHans.toJson();
  val['pt'] = instance.pt.toJson();
  val['es'] = instance.es.toJson();
  val['pl'] = instance.pl.toJson();
  return val;
}

ItemShort _$ItemShortFromJson(Map json) => $checkedCreate(
      'ItemShort',
      json,
      ($checkedConvert) {
        final val = ItemShort(
          id: $checkedConvert('id', (v) => v as String),
          urlName: $checkedConvert('url_name', (v) => v as String),
          thumb: $checkedConvert('thumb', (v) => v as String),
          itemName: $checkedConvert('item_name', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {'urlName': 'url_name', 'itemName': 'item_name'},
    );

Map<String, dynamic> _$ItemShortToJson(ItemShort instance) => <String, dynamic>{
      'id': instance.id,
      'url_name': instance.urlName,
      'thumb': instance.thumb,
      'item_name': instance.itemName,
    };

ItemFull _$ItemFullFromJson(Map json) => $checkedCreate(
      'ItemFull',
      json,
      ($checkedConvert) {
        final val = ItemFull(
          id: $checkedConvert('id', (v) => v as String),
          urlName: $checkedConvert('url_name', (v) => v as String),
          icon: $checkedConvert('icon', (v) => v as String),
          thumb: $checkedConvert('thumb', (v) => v as String),
          subIcon: $checkedConvert('sub_icon', (v) => v as String?),
          maxRank: $checkedConvert('mod_max_rank', (v) => v as int?),
          subTypes: $checkedConvert('subTypes',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          tags: $checkedConvert('tags',
              (v) => (v as List<dynamic>).map((e) => e as String).toList()),
          cyanStars: $checkedConvert('cyan_stars', (v) => v as int?),
          amberStars: $checkedConvert('amber_stars', (v) => v as int?),
          ducats: $checkedConvert('ducats', (v) => v as int?),
          setRoot: $checkedConvert('set_root', (v) => v as bool),
          masteryRank: $checkedConvert('mastery_rank', (v) => v as int?),
          rarity: $checkedConvert(
              'rarity', (v) => $enumDecodeNullable(_$RarityEnumMap, v)),
          tradingTax: $checkedConvert('trading_tax', (v) => v as int),
          en: $checkedConvert('en',
              (v) => LangInItem.fromJson(Map<String, dynamic>.from(v as Map))),
          ru: $checkedConvert('ru',
              (v) => LangInItem.fromJson(Map<String, dynamic>.from(v as Map))),
          ko: $checkedConvert('ko',
              (v) => LangInItem.fromJson(Map<String, dynamic>.from(v as Map))),
          fr: $checkedConvert('fr',
              (v) => LangInItem.fromJson(Map<String, dynamic>.from(v as Map))),
          de: $checkedConvert('de',
              (v) => LangInItem.fromJson(Map<String, dynamic>.from(v as Map))),
          sv: $checkedConvert('sv',
              (v) => LangInItem.fromJson(Map<String, dynamic>.from(v as Map))),
          zhHant: $checkedConvert('zh-hant',
              (v) => LangInItem.fromJson(Map<String, dynamic>.from(v as Map))),
          zhHans: $checkedConvert('zh-hans',
              (v) => LangInItem.fromJson(Map<String, dynamic>.from(v as Map))),
          pt: $checkedConvert('pt',
              (v) => LangInItem.fromJson(Map<String, dynamic>.from(v as Map))),
          es: $checkedConvert('es',
              (v) => LangInItem.fromJson(Map<String, dynamic>.from(v as Map))),
          pl: $checkedConvert('pl',
              (v) => LangInItem.fromJson(Map<String, dynamic>.from(v as Map))),
        );
        return val;
      },
      fieldKeyMap: const {
        'urlName': 'url_name',
        'subIcon': 'sub_icon',
        'maxRank': 'mod_max_rank',
        'cyanStars': 'cyan_stars',
        'amberStars': 'amber_stars',
        'setRoot': 'set_root',
        'masteryRank': 'mastery_rank',
        'tradingTax': 'trading_tax',
        'zhHant': 'zh-hant',
        'zhHans': 'zh-hans'
      },
    );

Map<String, dynamic> _$ItemFullToJson(ItemFull instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'url_name': instance.urlName,
    'icon': instance.icon,
    'thumb': instance.thumb,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('sub_icon', instance.subIcon);
  writeNotNull('mod_max_rank', instance.maxRank);
  writeNotNull('subTypes', instance.subTypes);
  val['tags'] = instance.tags;
  writeNotNull('cyan_stars', instance.cyanStars);
  writeNotNull('amber_stars', instance.amberStars);
  writeNotNull('ducats', instance.ducats);
  val['set_root'] = instance.setRoot;
  writeNotNull('mastery_rank', instance.masteryRank);
  writeNotNull('rarity', _$RarityEnumMap[instance.rarity]);
  val['trading_tax'] = instance.tradingTax;
  val['en'] = instance.en.toJson();
  val['ru'] = instance.ru.toJson();
  val['ko'] = instance.ko.toJson();
  val['fr'] = instance.fr.toJson();
  val['de'] = instance.de.toJson();
  val['sv'] = instance.sv.toJson();
  val['zh-hant'] = instance.zhHant.toJson();
  val['zh-hans'] = instance.zhHans.toJson();
  val['pt'] = instance.pt.toJson();
  val['es'] = instance.es.toJson();
  val['pl'] = instance.pl.toJson();
  return val;
}

const _$RarityEnumMap = {
  Rarity.common: 'common',
  Rarity.uncommon: 'uncommon',
  Rarity.rare: 'rare',
  Rarity.legendary: 'legendary',
  Rarity.peculiar: 'peculiar',
};

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
                      ItemFull.fromJson(Map<String, dynamic>.from(e as Map)))
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
