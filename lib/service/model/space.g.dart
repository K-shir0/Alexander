// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'space.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SetSpaceRequest _$_$_SetSpaceRequestFromJson(Map<String, dynamic> json) {
  return _$_SetSpaceRequest(
    id: json['id'] as String,
  );
}

Map<String, dynamic> _$_$_SetSpaceRequestToJson(_$_SetSpaceRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

_$_SetSpaceResponse _$_$_SetSpaceResponseFromJson(Map<String, dynamic> json) {
  return _$_SetSpaceResponse(
    code: json['code'] as int,
  );
}

Map<String, dynamic> _$_$_SetSpaceResponseToJson(
        _$_SetSpaceResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
    };

_$_GetSpaceResponse _$_$_GetSpaceResponseFromJson(Map<String, dynamic> json) {
  return _$_GetSpaceResponse(
    code: json['code'] as int,
    data: GetSpaceResponseData.fromJson(json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_GetSpaceResponseToJson(
        _$_GetSpaceResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'data': instance.data,
    };

_$_GetSpaceResponseData _$_$_GetSpaceResponseDataFromJson(
    Map<String, dynamic> json) {
  return _$_GetSpaceResponseData(
    spaces: (json['spaces'] as List<dynamic>)
        .map((e) => SpaceMetadata.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_GetSpaceResponseDataToJson(
        _$_GetSpaceResponseData instance) =>
    <String, dynamic>{
      'spaces': instance.spaces,
    };

_$_GetPageRequest _$_$_GetPageRequestFromJson(Map<String, dynamic> json) {
  return _$_GetPageRequest(
    id: json['id'] as String,
  );
}

Map<String, dynamic> _$_$_GetPageRequestToJson(_$_GetPageRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

_$_GetPageResponse _$_$_GetPageResponseFromJson(Map<String, dynamic> json) {
  return _$_GetPageResponse(
    code: json['code'] as int,
    data: GetPageResponseData.fromJson(json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_GetPageResponseToJson(_$_GetPageResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'data': instance.data,
    };

_$_GetPageResponseData _$_$_GetPageResponseDataFromJson(
    Map<String, dynamic> json) {
  return _$_GetPageResponseData(
    ideas: (json['ideas'] as List<dynamic>)
        .map((e) => Idea.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_GetPageResponseDataToJson(
        _$_GetPageResponseData instance) =>
    <String, dynamic>{
      'ideas': instance.ideas,
    };

_$_SavePageRequest _$_$_SavePageRequestFromJson(Map<String, dynamic> json) {
  return _$_SavePageRequest(
    transactions: (json['transactions'] as List<dynamic>)
        .map((e) => Transaction.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_SavePageRequestToJson(_$_SavePageRequest instance) =>
    <String, dynamic>{
      'transactions': instance.transactions,
    };

_$_SavePageResponse _$_$_SavePageResponseFromJson(Map<String, dynamic> json) {
  return _$_SavePageResponse(
    code: json['code'] as int,
  );
}

Map<String, dynamic> _$_$_SavePageResponseToJson(
        _$_SavePageResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
    };
