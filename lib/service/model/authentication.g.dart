// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authentication.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SignInRequest _$_$_SignInRequestFromJson(Map<String, dynamic> json) {
  return _$_SignInRequest(
    email: json['email'] as String,
    password: json['password'] as String,
  );
}

Map<String, dynamic> _$_$_SignInRequestToJson(_$_SignInRequest instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };

_$_SignInResponse _$_$_SignInResponseFromJson(Map<String, dynamic> json) {
  return _$_SignInResponse(
    code: json['code'] as int,
    data: SignInResponseData.fromJson(json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_SignInResponseToJson(_$_SignInResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'data': instance.data,
    };

_$_SignInResponseData _$_$_SignInResponseDataFromJson(
    Map<String, dynamic> json) {
  return _$_SignInResponseData(
    user: User.fromJson(json['user'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_SignInResponseDataToJson(
        _$_SignInResponseData instance) =>
    <String, dynamic>{
      'user': instance.user,
    };

_$_SignOutResponse _$_$_SignOutResponseFromJson(Map<String, dynamic> json) {
  return _$_SignOutResponse(
    code: json['code'] as int,
  );
}

Map<String, dynamic> _$_$_SignOutResponseToJson(_$_SignOutResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
    };

_$_SelfResponse _$_$_SelfResponseFromJson(Map<String, dynamic> json) {
  return _$_SelfResponse(
    code: json['code'] as int,
    data: SelfResponseData.fromJson(json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_SelfResponseToJson(_$_SelfResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'data': instance.data,
    };

_$_SelfResponseData _$_$_SelfResponseDataFromJson(Map<String, dynamic> json) {
  return _$_SelfResponseData(
    user: User.fromJson(json['user'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_SelfResponseDataToJson(
        _$_SelfResponseData instance) =>
    <String, dynamic>{
      'user': instance.user,
    };
