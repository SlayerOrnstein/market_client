// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_in_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignInRequest _$SignInRequestFromJson(Map<String, dynamic> json) =>
    SignInRequest(
      authType: $enumDecode(_$AuthTypeEnumMap, json['auth_type']),
      email: json['email'] as String,
      password: json['password'] as String,
      deviceId: json['device_id'] as String,
    );

Map<String, dynamic> _$SignInRequestToJson(SignInRequest instance) =>
    <String, dynamic>{
      'auth_type': _$AuthTypeEnumMap[instance.authType]!,
      'email': instance.email,
      'password': instance.password,
      'device_id': instance.deviceId,
    };

const _$AuthTypeEnumMap = {
  AuthType.cookie: 'cookie',
  AuthType.header: 'header',
};
