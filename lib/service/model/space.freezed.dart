// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'space.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SetSpaceRequest _$SetSpaceRequestFromJson(Map<String, dynamic> json) {
  return _SetSpaceRequest.fromJson(json);
}

/// @nodoc
class _$SetSpaceRequestTearOff {
  const _$SetSpaceRequestTearOff();

  _SetSpaceRequest call({required String id}) {
    return _SetSpaceRequest(
      id: id,
    );
  }

  SetSpaceRequest fromJson(Map<String, Object> json) {
    return SetSpaceRequest.fromJson(json);
  }
}

/// @nodoc
const $SetSpaceRequest = _$SetSpaceRequestTearOff();

/// @nodoc
mixin _$SetSpaceRequest {
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SetSpaceRequestCopyWith<SetSpaceRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetSpaceRequestCopyWith<$Res> {
  factory $SetSpaceRequestCopyWith(
          SetSpaceRequest value, $Res Function(SetSpaceRequest) then) =
      _$SetSpaceRequestCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class _$SetSpaceRequestCopyWithImpl<$Res>
    implements $SetSpaceRequestCopyWith<$Res> {
  _$SetSpaceRequestCopyWithImpl(this._value, this._then);

  final SetSpaceRequest _value;
  // ignore: unused_field
  final $Res Function(SetSpaceRequest) _then;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$SetSpaceRequestCopyWith<$Res>
    implements $SetSpaceRequestCopyWith<$Res> {
  factory _$SetSpaceRequestCopyWith(
          _SetSpaceRequest value, $Res Function(_SetSpaceRequest) then) =
      __$SetSpaceRequestCopyWithImpl<$Res>;
  @override
  $Res call({String id});
}

/// @nodoc
class __$SetSpaceRequestCopyWithImpl<$Res>
    extends _$SetSpaceRequestCopyWithImpl<$Res>
    implements _$SetSpaceRequestCopyWith<$Res> {
  __$SetSpaceRequestCopyWithImpl(
      _SetSpaceRequest _value, $Res Function(_SetSpaceRequest) _then)
      : super(_value, (v) => _then(v as _SetSpaceRequest));

  @override
  _SetSpaceRequest get _value => super._value as _SetSpaceRequest;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_SetSpaceRequest(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SetSpaceRequest
    with DiagnosticableTreeMixin
    implements _SetSpaceRequest {
  const _$_SetSpaceRequest({required this.id});

  factory _$_SetSpaceRequest.fromJson(Map<String, dynamic> json) =>
      _$_$_SetSpaceRequestFromJson(json);

  @override
  final String id;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SetSpaceRequest(id: $id)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SetSpaceRequest'))
      ..add(DiagnosticsProperty('id', id));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SetSpaceRequest &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$SetSpaceRequestCopyWith<_SetSpaceRequest> get copyWith =>
      __$SetSpaceRequestCopyWithImpl<_SetSpaceRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SetSpaceRequestToJson(this);
  }
}

abstract class _SetSpaceRequest implements SetSpaceRequest {
  const factory _SetSpaceRequest({required String id}) = _$_SetSpaceRequest;

  factory _SetSpaceRequest.fromJson(Map<String, dynamic> json) =
      _$_SetSpaceRequest.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SetSpaceRequestCopyWith<_SetSpaceRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

SetSpaceResponse _$SetSpaceResponseFromJson(Map<String, dynamic> json) {
  return _SetSpaceResponse.fromJson(json);
}

/// @nodoc
class _$SetSpaceResponseTearOff {
  const _$SetSpaceResponseTearOff();

  _SetSpaceResponse call({required int code}) {
    return _SetSpaceResponse(
      code: code,
    );
  }

  SetSpaceResponse fromJson(Map<String, Object> json) {
    return SetSpaceResponse.fromJson(json);
  }
}

/// @nodoc
const $SetSpaceResponse = _$SetSpaceResponseTearOff();

/// @nodoc
mixin _$SetSpaceResponse {
  int get code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SetSpaceResponseCopyWith<SetSpaceResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetSpaceResponseCopyWith<$Res> {
  factory $SetSpaceResponseCopyWith(
          SetSpaceResponse value, $Res Function(SetSpaceResponse) then) =
      _$SetSpaceResponseCopyWithImpl<$Res>;
  $Res call({int code});
}

/// @nodoc
class _$SetSpaceResponseCopyWithImpl<$Res>
    implements $SetSpaceResponseCopyWith<$Res> {
  _$SetSpaceResponseCopyWithImpl(this._value, this._then);

  final SetSpaceResponse _value;
  // ignore: unused_field
  final $Res Function(SetSpaceResponse) _then;

  @override
  $Res call({
    Object? code = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$SetSpaceResponseCopyWith<$Res>
    implements $SetSpaceResponseCopyWith<$Res> {
  factory _$SetSpaceResponseCopyWith(
          _SetSpaceResponse value, $Res Function(_SetSpaceResponse) then) =
      __$SetSpaceResponseCopyWithImpl<$Res>;
  @override
  $Res call({int code});
}

/// @nodoc
class __$SetSpaceResponseCopyWithImpl<$Res>
    extends _$SetSpaceResponseCopyWithImpl<$Res>
    implements _$SetSpaceResponseCopyWith<$Res> {
  __$SetSpaceResponseCopyWithImpl(
      _SetSpaceResponse _value, $Res Function(_SetSpaceResponse) _then)
      : super(_value, (v) => _then(v as _SetSpaceResponse));

  @override
  _SetSpaceResponse get _value => super._value as _SetSpaceResponse;

  @override
  $Res call({
    Object? code = freezed,
  }) {
    return _then(_SetSpaceResponse(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SetSpaceResponse
    with DiagnosticableTreeMixin
    implements _SetSpaceResponse {
  const _$_SetSpaceResponse({required this.code});

  factory _$_SetSpaceResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_SetSpaceResponseFromJson(json);

  @override
  final int code;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SetSpaceResponse(code: $code)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SetSpaceResponse'))
      ..add(DiagnosticsProperty('code', code));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SetSpaceResponse &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(code);

  @JsonKey(ignore: true)
  @override
  _$SetSpaceResponseCopyWith<_SetSpaceResponse> get copyWith =>
      __$SetSpaceResponseCopyWithImpl<_SetSpaceResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SetSpaceResponseToJson(this);
  }
}

abstract class _SetSpaceResponse implements SetSpaceResponse {
  const factory _SetSpaceResponse({required int code}) = _$_SetSpaceResponse;

  factory _SetSpaceResponse.fromJson(Map<String, dynamic> json) =
      _$_SetSpaceResponse.fromJson;

  @override
  int get code => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SetSpaceResponseCopyWith<_SetSpaceResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

GetSpaceResponse _$GetSpaceResponseFromJson(Map<String, dynamic> json) {
  return _GetSpaceResponse.fromJson(json);
}

/// @nodoc
class _$GetSpaceResponseTearOff {
  const _$GetSpaceResponseTearOff();

  _GetSpaceResponse call(
      {required int code, required GetSpaceResponseData data}) {
    return _GetSpaceResponse(
      code: code,
      data: data,
    );
  }

  GetSpaceResponse fromJson(Map<String, Object> json) {
    return GetSpaceResponse.fromJson(json);
  }
}

/// @nodoc
const $GetSpaceResponse = _$GetSpaceResponseTearOff();

/// @nodoc
mixin _$GetSpaceResponse {
  int get code => throw _privateConstructorUsedError;
  GetSpaceResponseData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetSpaceResponseCopyWith<GetSpaceResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetSpaceResponseCopyWith<$Res> {
  factory $GetSpaceResponseCopyWith(
          GetSpaceResponse value, $Res Function(GetSpaceResponse) then) =
      _$GetSpaceResponseCopyWithImpl<$Res>;
  $Res call({int code, GetSpaceResponseData data});

  $GetSpaceResponseDataCopyWith<$Res> get data;
}

/// @nodoc
class _$GetSpaceResponseCopyWithImpl<$Res>
    implements $GetSpaceResponseCopyWith<$Res> {
  _$GetSpaceResponseCopyWithImpl(this._value, this._then);

  final GetSpaceResponse _value;
  // ignore: unused_field
  final $Res Function(GetSpaceResponse) _then;

  @override
  $Res call({
    Object? code = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as GetSpaceResponseData,
    ));
  }

  @override
  $GetSpaceResponseDataCopyWith<$Res> get data {
    return $GetSpaceResponseDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$GetSpaceResponseCopyWith<$Res>
    implements $GetSpaceResponseCopyWith<$Res> {
  factory _$GetSpaceResponseCopyWith(
          _GetSpaceResponse value, $Res Function(_GetSpaceResponse) then) =
      __$GetSpaceResponseCopyWithImpl<$Res>;
  @override
  $Res call({int code, GetSpaceResponseData data});

  @override
  $GetSpaceResponseDataCopyWith<$Res> get data;
}

/// @nodoc
class __$GetSpaceResponseCopyWithImpl<$Res>
    extends _$GetSpaceResponseCopyWithImpl<$Res>
    implements _$GetSpaceResponseCopyWith<$Res> {
  __$GetSpaceResponseCopyWithImpl(
      _GetSpaceResponse _value, $Res Function(_GetSpaceResponse) _then)
      : super(_value, (v) => _then(v as _GetSpaceResponse));

  @override
  _GetSpaceResponse get _value => super._value as _GetSpaceResponse;

  @override
  $Res call({
    Object? code = freezed,
    Object? data = freezed,
  }) {
    return _then(_GetSpaceResponse(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as GetSpaceResponseData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetSpaceResponse
    with DiagnosticableTreeMixin
    implements _GetSpaceResponse {
  const _$_GetSpaceResponse({required this.code, required this.data});

  factory _$_GetSpaceResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_GetSpaceResponseFromJson(json);

  @override
  final int code;
  @override
  final GetSpaceResponseData data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GetSpaceResponse(code: $code, data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GetSpaceResponse'))
      ..add(DiagnosticsProperty('code', code))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetSpaceResponse &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$GetSpaceResponseCopyWith<_GetSpaceResponse> get copyWith =>
      __$GetSpaceResponseCopyWithImpl<_GetSpaceResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GetSpaceResponseToJson(this);
  }
}

abstract class _GetSpaceResponse implements GetSpaceResponse {
  const factory _GetSpaceResponse(
      {required int code,
      required GetSpaceResponseData data}) = _$_GetSpaceResponse;

  factory _GetSpaceResponse.fromJson(Map<String, dynamic> json) =
      _$_GetSpaceResponse.fromJson;

  @override
  int get code => throw _privateConstructorUsedError;
  @override
  GetSpaceResponseData get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GetSpaceResponseCopyWith<_GetSpaceResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

GetSpaceResponseData _$GetSpaceResponseDataFromJson(Map<String, dynamic> json) {
  return _GetSpaceResponseData.fromJson(json);
}

/// @nodoc
class _$GetSpaceResponseDataTearOff {
  const _$GetSpaceResponseDataTearOff();

  _GetSpaceResponseData call({required List<SpaceMetadata> spaces}) {
    return _GetSpaceResponseData(
      spaces: spaces,
    );
  }

  GetSpaceResponseData fromJson(Map<String, Object> json) {
    return GetSpaceResponseData.fromJson(json);
  }
}

/// @nodoc
const $GetSpaceResponseData = _$GetSpaceResponseDataTearOff();

/// @nodoc
mixin _$GetSpaceResponseData {
  List<SpaceMetadata> get spaces => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetSpaceResponseDataCopyWith<GetSpaceResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetSpaceResponseDataCopyWith<$Res> {
  factory $GetSpaceResponseDataCopyWith(GetSpaceResponseData value,
          $Res Function(GetSpaceResponseData) then) =
      _$GetSpaceResponseDataCopyWithImpl<$Res>;
  $Res call({List<SpaceMetadata> spaces});
}

/// @nodoc
class _$GetSpaceResponseDataCopyWithImpl<$Res>
    implements $GetSpaceResponseDataCopyWith<$Res> {
  _$GetSpaceResponseDataCopyWithImpl(this._value, this._then);

  final GetSpaceResponseData _value;
  // ignore: unused_field
  final $Res Function(GetSpaceResponseData) _then;

  @override
  $Res call({
    Object? spaces = freezed,
  }) {
    return _then(_value.copyWith(
      spaces: spaces == freezed
          ? _value.spaces
          : spaces // ignore: cast_nullable_to_non_nullable
              as List<SpaceMetadata>,
    ));
  }
}

/// @nodoc
abstract class _$GetSpaceResponseDataCopyWith<$Res>
    implements $GetSpaceResponseDataCopyWith<$Res> {
  factory _$GetSpaceResponseDataCopyWith(_GetSpaceResponseData value,
          $Res Function(_GetSpaceResponseData) then) =
      __$GetSpaceResponseDataCopyWithImpl<$Res>;
  @override
  $Res call({List<SpaceMetadata> spaces});
}

/// @nodoc
class __$GetSpaceResponseDataCopyWithImpl<$Res>
    extends _$GetSpaceResponseDataCopyWithImpl<$Res>
    implements _$GetSpaceResponseDataCopyWith<$Res> {
  __$GetSpaceResponseDataCopyWithImpl(
      _GetSpaceResponseData _value, $Res Function(_GetSpaceResponseData) _then)
      : super(_value, (v) => _then(v as _GetSpaceResponseData));

  @override
  _GetSpaceResponseData get _value => super._value as _GetSpaceResponseData;

  @override
  $Res call({
    Object? spaces = freezed,
  }) {
    return _then(_GetSpaceResponseData(
      spaces: spaces == freezed
          ? _value.spaces
          : spaces // ignore: cast_nullable_to_non_nullable
              as List<SpaceMetadata>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetSpaceResponseData
    with DiagnosticableTreeMixin
    implements _GetSpaceResponseData {
  const _$_GetSpaceResponseData({required this.spaces});

  factory _$_GetSpaceResponseData.fromJson(Map<String, dynamic> json) =>
      _$_$_GetSpaceResponseDataFromJson(json);

  @override
  final List<SpaceMetadata> spaces;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GetSpaceResponseData(spaces: $spaces)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GetSpaceResponseData'))
      ..add(DiagnosticsProperty('spaces', spaces));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetSpaceResponseData &&
            (identical(other.spaces, spaces) ||
                const DeepCollectionEquality().equals(other.spaces, spaces)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(spaces);

  @JsonKey(ignore: true)
  @override
  _$GetSpaceResponseDataCopyWith<_GetSpaceResponseData> get copyWith =>
      __$GetSpaceResponseDataCopyWithImpl<_GetSpaceResponseData>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GetSpaceResponseDataToJson(this);
  }
}

abstract class _GetSpaceResponseData implements GetSpaceResponseData {
  const factory _GetSpaceResponseData({required List<SpaceMetadata> spaces}) =
      _$_GetSpaceResponseData;

  factory _GetSpaceResponseData.fromJson(Map<String, dynamic> json) =
      _$_GetSpaceResponseData.fromJson;

  @override
  List<SpaceMetadata> get spaces => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GetSpaceResponseDataCopyWith<_GetSpaceResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

GetPageRequest _$GetPageRequestFromJson(Map<String, dynamic> json) {
  return _GetPageRequest.fromJson(json);
}

/// @nodoc
class _$GetPageRequestTearOff {
  const _$GetPageRequestTearOff();

  _GetPageRequest call({required String id}) {
    return _GetPageRequest(
      id: id,
    );
  }

  GetPageRequest fromJson(Map<String, Object> json) {
    return GetPageRequest.fromJson(json);
  }
}

/// @nodoc
const $GetPageRequest = _$GetPageRequestTearOff();

/// @nodoc
mixin _$GetPageRequest {
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetPageRequestCopyWith<GetPageRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetPageRequestCopyWith<$Res> {
  factory $GetPageRequestCopyWith(
          GetPageRequest value, $Res Function(GetPageRequest) then) =
      _$GetPageRequestCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class _$GetPageRequestCopyWithImpl<$Res>
    implements $GetPageRequestCopyWith<$Res> {
  _$GetPageRequestCopyWithImpl(this._value, this._then);

  final GetPageRequest _value;
  // ignore: unused_field
  final $Res Function(GetPageRequest) _then;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$GetPageRequestCopyWith<$Res>
    implements $GetPageRequestCopyWith<$Res> {
  factory _$GetPageRequestCopyWith(
          _GetPageRequest value, $Res Function(_GetPageRequest) then) =
      __$GetPageRequestCopyWithImpl<$Res>;
  @override
  $Res call({String id});
}

/// @nodoc
class __$GetPageRequestCopyWithImpl<$Res>
    extends _$GetPageRequestCopyWithImpl<$Res>
    implements _$GetPageRequestCopyWith<$Res> {
  __$GetPageRequestCopyWithImpl(
      _GetPageRequest _value, $Res Function(_GetPageRequest) _then)
      : super(_value, (v) => _then(v as _GetPageRequest));

  @override
  _GetPageRequest get _value => super._value as _GetPageRequest;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_GetPageRequest(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetPageRequest
    with DiagnosticableTreeMixin
    implements _GetPageRequest {
  const _$_GetPageRequest({required this.id});

  factory _$_GetPageRequest.fromJson(Map<String, dynamic> json) =>
      _$_$_GetPageRequestFromJson(json);

  @override
  final String id;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GetPageRequest(id: $id)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GetPageRequest'))
      ..add(DiagnosticsProperty('id', id));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetPageRequest &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$GetPageRequestCopyWith<_GetPageRequest> get copyWith =>
      __$GetPageRequestCopyWithImpl<_GetPageRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GetPageRequestToJson(this);
  }
}

abstract class _GetPageRequest implements GetPageRequest {
  const factory _GetPageRequest({required String id}) = _$_GetPageRequest;

  factory _GetPageRequest.fromJson(Map<String, dynamic> json) =
      _$_GetPageRequest.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GetPageRequestCopyWith<_GetPageRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

GetPageResponse _$GetPageResponseFromJson(Map<String, dynamic> json) {
  return _GetPageResponse.fromJson(json);
}

/// @nodoc
class _$GetPageResponseTearOff {
  const _$GetPageResponseTearOff();

  _GetPageResponse call(
      {required int code, required GetPageResponseData data}) {
    return _GetPageResponse(
      code: code,
      data: data,
    );
  }

  GetPageResponse fromJson(Map<String, Object> json) {
    return GetPageResponse.fromJson(json);
  }
}

/// @nodoc
const $GetPageResponse = _$GetPageResponseTearOff();

/// @nodoc
mixin _$GetPageResponse {
  int get code => throw _privateConstructorUsedError;
  GetPageResponseData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetPageResponseCopyWith<GetPageResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetPageResponseCopyWith<$Res> {
  factory $GetPageResponseCopyWith(
          GetPageResponse value, $Res Function(GetPageResponse) then) =
      _$GetPageResponseCopyWithImpl<$Res>;
  $Res call({int code, GetPageResponseData data});

  $GetPageResponseDataCopyWith<$Res> get data;
}

/// @nodoc
class _$GetPageResponseCopyWithImpl<$Res>
    implements $GetPageResponseCopyWith<$Res> {
  _$GetPageResponseCopyWithImpl(this._value, this._then);

  final GetPageResponse _value;
  // ignore: unused_field
  final $Res Function(GetPageResponse) _then;

  @override
  $Res call({
    Object? code = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as GetPageResponseData,
    ));
  }

  @override
  $GetPageResponseDataCopyWith<$Res> get data {
    return $GetPageResponseDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$GetPageResponseCopyWith<$Res>
    implements $GetPageResponseCopyWith<$Res> {
  factory _$GetPageResponseCopyWith(
          _GetPageResponse value, $Res Function(_GetPageResponse) then) =
      __$GetPageResponseCopyWithImpl<$Res>;
  @override
  $Res call({int code, GetPageResponseData data});

  @override
  $GetPageResponseDataCopyWith<$Res> get data;
}

/// @nodoc
class __$GetPageResponseCopyWithImpl<$Res>
    extends _$GetPageResponseCopyWithImpl<$Res>
    implements _$GetPageResponseCopyWith<$Res> {
  __$GetPageResponseCopyWithImpl(
      _GetPageResponse _value, $Res Function(_GetPageResponse) _then)
      : super(_value, (v) => _then(v as _GetPageResponse));

  @override
  _GetPageResponse get _value => super._value as _GetPageResponse;

  @override
  $Res call({
    Object? code = freezed,
    Object? data = freezed,
  }) {
    return _then(_GetPageResponse(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as GetPageResponseData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetPageResponse
    with DiagnosticableTreeMixin
    implements _GetPageResponse {
  const _$_GetPageResponse({required this.code, required this.data});

  factory _$_GetPageResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_GetPageResponseFromJson(json);

  @override
  final int code;
  @override
  final GetPageResponseData data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GetPageResponse(code: $code, data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GetPageResponse'))
      ..add(DiagnosticsProperty('code', code))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetPageResponse &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$GetPageResponseCopyWith<_GetPageResponse> get copyWith =>
      __$GetPageResponseCopyWithImpl<_GetPageResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GetPageResponseToJson(this);
  }
}

abstract class _GetPageResponse implements GetPageResponse {
  const factory _GetPageResponse(
      {required int code,
      required GetPageResponseData data}) = _$_GetPageResponse;

  factory _GetPageResponse.fromJson(Map<String, dynamic> json) =
      _$_GetPageResponse.fromJson;

  @override
  int get code => throw _privateConstructorUsedError;
  @override
  GetPageResponseData get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GetPageResponseCopyWith<_GetPageResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

GetPageResponseData _$GetPageResponseDataFromJson(Map<String, dynamic> json) {
  return _GetPageResponseData.fromJson(json);
}

/// @nodoc
class _$GetPageResponseDataTearOff {
  const _$GetPageResponseDataTearOff();

  _GetPageResponseData call({required List<Idea> ideas}) {
    return _GetPageResponseData(
      ideas: ideas,
    );
  }

  GetPageResponseData fromJson(Map<String, Object> json) {
    return GetPageResponseData.fromJson(json);
  }
}

/// @nodoc
const $GetPageResponseData = _$GetPageResponseDataTearOff();

/// @nodoc
mixin _$GetPageResponseData {
  List<Idea> get ideas => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetPageResponseDataCopyWith<GetPageResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetPageResponseDataCopyWith<$Res> {
  factory $GetPageResponseDataCopyWith(
          GetPageResponseData value, $Res Function(GetPageResponseData) then) =
      _$GetPageResponseDataCopyWithImpl<$Res>;
  $Res call({List<Idea> ideas});
}

/// @nodoc
class _$GetPageResponseDataCopyWithImpl<$Res>
    implements $GetPageResponseDataCopyWith<$Res> {
  _$GetPageResponseDataCopyWithImpl(this._value, this._then);

  final GetPageResponseData _value;
  // ignore: unused_field
  final $Res Function(GetPageResponseData) _then;

  @override
  $Res call({
    Object? ideas = freezed,
  }) {
    return _then(_value.copyWith(
      ideas: ideas == freezed
          ? _value.ideas
          : ideas // ignore: cast_nullable_to_non_nullable
              as List<Idea>,
    ));
  }
}

/// @nodoc
abstract class _$GetPageResponseDataCopyWith<$Res>
    implements $GetPageResponseDataCopyWith<$Res> {
  factory _$GetPageResponseDataCopyWith(_GetPageResponseData value,
          $Res Function(_GetPageResponseData) then) =
      __$GetPageResponseDataCopyWithImpl<$Res>;
  @override
  $Res call({List<Idea> ideas});
}

/// @nodoc
class __$GetPageResponseDataCopyWithImpl<$Res>
    extends _$GetPageResponseDataCopyWithImpl<$Res>
    implements _$GetPageResponseDataCopyWith<$Res> {
  __$GetPageResponseDataCopyWithImpl(
      _GetPageResponseData _value, $Res Function(_GetPageResponseData) _then)
      : super(_value, (v) => _then(v as _GetPageResponseData));

  @override
  _GetPageResponseData get _value => super._value as _GetPageResponseData;

  @override
  $Res call({
    Object? ideas = freezed,
  }) {
    return _then(_GetPageResponseData(
      ideas: ideas == freezed
          ? _value.ideas
          : ideas // ignore: cast_nullable_to_non_nullable
              as List<Idea>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetPageResponseData
    with DiagnosticableTreeMixin
    implements _GetPageResponseData {
  const _$_GetPageResponseData({required this.ideas});

  factory _$_GetPageResponseData.fromJson(Map<String, dynamic> json) =>
      _$_$_GetPageResponseDataFromJson(json);

  @override
  final List<Idea> ideas;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GetPageResponseData(ideas: $ideas)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GetPageResponseData'))
      ..add(DiagnosticsProperty('ideas', ideas));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetPageResponseData &&
            (identical(other.ideas, ideas) ||
                const DeepCollectionEquality().equals(other.ideas, ideas)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(ideas);

  @JsonKey(ignore: true)
  @override
  _$GetPageResponseDataCopyWith<_GetPageResponseData> get copyWith =>
      __$GetPageResponseDataCopyWithImpl<_GetPageResponseData>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GetPageResponseDataToJson(this);
  }
}

abstract class _GetPageResponseData implements GetPageResponseData {
  const factory _GetPageResponseData({required List<Idea> ideas}) =
      _$_GetPageResponseData;

  factory _GetPageResponseData.fromJson(Map<String, dynamic> json) =
      _$_GetPageResponseData.fromJson;

  @override
  List<Idea> get ideas => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GetPageResponseDataCopyWith<_GetPageResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}
