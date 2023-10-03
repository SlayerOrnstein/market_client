import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:market_client/market_client.dart';

part 'item_in_order.g.dart';

/// {@template item_in_order}
/// Item information for [OrderFull]
/// {@endtemplate}
@JsonSerializable()
class ItemInOrder extends ItemCommon {
  /// {@macro item_in_order}
  const ItemInOrder({
    required super.id,
    required super.urlName,
    required super.icon,
    required super.thumb,
    required super.subIcon,
    required super.tags,
    required super.cyanStars,
    required super.amberStars,
    required super.ducats,
    required super.modMaxRank,
    required super.subtypes,
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

  /// {@macro item_in_order}
  factory ItemInOrder.fromJson(Map<String, dynamic> json) {
    return _$ItemInOrderFromJson(json);
  }

  /// English item name translations.
  final LangShort en;

  /// Russian item name translations.
  final LangShort ru;

  /// Korean item name translations.
  final LangShort ko;

  /// French item name translations.
  final LangShort fr;

  /// German item name translations.
  final LangShort de;

  /// Swedish item name translations.
  final LangShort sv;

  /// Chinese (Traditional) item name translations.
  @JsonKey(name: 'zh_hant')
  final LangShort zhHant;

  /// Chinese (Simplified) item name translations.
  @JsonKey(name: 'zh_hans')
  final LangShort zhHans;

  /// Portuguese (Brazil) item name translations.
  final LangShort pt;

  /// Spanish item name translations.
  final LangShort es;

  /// Polish item name translations.
  final LangShort pl;

  /// Returns this as json.
  Map<String, dynamic> toJson() => _$ItemInOrderToJson(this);

  @override
  List<Object?> get props {
    return super.props
      ..addAll([
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
      ]);
  }
}

/// {@template lang_short}
/// Contains the translated name for the item.
/// {@endtemplate}
@JsonSerializable()
class LangShort extends Equatable {
  /// {@macro lang_short}
  const LangShort({required this.itemName});

  /// Creates a LangShort from a json map.
  factory LangShort.fromJson(Map<String, dynamic> data) {
    return _$LangShortFromJson(data);
  }

  /// Translated item name.
  @JsonKey(name: 'item_name')
  final String itemName;

  @override
  List<Object?> get props => [itemName];

  /// Creates a json map from a Langshort instance.
  Map<String, dynamic> toJson() => _$LangShortToJson(this);
}
