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
