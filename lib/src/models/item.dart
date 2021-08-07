import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'item.g.dart';

/// {@template market_item}
/// Market's item model.
/// {@endtemplate}
@JsonSerializable()
class MarketItem extends Equatable {
  /// {@macro market_item}
  const MarketItem({
    required this.thumb,
    required this.itemName,
    required this.id,
    required this.urlName,
  });

  /// Get an instance of [MarketItem] from json object
  factory MarketItem.fromJson(Map<String, dynamic> json) {
    return _$MarketItemFromJson(json);
  }

  /// Item thumbnail.
  final String thumb;

  /// Items name.
  @JsonKey(name: 'item_name')
  final String itemName;

  /// Item id.
  final String id;

  /// Url name for this item.
  @JsonKey(name: 'url_name')
  final String urlName;

  /// Return [MarketItem] as a json object.
  Map<String, dynamic> toJson() => _$MarketItemToJson(this);

  @override
  List<Object?> get props => [thumb, itemName, id, urlName];
}
