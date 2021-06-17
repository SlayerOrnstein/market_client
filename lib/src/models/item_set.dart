import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'item_set.g.dart';

@JsonSerializable()
class MarketItemSet extends Equatable {
  const MarketItemSet({required this.id, required this.itemsInSet});

  factory MarketItemSet.fromJson(Map<String, dynamic> json) {
    return _$MarketItemSetFromJson(json);
  }

  final String id;

  @JsonKey(name: 'items_in_set')
  final List<MarketSetItem> itemsInSet;

  Map<String, dynamic> toJson() => _$MarketItemSetToJson(this);

  @override
  List<Object?> get props => [id, itemsInSet];
}

@JsonSerializable()
class MarketSetItem extends Equatable {
  const MarketSetItem({
    required this.id,
    required this.urlName,
    required this.tradingTax,
    this.subIcon,
    required this.icon,
    required this.iconFormat,
    this.masteryLevel,
    required this.tags,
    required this.thumb,
    this.ducats,
    this.setRoot,
    required this.en,
    required this.ru,
    required this.ko,
    required this.fr,
    required this.sv,
    required this.de,
    required this.zhhant,
    required this.zhhans,
    required this.pt,
    required this.es,
    required this.pl,
  });

  factory MarketSetItem.fromJson(Map<String, dynamic> json) {
    return _$MarketSetItemFromJson(json);
  }

  final String id;

  @JsonKey(name: 'url_name')
  final String urlName;

  @JsonKey(name: 'trading_tax')
  final int tradingTax;

  @JsonKey(name: 'sub_icon')
  final String? subIcon;

  final String icon;

  @JsonKey(name: 'icon_format')
  final String iconFormat;

  final int? masteryLevel;

  final List<String> tags;

  final String thumb;

  final int? ducats;

  final bool? setRoot;

  final MarketSetItemLanguage en;

  final MarketSetItemLanguage ru;

  final MarketSetItemLanguage ko;

  final MarketSetItemLanguage fr;

  final MarketSetItemLanguage sv;

  final MarketSetItemLanguage de;

  @JsonKey(name: 'zh-hant')
  final MarketSetItemLanguage zhhant;

  @JsonKey(name: 'zh-hans')
  final MarketSetItemLanguage zhhans;

  final MarketSetItemLanguage pt;

  final MarketSetItemLanguage es;

  final MarketSetItemLanguage pl;

  Map<String, dynamic> toJson() => _$MarketSetItemToJson(this);

  @override
  List<Object?> get props {
    return [
      id,
      urlName,
      tradingTax,
      subIcon,
      icon,
      iconFormat,
      masteryLevel,
      tags,
      thumb,
      ducats,
      setRoot,
      en,
      ru,
      ko,
      fr,
      sv,
      de,
      zhhant,
      zhhans,
      pt,
      es,
      pl,
    ];
  }
}

@JsonSerializable()
class MarketSetItemLanguage extends Equatable {
  const MarketSetItemLanguage({
    required this.itemName,
    required this.description,
    required this.wikiLink,
    this.drops,
  });

  factory MarketSetItemLanguage.fromJson(Map<String, dynamic> json) {
    return _$MarketSetItemLanguageFromJson(json);
  }

  @JsonKey(name: 'item_name')
  final String itemName;

  final String description;

  @JsonKey(name: 'wiki_link')
  final String wikiLink;

  final List<MarketSetItemDrop>? drops;

  Map<String, dynamic> toJson() => _$MarketSetItemLanguageToJson(this);

  @override
  List<Object?> get props => [itemName, description, wikiLink, drops];
}

@JsonSerializable()
class MarketSetItemDrop extends Equatable {
  const MarketSetItemDrop({required this.name, required this.link});

  factory MarketSetItemDrop.fromJson(Map<String, dynamic> json) {
    return _$MarketSetItemDropFromJson(json);
  }

  final String name, link;

  Map<String, dynamic> toJson() => _$MarketSetItemDropToJson(this);

  @override
  List<Object?> get props => [name, link];
}
