import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'online_count.g.dart';

/// {@template online_count}
/// Represents the total number of online users and registered users.
/// {@endtemplate}
@JsonSerializable()
class OnlineCount extends Equatable {
  /// {@macro online_count}
  const OnlineCount({required this.totalUsers, required this.registeredUsers});

  /// Creates an instance of [OnlineCount] from a json object.
  factory OnlineCount.fromJson(Map<String, dynamic> json) {
    return _$OnlineCountFromJson(json);
  }

  /// Total users online.
  @JsonKey(name: 'total_users')
  final int totalUsers;

  /// Total registered users.
  @JsonKey(name: 'registered_users')
  final int registeredUsers;

  /// Creates a json object from an instance of [OnlineCount].
  Map<String, dynamic> toJson() => _$OnlineCountToJson(this);

  @override
  List<Object?> get props => [totalUsers, registeredUsers];
}
