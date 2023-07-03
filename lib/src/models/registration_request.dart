import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:market_client/market_client.dart';

part 'registration_request.g.dart';

/// {@template registration_request}
/// RegistrationRequest description
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

  /// A description for authType
  @JsonKey(name: 'auth_type')
  final AuthType authType;

  /// A description for email
  final String email;

  /// A description for password
  final String password;

  /// A description for passwordSecond
  @JsonKey(name: 'password_second')
  final String passwordSecond;

  /// A description for region
  final String region;

  /// A description for deviceId
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
