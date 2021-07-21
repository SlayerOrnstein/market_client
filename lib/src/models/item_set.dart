import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'item_set.g.dart';

/// {@template item_set}
/// The complete set for an item.
/// {@endtemplate}
@JsonSerializable()
class ItemSet extends Equatable {
  /// {@macro item_set}
  const ItemSet({required this.id, required this.itemsInSet});

  /// Creates an [ItemSet] from a json value.
  factory ItemSet.fromJson(Map<String, dynamic> json) {
    return _$ItemSetFromJson(json);
  }

  /// Set ID.
  final String id;

  /// The items in this set.
  @JsonKey(name: 'items_in_set')
  final List<SetItem> itemsInSet;

  /// Returns a json value for instance.
  Map<String, dynamic> toJson() => _$ItemSetToJson(this);

  @override
  List<Object?> get props => [id, itemsInSet];
}

/// {@template set_item}
/// The item in a set.
/// {@endtemplate}
@JsonSerializable()
class SetItem extends Equatable {
  /// {@macro set_item}
  const SetItem({
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

  /// Creates instance from json.
  factory SetItem.fromJson(Map<String, dynamic> json) {
    return _$SetItemFromJson(json);
  }

  /// Item ID.
  final String id;

  /// Url name for the item
  @JsonKey(name: 'url_name')
  final String urlName;

  /// The item's trading tax.
  @JsonKey(name: 'trading_tax')
  final int tradingTax;

  /// The sub icon.
  @JsonKey(name: 'sub_icon')
  final String? subIcon;

  /// The main icon.
  final String icon;

  /// The icon's format.
  @JsonKey(name: 'icon_format')
  final String iconFormat;

  /// Required mastery level to craft item.
  @JsonKey(name: 'mastery_level')
  final int? masteryLevel;

  /// The item's tags.
  final List<String> tags;

  /// Thumbnail.
  final String thumb;

  /// The amount of ducats this item sells for.
  final int? ducats;

  /// If the item is the root of the set.
  ///
  /// i.e. the main blueprint for an item.
  @JsonKey(name: 'set_root')
  final bool? setRoot;

  /// Item name in English.
  final ItemLanguage en;

  /// Item name in Russion.
  final ItemLanguage ru;

  /// Item name in Korean.
  final ItemLanguage ko;

  /// Item name in French.
  final ItemLanguage fr;

  /// Item name in English.
  final ItemLanguage sv;

  /// Item name in German.
  final ItemLanguage de;

  /// Item name in Traditional Chinese(?).
  @JsonKey(name: 'zh-hant')
  final ItemLanguage zhhant;

  /// Item name in Simplified Chinese.
  @JsonKey(name: 'zh-hans')
  final ItemLanguage zhhans;

  /// Item name in Portuguese.
  final ItemLanguage pt;

  /// Item name in Spanish.
  final ItemLanguage es;

  /// Item name in Polish.
  final ItemLanguage pl;

  Map<String, dynamic> toJson() => _$SetItemToJson(this);

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
class ItemLanguage extends Equatable {
  const ItemLanguage({
    required this.itemName,
    required this.description,
    required this.wikiLink,
    this.drops,
  });

  factory ItemLanguage.fromJson(Map<String, dynamic> json) {
    return _$ItemLanguageFromJson(json);
  }

  @JsonKey(name: 'item_name')
  final String itemName;

  final String description;

  @JsonKey(name: 'wiki_link')
  final String wikiLink;

  @JsonKey(name: 'drop')
  final List<ItemDrop>? drops;

  Map<String, dynamic> toJson() => _$ItemLanguageToJson(this);

  @override
  List<Object?> get props => [itemName, description, wikiLink, drops];
}

@JsonSerializable()
class ItemDrop extends Equatable {
  const ItemDrop({required this.name, required this.link});

  factory ItemDrop.fromJson(Map<String, dynamic> json) {
    return _$ItemDropFromJson(json);
  }

  final String name, link;

  Map<String, dynamic> toJson() => _$ItemDropToJson(this);

  @override
  List<Object?> get props => [name, link];
}
