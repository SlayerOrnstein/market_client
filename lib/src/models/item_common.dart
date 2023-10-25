import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:market_client/market_client.dart';

/// {@template item_common}
/// Common fields for [ItemInOrder] and [ItemFull]
/// {@endtemplate item_common}
class ItemCommon extends Equatable {
  /// {@macro item_common}
  const ItemCommon({
    required this.id,
    required this.urlName,
    required this.icon,
    required this.thumb,
    required this.subIcon,
    required this.modMaxRank,
    required this.subtypes,
    required this.tags,
    required this.cyanStars,
    required this.amberStars,
    required this.ducats,
  });

  /// Item id.
  final String id;

  /// Item url in snake case.
  @JsonKey(name: 'url_name')
  final String urlName;

  /// Path to the item icon.
  ///
  /// This is only part of the url. The root path is ommited out.
  /// Example: `icons/en/axi_a1_relic.a74c06f0cae21bdb8933685c867385f8.png`
  final String icon;

  /// Thumbnail for item.
  ///
  /// See [icon].
  final String thumb;

  /// Sub icon for item.
  ///
  /// Usually, if item is part of set and not set itself, it will have sub_icon
  /// like: Mirage Blueprint is part of Mirage Set, therefore the icon will be
  /// the Mirage warframe icon, and the sub_icon will be the blueprint icon
  @JsonKey(name: 'sub_icon', includeIfNull: true)
  final String? subIcon;

  /// Max Rank for Mod item.
  @JsonKey(name: 'mod_max_rank')
  final int? modMaxRank;

  /// Subtypes for relics or fish items.
  final List<String>? subtypes;

  /// Item tags.
  final List<String> tags;

  /// Amount of installed cyan stars.
  @JsonKey(name: 'cyan_stars')
  final int? cyanStars;

  /// Amount of installed amber stars.
  @JsonKey(name: 'amber_stars')
  final int? amberStars;

  /// Ducats that the item can be traded for in-game.
  final int? ducats;

  @override
  List<Object?> get props {
    return [
      id,
      urlName,
      icon,
      thumb,
      subIcon,
      modMaxRank,
      subtypes,
      tags,
      cyanStars,
      amberStars,
      ducats,
    ];
  }
}
