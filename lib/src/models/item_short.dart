import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'item_short.g.dart';

/// {@template item_short}
/// ItemShort description
/// {@endtemplate}
@JsonSerializable()
class ItemShort extends Equatable {
  /// {@macro item_short}
  const ItemShort({
    required this.id,
    required this.urlName,
    required this.thumb,
    required this.itemName,
  });

  /// Creates a ItemShort from Json map
  factory ItemShort.fromJson(Map<String, dynamic> data) =>
      _$ItemShortFromJson(data);

  /// A description for id
  final String id;

  /// A description for urlName
  @JsonKey(name: 'url_name')
  final String urlName;

  /// A description for thumb
  final String thumb;

  /// A description for itemName
  @JsonKey(name: 'item_name')
  final String itemName;

  /// Creates a copy of the current ItemShort with property changes
  ItemShort copyWith({
    String? id,
    String? urlName,
    String? thumb,
    String? itemName,
  }) {
    return ItemShort(
      id: id ?? this.id,
      urlName: urlName ?? this.urlName,
      thumb: thumb ?? this.thumb,
      itemName: itemName ?? this.itemName,
    );
  }

  @override
  List<Object?> get props => [
        id,
        urlName,
        thumb,
        itemName,
      ];

  /// Creates a Json map from a ItemShort
  Map<String, dynamic> toJson() => _$ItemShortToJson(this);
}
