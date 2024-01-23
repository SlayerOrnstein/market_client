import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:market_client/market_client.dart';

part 'user_short.g.dart';

/// {@template user_short}
/// UserShort description
/// {@endtemplate}
@JsonSerializable(includeIfNull: true)
class UserShort extends Equatable {
  /// {@macro user_short}
  const UserShort({
    required this.id,
    required this.ingameName,
    required this.status,
    required this.region,
    required this.locale,
    required this.reputation,
    this.avatar,
    this.lastSeen,
  });

  /// Creates a UserShort from Json map
  factory UserShort.fromJson(Map<String, dynamic> data) =>
      _$UserShortFromJson(data);

  /// A description for id
  final String id;

  /// A description for ingameName
  @JsonKey(name: 'ingame_name')
  final String ingameName;

  /// A description for status
  final UserStatus status;

  /// A description for region
  final String region;

  /// User's locale.
  final String locale;

  /// A description for reputation
  final int reputation;

  /// A description for avatar
  final String? avatar;

  /// A description for lastSeen
  @JsonKey(name: 'last_seen')
  final DateTime? lastSeen;

  /// Creates a copy of the current UserShort with property changes
  UserShort copyWith({
    String? id,
    String? ingameName,
    UserStatus? status,
    String? region,
    String? locale,
    int? reputation,
    String? Function()? avatar,
    DateTime? Function()? lastSeen,
  }) {
    return UserShort(
      id: id ?? this.id,
      ingameName: ingameName ?? this.ingameName,
      status: status ?? this.status,
      region: region ?? this.region,
      locale: locale ?? this.locale,
      reputation: reputation ?? this.reputation,
      avatar: avatar != null ? avatar() : this.avatar,
      lastSeen: lastSeen != null ? lastSeen() : this.lastSeen,
    );
  }

  @override
  List<Object?> get props => [
        id,
        ingameName,
        status,
        region,
        locale,
        reputation,
        avatar,
        lastSeen,
      ];

  /// Creates a Json map from a UserShort
  Map<String, dynamic> toJson() => _$UserShortToJson(this);
}
