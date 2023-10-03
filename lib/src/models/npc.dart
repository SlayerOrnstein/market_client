import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';


part 'npc.g.dart';

/// {@template npc}
/// Npc description
/// {@endtemplate}
@JsonSerializable()
class Npc extends Equatable {
  /// {@macro npc}
  const Npc({ 
  required this.id,
  required this.urlName,
  required this.icon,
  required this.thumb,
  required this.name,
  });

    /// Creates a Npc from Json map
  factory Npc.fromJson(Map<String, dynamic> data) => _$NpcFromJson(data);

  /// A description for id
  final String id;

  /// A description for urlName
  final String urlName;

  /// A description for icon
  final String icon;

  /// A description for thumb
  final String thumb;

  /// A description for name
  final String name;

    /// Creates a copy of the current Npc with property changes
  Npc copyWith({ 
    String? id,
    String? urlName,
    String? icon,
    String? thumb,
    String? name,
  }) {
    return Npc(
      id: id ?? this.id,
      urlName: urlName ?? this.urlName,
      icon: icon ?? this.icon,
      thumb: thumb ?? this.thumb,
      name: name ?? this.name,
    );
  }


    @override
  List<Object?> get props => [
        id,
        urlName,
        icon,
        thumb,
        name,
      ];

    /// Creates a Json map from a Npc
  Map<String, dynamic> toJson() => _$NpcToJson(this);

}
