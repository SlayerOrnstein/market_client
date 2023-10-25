import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:market_client/market_client.dart';

part 'item_full.g.dart';

/// {@template item_full}
/// ItemFull description
/// {@endtemplate}
@JsonSerializable(includeIfNull: false)
class ItemFull extends ItemCommon {
  /// {@macro item_full}
  const ItemFull({
    required super.id,
    required super.urlName,
    required super.icon,
    required this.iconFormat,
    required super.thumb,
    required super.subIcon,
    required super.modMaxRank,
    required super.subtypes,
    required super.tags,
    required super.cyanStars,
    required super.amberStars,
    required super.ducats,
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
    required this.cs,
    required this.uk,
  });

  /// Creates a ItemFull from Json map
  factory ItemFull.fromJson(Map<String, dynamic> data) =>
      _$ItemFullFromJson(data);

  /// A description for iconFormat
  @JsonKey(name: 'icon_format')
  final String iconFormat;

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

  final LangInItem cs;

  final LangInItem uk;

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
    int? cyanStars,
    int? amberStars,
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
    LangInItem? cs,
    LangInItem? uk,
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
      cyanStars: cyanStars ?? this.cyanStars,
      amberStars: amberStars ?? this.amberStars,
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
      cs: cs ?? this.cs,
      uk: pl ?? this.uk,
    );
  }

  @override
  List<Object?> get props {
    return super.props
      ..addAll([
        iconFormat,
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
        cs,
        uk,
      ]);
  }

  /// Creates a Json map from a ItemFull
  Map<String, dynamic> toJson() => _$ItemFullToJson(this);
}

/// {@template lang_in_item}
/// Contains translated information on an item.
/// {@endtemplate}
@JsonSerializable()
class LangInItem extends Equatable {
  /// {@macro lang_in_item}
  const LangInItem({
    required this.itemName,
    required this.description,
    required this.wikiLink,
    required this.thumb,
    required this.icon,
    required this.drop,
  });

  /// Creates a LangInItem from json.
  factory LangInItem.fromJson(Map<String, dynamic> data) {
    return _$LangInItemFromJson(data);
  }

  /// Item name translated.
  @JsonKey(name: 'item_name')
  final String itemName;

  /// Item description translated.
  final String description;

  /// Item wikilink if available.
  @JsonKey(name: 'wiki_link')
  final String? wikiLink;

  final String? thumb;

  final String? icon;

  /// Translated drop sources for item.
  final List<LangDrop> drop;

  @override
  List<Object?> get props => [itemName, description, wikiLink, thumb, drop];

  /// Creates a json map from an LangInItem instance.
  Map<String, dynamic> toJson() => _$LangInItemToJson(this);
}

/// {@template lang_drop}
/// Translated data for an item drop source.
/// {@endtemplate}
@JsonSerializable()
class LangDrop extends Equatable {
  /// {@macro lang_drop}
  const LangDrop({required this.name, required this.link});

  /// Creates a LangDrop from a json map.
  factory LangDrop.fromJson(Map<String, dynamic> data) {
    return _$LangDropFromJson(data);
  }

  /// Translated name.
  final String name;

  /// Link if available.
  final String? link;

  @override
  List<Object?> get props => [name, link];

  /// Creates a json map from an instance of LangDrop.
  Map<String, dynamic> toJson() => _$LangDropToJson(this);
}
