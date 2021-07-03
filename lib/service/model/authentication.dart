import 'package:alexander/model/user.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'authentication.freezed.dart';

part 'authentication.g.dart';

@freezed
class SignInRequest with _$SignInRequest {
  const factory SignInRequest({
    required String email,
    required String password,
  }) = _SignInRequest;

  factory SignInRequest.fromJson(Map<String, dynamic> json) =>
      _$SignInRequestFromJson(json);
}

@freezed
class SignInResponse with _$SignInResponse {
  const factory SignInResponse({
    required int code,
    required SignInResponseData data,
  }) = _SignInResponse;

 factory SignInResponse.fromJson(Map<String, dynamic> json) => _$SignInResponseFromJson(json);
}

@freezed
class SignInResponseData with _$SignInResponseData {
  const factory SignInResponseData({
    required User user,
  }) = _SignInResponseData;

 factory SignInResponseData.fromJson(Map<String, dynamic> json) => _$SignInResponseDataFromJson(json);
}
