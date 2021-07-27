import 'package:alexander/domain/idea.dart';
import 'package:alexander/domain/space.dart';
import 'package:alexander/domain/transaction.dart';
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

@freezed
class GetPageRequest with _$GetPageRequest {
  const factory GetPageRequest({
    required String id,
  }) = _GetPageRequest;

 factory GetPageRequest.fromJson(Map<String, dynamic> json) => _$GetPageRequestFromJson(json);
}

@freezed
abstract class GetPageResponse with _$GetPageResponse {
  const factory GetPageResponse({
    required int code,
    required GetPageResponseData data,
  }) = _GetPageResponse;

 factory GetPageResponse.fromJson(Map<String, dynamic> json) => _$GetPageResponseFromJson(json);
}

@freezed
class GetPageResponseData with _$GetPageResponseData {
  const factory GetPageResponseData({
    required List<Idea> ideas,
  }) = _GetPageResponseData;

 factory GetPageResponseData.fromJson(Map<String, dynamic> json) => _$GetPageResponseDataFromJson(json);
}

@freezed
class SavePageRequest with _$SavePageRequest {
  const factory SavePageRequest({
    required List<Transaction> transactions
  }) = _SavePageRequest;

 factory SavePageRequest.fromJson(Map<String, dynamic> json) => _$SavePageRequestFromJson(json);
}

@freezed
class SavePageResponse with _$SavePageResponse {
  const factory SavePageResponse({
    required int code,
  }) = _SavePageResponse;

 factory SavePageResponse.fromJson(Map<String, dynamic> json) => _$SavePageResponseFromJson(json);
}