import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:market_client/market_client.dart';

part 'registration_request.g.dart';

/// {@template registration_request}
/// This is the required information needed to register a new user.
/// {@endtemplate}
@JsonSerializable()
class RegistrationRequest extends Equatable {
  /// {@macro registration_request}
  const RegistrationRequest({
    required this.authType,
    required this.email,
    required this.password,
    required this.passwordSecond,
    required this.region,
    this.deviceId,
    this.recaptcha,
  }) : assert(
          deviceId == null || recaptcha == null,
          'Google reCaptcha, required if you are not '
          'using special device auth.',
        );

  /// Creates a RegistrationRequest from Json map
  factory RegistrationRequest.fromJson(Map<String, dynamic> data) =>
      _$RegistrationRequestFromJson(data);

  /// Authorization type
  @JsonKey(name: 'auth_type')
  final AuthType authType;

  /// User email.
  final String email;

  /// User created password.
  final String password;

  /// Confirm user created password.
  @JsonKey(name: 'password_second')
  final String passwordSecond;

  /// User region.
  final String region;

  /// User's device ID
  @JsonKey(name: 'device_id')
  final String? deviceId;

  /// There is 2 types of registration, for web browser and for Android device.
  /// Android device could avoid to include reCaptha toke by using secret
  /// device key in the request headers.
  final String? recaptcha;

  /// Creates a copy of the current RegistrationRequest with property changes
  RegistrationRequest copyWith({
    AuthType? authType,
    String? email,
    String? password,
    String? passwordSecond,
    String? region,
    String? deviceId,
    String? recaptcha,
  }) {
    return RegistrationRequest(
      authType: authType ?? this.authType,
      email: email ?? this.email,
      password: password ?? this.password,
      passwordSecond: passwordSecond ?? this.passwordSecond,
      region: region ?? this.region,
      deviceId: deviceId ?? this.deviceId,
      recaptcha: recaptcha ?? this.recaptcha,
    );
  }

  @override
  List<Object?> get props => [
        authType,
        email,
        password,
        passwordSecond,
        region,
        deviceId,
        recaptcha,
      ];

  /// Creates a Json map from a RegistrationRequest
  Map<String, dynamic> toJson() => _$RegistrationRequestToJson(this);
}
