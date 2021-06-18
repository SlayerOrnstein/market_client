import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'item.g.dart';

@JsonSerializable()
class MarketItem extends Equatable {
  const MarketItem({
    required this.thumb,
    required this.itemName,
    required this.id,
    required this.urlName,
  });

  factory MarketItem.fromJson(Map<String, dynamic> json) {
    return _$MarketItemFromJson(json);
  }

  final String thumb;

  @JsonKey(name: 'item_name')
  final String itemName;

  final String id;

  @JsonKey(name: 'url_name')
  final String urlName;

  Map<String, dynamic> toJson() => _$MarketItemToJson(this);

  @override
  List<Object?> get props => [thumb, itemName, id, urlName];
}
