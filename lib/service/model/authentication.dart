import 'package:alexander/domain/user.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'authentication.freezed.dart';

part 'authentication.g.dart';

/// ログインAPIのレスポンス。
@freezed
class SignInRequest with _$SignInRequest {
  const factory SignInRequest({
    required String email,
    required String password,
  }) = _SignInRequest;

  factory SignInRequest.fromJson(Map<String, dynamic> json) =>
      _$SignInRequestFromJson(json);
}

/// ログインAPIのリクエスト。
@freezed
class SignInResponse with _$SignInResponse {
  const factory SignInResponse({
    required int code,
    required SignInResponseData data,
  }) = _SignInResponse;

  factory SignInResponse.fromJson(Map<String, dynamic> json) =>
      _$SignInResponseFromJson(json);
}

/// @nodoc
@freezed
class SignInResponseData with _$SignInResponseData {
  const factory SignInResponseData({
    required User user,
  }) = _SignInResponseData;

  factory SignInResponseData.fromJson(Map<String, dynamic> json) =>
      _$SignInResponseDataFromJson(json);
}

/// ログアウト
@freezed
class SignOutResponse with _$SignOutResponse {
  const factory SignOutResponse({
    required int code,
  }) = _SignOutResponse;

  factory SignOutResponse.fromJson(Map<String, dynamic> json) =>
      _$SignOutResponseFromJson(json);
}

/// 自分の情報を取得するAPIのレスポンス。
@freezed
class SelfResponse with _$SelfResponse {
  const factory SelfResponse({
    required int code,
    required SelfResponseData data,
  }) = _SelfResponse;

  factory SelfResponse.fromJson(Map<String, dynamic> json) =>
      _$SelfResponseFromJson(json);
}

/// @nodoc
@freezed
class SelfResponseData with _$SelfResponseData {
  const factory SelfResponseData({
    required User user,
  }) = _SelfResponseData;

  factory SelfResponseData.fromJson(Map<String, dynamic> json) =>
      _$SelfResponseDataFromJson(json);
}
