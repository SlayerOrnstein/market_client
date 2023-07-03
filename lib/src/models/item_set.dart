import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:market_client/market_client.dart';

part 'item_set.g.dart';

/// {@template item_set}
/// ItemSet description
/// {@endtemplate}
@JsonSerializable()
class ItemSet extends Equatable {
  /// {@macro item_set}
  const ItemSet({
    required this.id,
    required this.itemsInSet,
  });

  /// Creates a ItemSet from Json map
  factory ItemSet.fromJson(Map<String, dynamic> data) =>
      _$ItemSetFromJson(data);

  /// A description for id
  final String id;

  /// A description for itemsInSet
  @JsonKey(name: 'items_in_set')
  final List<ItemFull> itemsInSet;

  /// Creates a copy of the current ItemSet with property changes
  ItemSet copyWith({
    String? id,
    List<ItemFull>? itemsInSet,
  }) {
    return ItemSet(
      id: id ?? this.id,
      itemsInSet: itemsInSet ?? this.itemsInSet,
    );
  }

  @override
  List<Object?> get props => [id, itemsInSet];

  /// Creates a Json map from a ItemSet
  Map<String, dynamic> toJson() => _$ItemSetToJson(this);
}
