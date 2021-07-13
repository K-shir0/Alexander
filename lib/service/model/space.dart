import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'space.freezed.dart';

part 'space.g.dart';

@freezed
abstract class SetSpaceRequest with _$SetSpaceRequest {
  const factory SetSpaceRequest({
    required String id,
  }) = _SetSpaceRequest;

  factory SetSpaceRequest.fromJson(Map<String, dynamic> json) =>
      _$SetSpaceRequestFromJson(json);
}

@freezed
abstract class SetSpaceResponse with _$SetSpaceResponse {
  const factory SetSpaceResponse({
    required int code,
  }) = _SetSpaceResponse;

 factory SetSpaceResponse.fromJson(Map<String, dynamic> json) => _$SetSpaceResponseFromJson(json);
}