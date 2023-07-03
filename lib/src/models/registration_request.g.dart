// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registration_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegistrationRequest _$RegistrationRequestFromJson(Map<String, dynamic> json) =>
    RegistrationRequest(
      authType: $enumDecode(_$AuthTypeEnumMap, json['auth_type']),
      email: json['email'] as String,
      password: json['password'] as String,
      passwordSecond: json['password_second'] as String,
      region: json['region'] as String,
      deviceId: json['device_id'] as String?,
      recaptcha: json['recaptcha'] as String?,
    );

Map<String, dynamic> _$RegistrationRequestToJson(
        RegistrationRequest instance) =>
    <String, dynamic>{
      'auth_type': _$AuthTypeEnumMap[instance.authType]!,
      'email': instance.email,
      'password': instance.password,
      'password_second': instance.passwordSecond,
      'region': instance.region,
      'device_id': instance.deviceId,
      'recaptcha': instance.recaptcha,
    };

const _$AuthTypeEnumMap = {
  AuthType.cookie: 'cookie',
  AuthType.header: 'header',
};
