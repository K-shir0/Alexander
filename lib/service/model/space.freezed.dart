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
