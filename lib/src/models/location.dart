import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:market_client/market_client.dart';

part 'location.g.dart';

/// {@template location}
/// Location description
/// {@endtemplate}
@JsonSerializable()
class Location extends Equatable {
  /// {@macro location}
  const Location({
    required this.id,
    required this.urlName,
    required this.icon,
    required this.thumb,
    required this.minLevel,
    required this.maxLevel,
    required this.faction,
    required this.nodeName,
    required this.systemName,
  });

  /// Creates a Location from Json map
  factory Location.fromJson(Map<String, dynamic> data) =>
      _$LocationFromJson(data);

  /// A description for id
  final String id;

  /// A description for urlName
  @JsonKey(name: 'url_name')
  final String urlName;

  /// A description for icon
  final String icon;

  /// A description for thumb
  final String thumb;

  /// A description for minLevel
  @JsonKey(name: 'min_level')
  final int minLevel;

  /// A description for maxLevel
  @JsonKey(name: 'max_level')
  final int maxLevel;

  /// A description for faction
  final Faction faction;

  /// A description for nodeName
  @JsonKey(name: 'node_name')
  final String nodeName;

  /// A description for systemName
  @JsonKey(name: 'system_name')
  final String systemName;

  /// Creates a copy of the current Location with property changes
  Location copyWith({
    String? id,
    String? urlName,
    String? icon,
    String? thumb,
    int? minLevel,
    int? maxLevel,
    Faction? faction,
    String? nodeName,
    String? systemName,
  }) {
    return Location(
      id: id ?? this.id,
      urlName: urlName ?? this.urlName,
      icon: icon ?? this.icon,
      thumb: thumb ?? this.thumb,
      minLevel: minLevel ?? this.minLevel,
      maxLevel: maxLevel ?? this.maxLevel,
      faction: faction ?? this.faction,
      nodeName: nodeName ?? this.nodeName,
      systemName: systemName ?? this.systemName,
    );
  }

  @override
  List<Object?> get props => [
        id,
        urlName,
        icon,
        thumb,
        minLevel,
        maxLevel,
        faction,
        nodeName,
        systemName,
      ];

  /// Creates a Json map from a Location
  Map<String, dynamic> toJson() => _$LocationToJson(this);
}
