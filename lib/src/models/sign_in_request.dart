import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:market_client/market_client.dart';

part 'sign_in_request.g.dart';

/// {@template sign_in_request}
/// SignInRequest description
/// {@endtemplate}
@JsonSerializable()
class SignInRequest extends Equatable {
  /// {@macro sign_in_request}
  const SignInRequest({
    required this.authType,
    required this.email,
    required this.password,
    required this.deviceId,
  });

  /// Creates a SignInRequest from Json map
  factory SignInRequest.fromJson(Map<String, dynamic> data) =>
      _$SignInRequestFromJson(data);

  /// Authorization type
  @JsonKey(name: 'auth_type')
  final AuthType authType;

  /// User email.
  final String email;

  /// User password
  final String password;

  /// Device ID.
  @JsonKey(name: 'device_id')
  final String deviceId;

  /// Creates a copy of the current SignInRequest with property changes
  SignInRequest copyWith({
    AuthType? authType,
    String? email,
    String? password,
    String? deviceId,
  }) {
    return SignInRequest(
      authType: authType ?? this.authType,
      email: email ?? this.email,
      password: password ?? this.password,
      deviceId: deviceId ?? this.deviceId,
    );
  }

  @override
  List<Object?> get props => [
        authType,
        email,
        password,
        deviceId,
      ];

  /// Creates a Json map from a SignInRequest
  Map<String, dynamic> toJson() => _$SignInRequestToJson(this);
}
