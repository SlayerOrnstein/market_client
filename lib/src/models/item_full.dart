import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:market_client/market_client.dart';

part 'item_full.g.dart';

/// {@template item_full}
/// ItemFull description
/// {@endtemplate}
@JsonSerializable()
class ItemFull extends Equatable {
  /// {@macro item_full}
  const ItemFull({
    required this.id,
    required this.urlName,
    required this.icon,
    required this.iconFormat,
    required this.thumb,
    required this.subIcon,
    required this.modMaxRank,
    required this.subtypes,
    required this.tags,
    required this.ducats,
    required this.quantityForSet,
    required this.setRoot,
    required this.masteryLevel,
    required this.rarity,
    required this.tradingTax,
    required this.en,
    required this.ru,
    required this.ko,
    required this.fr,
    required this.de,
    required this.sv,
    required this.zhHant,
    required this.zhHans,
    required this.pt,
    required this.es,
    required this.pl,
  });

  /// Creates a ItemFull from Json map
  factory ItemFull.fromJson(Map<String, dynamic> data) =>
      _$ItemFullFromJson(data);

  /// A description for id
  final String id;

  /// A description for urlName
  @JsonKey(name: 'url_name')
  final String urlName;

  /// A description for icon
  final String icon;

  /// A description for iconFormat
  @JsonKey(name: 'icon_format')
  final String iconFormat;

  /// A description for thumb
  final String thumb;

  /// A description for subIcon
  @JsonKey(name: 'sub_icon')
  final String? subIcon;

  /// A description for modMaxRank
  @JsonKey(name: 'mod_max_rank')
  final int? modMaxRank;

  /// A description for subtypes
  final List<String>? subtypes;

  /// A description for tags
  final List<String> tags;

  /// A description for ducats
  final int? ducats;

  /// A description for quantityForSet
  @JsonKey(name: 'quantity_for_set')
  final int? quantityForSet;

  /// A description for setRoot
  @JsonKey(name: 'set_root')
  final bool? setRoot;

  /// A description for masteryLevel
  @JsonKey(name: 'mastery_level')
  final int? masteryLevel;

  /// A description for rarity
  final Rarity? rarity;

  /// A description for tradingTax
  @JsonKey(name: 'trading_tax')
  final int tradingTax;

  /// A description for en
  final LangInItem en;

  /// A description for ru
  final LangInItem ru;

  /// A description for ko
  final LangInItem ko;

  /// A description for fr
  final LangInItem fr;

  /// A description for de
  final LangInItem de;

  /// A description for sv
  final LangInItem sv;

  /// A description for zhHant
  @JsonKey(name: 'zh-hant')
  final LangInItem zhHant;

  /// A description for zhHans
  @JsonKey(name: 'zh-hans')
  final LangInItem zhHans;

  /// A description for pt
  final LangInItem pt;

  /// A description for es
  final LangInItem es;

  /// A description for pl
  final LangInItem pl;

  /// Creates a copy of the current ItemFull with property changes
  ItemFull copyWith({
    String? id,
    String? urlName,
    String? icon,
    String? iconFormat,
    String? thumb,
    String? subIcon,
    int? modMaxRank,
    List<String>? subtypes,
    List<String>? tags,
    int? ducats,
    int? quantityForSet,
    bool? setRoot,
    int? masteryLevel,
    Rarity? rarity,
    int? tradingTax,
    LangInItem? en,
    LangInItem? ru,
    LangInItem? ko,
    LangInItem? fr,
    LangInItem? de,
    LangInItem? sv,
    LangInItem? zhHant,
    LangInItem? zhHans,
    LangInItem? pt,
    LangInItem? es,
    LangInItem? pl,
  }) {
    return ItemFull(
      id: id ?? this.id,
      urlName: urlName ?? this.urlName,
      icon: icon ?? this.icon,
      iconFormat: iconFormat ?? this.iconFormat,
      thumb: thumb ?? this.thumb,
      subIcon: subIcon ?? this.subIcon,
      modMaxRank: modMaxRank ?? this.modMaxRank,
      subtypes: subtypes ?? this.subtypes,
      tags: tags ?? this.tags,
      ducats: ducats ?? this.ducats,
      quantityForSet: quantityForSet ?? this.quantityForSet,
      setRoot: setRoot ?? this.setRoot,
      masteryLevel: masteryLevel ?? this.masteryLevel,
      rarity: rarity ?? this.rarity,
      tradingTax: tradingTax ?? this.tradingTax,
      en: en ?? this.en,
      ru: ru ?? this.ru,
      ko: ko ?? this.ko,
      fr: fr ?? this.fr,
      de: de ?? this.de,
      sv: sv ?? this.sv,
      zhHant: zhHant ?? this.zhHant,
      zhHans: zhHans ?? this.zhHans,
      pt: pt ?? this.pt,
      es: es ?? this.es,
      pl: pl ?? this.pl,
    );
  }

  @override
  List<Object?> get props => [
        id,
        urlName,
        icon,
        iconFormat,
        thumb,
        subIcon,
        modMaxRank,
        subtypes,
        tags,
        ducats,
        quantityForSet,
        setRoot,
        masteryLevel,
        rarity,
        tradingTax,
        en,
        ru,
        ko,
        fr,
        de,
        sv,
        zhHant,
        zhHans,
        pt,
        es,
        pl,
      ];

  /// Creates a Json map from a ItemFull
  Map<String, dynamic> toJson() => _$ItemFullToJson(this);
}

@JsonSerializable()
class LangInItem extends Equatable {
  const LangInItem({
    required this.itemName,
    required this.description,
    required this.wikiLink,
    required this.drop,
  });

  factory LangInItem.fromJson(Map<String, dynamic> data) {
    return _$LangInItemFromJson(data);
  }

  @JsonKey(name: 'item_name')
  final String itemName;

  final String description;

  @JsonKey(name: 'wiki_link')
  final String? wikiLink;

  final List<LangDrop> drop;

  @override
  List<Object?> get props => [itemName, description, wikiLink, drop];

  Map<String, dynamic> toJson() => _$LangInItemToJson(this);
}

@JsonSerializable()
class LangDrop extends Equatable {
  const LangDrop({required this.name, required this.link});

  factory LangDrop.fromJson(Map<String, dynamic> data) {
    return _$LangDropFromJson(data);
  }

  final String name;

  final String? link;

  @override
  List<Object?> get props => [name, link];

  Map<String, dynamic> toJson() => _$LangDropToJson(this);
}
