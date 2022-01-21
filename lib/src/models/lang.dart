// ignore_for_file: comment_references

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'lang.g.dart';

/// {@template lang_short}
/// Short version of [LangInItem].
/// {@endtemplate}
@JsonSerializable()
class LangShort extends Equatable {
  /// {@macro lang_short}
  const LangShort({required this.itemName});

  /// {@macro lang_short}
  factory LangShort.fromJson(Map<String, dynamic> json) {
    return _$LangShortFromJson(json);
  }

  /// Item name translated.
  @JsonKey(name: 'item_name')
  final String itemName;

  /// Returns this as json.
  Map<String, dynamic> toJson() => _$LangShortToJson(this);

  @override
  List<Object?> get props => [itemName];
}

/// {@template lang_in_item}
/// Translated entry for [ItemInOrder] and [ItemFull]
///
/// Note: [description] will be an empty String in [ItemFull]
/// {@endtemplate}
@JsonSerializable()
class LangInItem extends LangShort {
  /// {@macro lang_in_item}
  const LangInItem({
    required String itemName,
    required this.description,
    this.wikiLink,
    required this.drops,
  }) : super(itemName: itemName);

  /// {@macro lang_in_item}
  factory LangInItem.fromJson(Map<String, dynamic> json) {
    return _$LangInItemFromJson(json);
  }

  /// Item description translated.
  final String description;

  /// Wikia link for item.
  @JsonKey(name: 'wiki_link')
  final String? wikiLink;

  /// List of translated drops
  @JsonKey(name: 'drop')
  final List<LangDrop> drops;

  /// Returns this as json.
  @override
  Map<String, dynamic> toJson() => _$LangInItemToJson(this);

  @override
  List<Object?> get props {
    return super.props..addAll([description, wikiLink, drops]);
  }
}

/// {@template lang_drop}
/// Translated drop information.
/// {@endtemplate}
@JsonSerializable()
class LangDrop extends Equatable {
  /// {@macro lang_drop}
  const LangDrop({required this.name, this.link});

  /// {@macro lang_drop}
  factory LangDrop.fromJson(Map<String, dynamic> json) {
    return _$LangDropFromJson(json);
  }

  /// Translated name of the location \ item
  final String name;

  /// Link to the internal or extarnal source with information about that
  /// location.
  final String? link;

  /// Returns this as json.
  Map<String, dynamic> toJson() => _$LangDropToJson(this);

  @override
  List<Object?> get props => [name, link];
}
