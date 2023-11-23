import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'item_short.g.dart';

/// {@template item_short}
/// A short data model of the item
/// {@endtemplate}
@JsonSerializable(includeIfNull: false)
class ItemShort extends Equatable {
  /// {@macro item_short}
  const ItemShort({
    required this.id,
    required this.urlName,
    required this.thumb,
    required this.itemName,
    this.vaulted,
  });

  /// Creates a ItemShort from Json map
  factory ItemShort.fromJson(Map<String, dynamic> data) =>
      _$ItemShortFromJson(data);

  /// Item ID.
  final String id;

  /// Item's url name
  ///
  /// Name is snake case.
  @JsonKey(name: 'url_name')
  final String urlName;

  /// Item thumbnail
  final String thumb;

  /// Item name.
  @JsonKey(name: 'item_name')
  final String itemName;

  final bool? vaulted;

  /// Creates a copy of the current ItemShort with property changes
  ItemShort copyWith({
    String? id,
    String? urlName,
    String? thumb,
    String? itemName,
    bool? vaulted,
  }) {
    return ItemShort(
      id: id ?? this.id,
      urlName: urlName ?? this.urlName,
      thumb: thumb ?? this.thumb,
      itemName: itemName ?? this.itemName,
      vaulted: vaulted ?? this.vaulted,
    );
  }

  @override
  List<Object?> get props => [id, urlName, thumb, itemName, vaulted];

  /// Creates a Json map from a ItemShort
  Map<String, dynamic> toJson() => _$ItemShortToJson(this);
}
