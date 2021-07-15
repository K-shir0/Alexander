import 'package:alexander/domain/space.dart';
import 'package:alexander/service/space.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'space.freezed.dart';

part 'space.g.dart';

@freezed
class SetSpaceRequest with _$SetSpaceRequest {
  const factory SetSpaceRequest({
    required String id,
  }) = _SetSpaceRequest;

  factory SetSpaceRequest.fromJson(Map<String, dynamic> json) =>
      _$SetSpaceRequestFromJson(json);
}

@freezed
class SetSpaceResponse with _$SetSpaceResponse {
  const factory SetSpaceResponse({
    required int code,
  }) = _SetSpaceResponse;

  factory SetSpaceResponse.fromJson(Map<String, dynamic> json) =>
      _$SetSpaceResponseFromJson(json);
}

@freezed
class GetSpaceResponse with _$GetSpaceResponse {
  const factory GetSpaceResponse({
    required int code,
    required GetSpaceResponseData data,
  }) = _GetSpaceResponse;

  factory GetSpaceResponse.fromJson(Map<String, dynamic> json) =>
      _$GetSpaceResponseFromJson(json);
}

@freezed
class GetSpaceResponseData with _$GetSpaceResponseData {
  const factory GetSpaceResponseData({
    required List<SpaceMetadata> spaces,
  }) = _GetSpaceResponseData;

  factory GetSpaceResponseData.fromJson(Map<String, dynamic> json) =>
      _$GetSpaceResponseDataFromJson(json);
}
