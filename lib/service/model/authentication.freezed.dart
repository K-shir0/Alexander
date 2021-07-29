// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'authentication.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SignInRequest _$SignInRequestFromJson(Map<String, dynamic> json) {
  return _SignInRequest.fromJson(json);
}

/// @nodoc
class _$SignInRequestTearOff {
  const _$SignInRequestTearOff();

  _SignInRequest call({required String email, required String password}) {
    return _SignInRequest(
      email: email,
      password: password,
    );
  }

  SignInRequest fromJson(Map<String, Object> json) {
    return SignInRequest.fromJson(json);
  }
}

/// @nodoc
const $SignInRequest = _$SignInRequestTearOff();

/// @nodoc
mixin _$SignInRequest {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignInRequestCopyWith<SignInRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInRequestCopyWith<$Res> {
  factory $SignInRequestCopyWith(
          SignInRequest value, $Res Function(SignInRequest) then) =
      _$SignInRequestCopyWithImpl<$Res>;
  $Res call({String email, String password});
}

/// @nodoc
class _$SignInRequestCopyWithImpl<$Res>
    implements $SignInRequestCopyWith<$Res> {
  _$SignInRequestCopyWithImpl(this._value, this._then);

  final SignInRequest _value;
  // ignore: unused_field
  final $Res Function(SignInRequest) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$SignInRequestCopyWith<$Res>
    implements $SignInRequestCopyWith<$Res> {
  factory _$SignInRequestCopyWith(
          _SignInRequest value, $Res Function(_SignInRequest) then) =
      __$SignInRequestCopyWithImpl<$Res>;
  @override
  $Res call({String email, String password});
}

/// @nodoc
class __$SignInRequestCopyWithImpl<$Res>
    extends _$SignInRequestCopyWithImpl<$Res>
    implements _$SignInRequestCopyWith<$Res> {
  __$SignInRequestCopyWithImpl(
      _SignInRequest _value, $Res Function(_SignInRequest) _then)
      : super(_value, (v) => _then(v as _SignInRequest));

  @override
  _SignInRequest get _value => super._value as _SignInRequest;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_SignInRequest(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SignInRequest with DiagnosticableTreeMixin implements _SignInRequest {
  const _$_SignInRequest({required this.email, required this.password});

  factory _$_SignInRequest.fromJson(Map<String, dynamic> json) =>
      _$_$_SignInRequestFromJson(json);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInRequest(email: $email, password: $password)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignInRequest'))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('password', password));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignInRequest &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password);

  @JsonKey(ignore: true)
  @override
  _$SignInRequestCopyWith<_SignInRequest> get copyWith =>
      __$SignInRequestCopyWithImpl<_SignInRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SignInRequestToJson(this);
  }
}

abstract class _SignInRequest implements SignInRequest {
  const factory _SignInRequest(
      {required String email, required String password}) = _$_SignInRequest;

  factory _SignInRequest.fromJson(Map<String, dynamic> json) =
      _$_SignInRequest.fromJson;

  @override
  String get email => throw _privateConstructorUsedError;
  @override
  String get password => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SignInRequestCopyWith<_SignInRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

SignInResponse _$SignInResponseFromJson(Map<String, dynamic> json) {
  return _SignInResponse.fromJson(json);
}

/// @nodoc
class _$SignInResponseTearOff {
  const _$SignInResponseTearOff();

  _SignInResponse call({required int code, required SignInResponseData data}) {
    return _SignInResponse(
      code: code,
      data: data,
    );
  }

  SignInResponse fromJson(Map<String, Object> json) {
    return SignInResponse.fromJson(json);
  }
}

/// @nodoc
const $SignInResponse = _$SignInResponseTearOff();

/// @nodoc
mixin _$SignInResponse {
  int get code => throw _privateConstructorUsedError;
  SignInResponseData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignInResponseCopyWith<SignInResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInResponseCopyWith<$Res> {
  factory $SignInResponseCopyWith(
          SignInResponse value, $Res Function(SignInResponse) then) =
      _$SignInResponseCopyWithImpl<$Res>;
  $Res call({int code, SignInResponseData data});

  $SignInResponseDataCopyWith<$Res> get data;
}

/// @nodoc
class _$SignInResponseCopyWithImpl<$Res>
    implements $SignInResponseCopyWith<$Res> {
  _$SignInResponseCopyWithImpl(this._value, this._then);

  final SignInResponse _value;
  // ignore: unused_field
  final $Res Function(SignInResponse) _then;

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
              as SignInResponseData,
    ));
  }

  @override
  $SignInResponseDataCopyWith<$Res> get data {
    return $SignInResponseDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$SignInResponseCopyWith<$Res>
    implements $SignInResponseCopyWith<$Res> {
  factory _$SignInResponseCopyWith(
          _SignInResponse value, $Res Function(_SignInResponse) then) =
      __$SignInResponseCopyWithImpl<$Res>;
  @override
  $Res call({int code, SignInResponseData data});

  @override
  $SignInResponseDataCopyWith<$Res> get data;
}

/// @nodoc
class __$SignInResponseCopyWithImpl<$Res>
    extends _$SignInResponseCopyWithImpl<$Res>
    implements _$SignInResponseCopyWith<$Res> {
  __$SignInResponseCopyWithImpl(
      _SignInResponse _value, $Res Function(_SignInResponse) _then)
      : super(_value, (v) => _then(v as _SignInResponse));

  @override
  _SignInResponse get _value => super._value as _SignInResponse;

  @override
  $Res call({
    Object? code = freezed,
    Object? data = freezed,
  }) {
    return _then(_SignInResponse(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SignInResponseData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SignInResponse
    with DiagnosticableTreeMixin
    implements _SignInResponse {
  const _$_SignInResponse({required this.code, required this.data});

  factory _$_SignInResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_SignInResponseFromJson(json);

  @override
  final int code;
  @override
  final SignInResponseData data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInResponse(code: $code, data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignInResponse'))
      ..add(DiagnosticsProperty('code', code))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignInResponse &&
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
  _$SignInResponseCopyWith<_SignInResponse> get copyWith =>
      __$SignInResponseCopyWithImpl<_SignInResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SignInResponseToJson(this);
  }
}

abstract class _SignInResponse implements SignInResponse {
  const factory _SignInResponse(
      {required int code,
      required SignInResponseData data}) = _$_SignInResponse;

  factory _SignInResponse.fromJson(Map<String, dynamic> json) =
      _$_SignInResponse.fromJson;

  @override
  int get code => throw _privateConstructorUsedError;
  @override
  SignInResponseData get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SignInResponseCopyWith<_SignInResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

SignInResponseData _$SignInResponseDataFromJson(Map<String, dynamic> json) {
  return _SignInResponseData.fromJson(json);
}

/// @nodoc
class _$SignInResponseDataTearOff {
  const _$SignInResponseDataTearOff();

  _SignInResponseData call({required User user}) {
    return _SignInResponseData(
      user: user,
    );
  }

  SignInResponseData fromJson(Map<String, Object> json) {
    return SignInResponseData.fromJson(json);
  }
}

/// @nodoc
const $SignInResponseData = _$SignInResponseDataTearOff();

/// @nodoc
mixin _$SignInResponseData {
  User get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignInResponseDataCopyWith<SignInResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInResponseDataCopyWith<$Res> {
  factory $SignInResponseDataCopyWith(
          SignInResponseData value, $Res Function(SignInResponseData) then) =
      _$SignInResponseDataCopyWithImpl<$Res>;
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$SignInResponseDataCopyWithImpl<$Res>
    implements $SignInResponseDataCopyWith<$Res> {
  _$SignInResponseDataCopyWithImpl(this._value, this._then);

  final SignInResponseData _value;
  // ignore: unused_field
  final $Res Function(SignInResponseData) _then;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$SignInResponseDataCopyWith<$Res>
    implements $SignInResponseDataCopyWith<$Res> {
  factory _$SignInResponseDataCopyWith(
          _SignInResponseData value, $Res Function(_SignInResponseData) then) =
      __$SignInResponseDataCopyWithImpl<$Res>;
  @override
  $Res call({User user});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$SignInResponseDataCopyWithImpl<$Res>
    extends _$SignInResponseDataCopyWithImpl<$Res>
    implements _$SignInResponseDataCopyWith<$Res> {
  __$SignInResponseDataCopyWithImpl(
      _SignInResponseData _value, $Res Function(_SignInResponseData) _then)
      : super(_value, (v) => _then(v as _SignInResponseData));

  @override
  _SignInResponseData get _value => super._value as _SignInResponseData;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_SignInResponseData(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SignInResponseData
    with DiagnosticableTreeMixin
    implements _SignInResponseData {
  const _$_SignInResponseData({required this.user});

  factory _$_SignInResponseData.fromJson(Map<String, dynamic> json) =>
      _$_$_SignInResponseDataFromJson(json);

  @override
  final User user;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInResponseData(user: $user)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignInResponseData'))
      ..add(DiagnosticsProperty('user', user));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignInResponseData &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  _$SignInResponseDataCopyWith<_SignInResponseData> get copyWith =>
      __$SignInResponseDataCopyWithImpl<_SignInResponseData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SignInResponseDataToJson(this);
  }
}

abstract class _SignInResponseData implements SignInResponseData {
  const factory _SignInResponseData({required User user}) =
      _$_SignInResponseData;

  factory _SignInResponseData.fromJson(Map<String, dynamic> json) =
      _$_SignInResponseData.fromJson;

  @override
  User get user => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SignInResponseDataCopyWith<_SignInResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

SignOutResponse _$SignOutResponseFromJson(Map<String, dynamic> json) {
  return _SignOutResponse.fromJson(json);
}

/// @nodoc
class _$SignOutResponseTearOff {
  const _$SignOutResponseTearOff();

  _SignOutResponse call({required int code}) {
    return _SignOutResponse(
      code: code,
    );
  }

  SignOutResponse fromJson(Map<String, Object> json) {
    return SignOutResponse.fromJson(json);
  }
}

/// @nodoc
const $SignOutResponse = _$SignOutResponseTearOff();

/// @nodoc
mixin _$SignOutResponse {
  int get code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignOutResponseCopyWith<SignOutResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignOutResponseCopyWith<$Res> {
  factory $SignOutResponseCopyWith(
          SignOutResponse value, $Res Function(SignOutResponse) then) =
      _$SignOutResponseCopyWithImpl<$Res>;
  $Res call({int code});
}

/// @nodoc
class _$SignOutResponseCopyWithImpl<$Res>
    implements $SignOutResponseCopyWith<$Res> {
  _$SignOutResponseCopyWithImpl(this._value, this._then);

  final SignOutResponse _value;
  // ignore: unused_field
  final $Res Function(SignOutResponse) _then;

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
abstract class _$SignOutResponseCopyWith<$Res>
    implements $SignOutResponseCopyWith<$Res> {
  factory _$SignOutResponseCopyWith(
          _SignOutResponse value, $Res Function(_SignOutResponse) then) =
      __$SignOutResponseCopyWithImpl<$Res>;
  @override
  $Res call({int code});
}

/// @nodoc
class __$SignOutResponseCopyWithImpl<$Res>
    extends _$SignOutResponseCopyWithImpl<$Res>
    implements _$SignOutResponseCopyWith<$Res> {
  __$SignOutResponseCopyWithImpl(
      _SignOutResponse _value, $Res Function(_SignOutResponse) _then)
      : super(_value, (v) => _then(v as _SignOutResponse));

  @override
  _SignOutResponse get _value => super._value as _SignOutResponse;

  @override
  $Res call({
    Object? code = freezed,
  }) {
    return _then(_SignOutResponse(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SignOutResponse
    with DiagnosticableTreeMixin
    implements _SignOutResponse {
  const _$_SignOutResponse({required this.code});

  factory _$_SignOutResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_SignOutResponseFromJson(json);

  @override
  final int code;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignOutResponse(code: $code)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignOutResponse'))
      ..add(DiagnosticsProperty('code', code));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignOutResponse &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(code);

  @JsonKey(ignore: true)
  @override
  _$SignOutResponseCopyWith<_SignOutResponse> get copyWith =>
      __$SignOutResponseCopyWithImpl<_SignOutResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SignOutResponseToJson(this);
  }
}

abstract class _SignOutResponse implements SignOutResponse {
  const factory _SignOutResponse({required int code}) = _$_SignOutResponse;

  factory _SignOutResponse.fromJson(Map<String, dynamic> json) =
      _$_SignOutResponse.fromJson;

  @override
  int get code => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SignOutResponseCopyWith<_SignOutResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

SelfResponse _$SelfResponseFromJson(Map<String, dynamic> json) {
  return _SelfResponse.fromJson(json);
}

/// @nodoc
class _$SelfResponseTearOff {
  const _$SelfResponseTearOff();

  _SelfResponse call({required int code, required SelfResponseData data}) {
    return _SelfResponse(
      code: code,
      data: data,
    );
  }

  SelfResponse fromJson(Map<String, Object> json) {
    return SelfResponse.fromJson(json);
  }
}

/// @nodoc
const $SelfResponse = _$SelfResponseTearOff();

/// @nodoc
mixin _$SelfResponse {
  int get code => throw _privateConstructorUsedError;
  SelfResponseData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SelfResponseCopyWith<SelfResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelfResponseCopyWith<$Res> {
  factory $SelfResponseCopyWith(
          SelfResponse value, $Res Function(SelfResponse) then) =
      _$SelfResponseCopyWithImpl<$Res>;
  $Res call({int code, SelfResponseData data});

  $SelfResponseDataCopyWith<$Res> get data;
}

/// @nodoc
class _$SelfResponseCopyWithImpl<$Res> implements $SelfResponseCopyWith<$Res> {
  _$SelfResponseCopyWithImpl(this._value, this._then);

  final SelfResponse _value;
  // ignore: unused_field
  final $Res Function(SelfResponse) _then;

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
              as SelfResponseData,
    ));
  }

  @override
  $SelfResponseDataCopyWith<$Res> get data {
    return $SelfResponseDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$SelfResponseCopyWith<$Res>
    implements $SelfResponseCopyWith<$Res> {
  factory _$SelfResponseCopyWith(
          _SelfResponse value, $Res Function(_SelfResponse) then) =
      __$SelfResponseCopyWithImpl<$Res>;
  @override
  $Res call({int code, SelfResponseData data});

  @override
  $SelfResponseDataCopyWith<$Res> get data;
}

/// @nodoc
class __$SelfResponseCopyWithImpl<$Res> extends _$SelfResponseCopyWithImpl<$Res>
    implements _$SelfResponseCopyWith<$Res> {
  __$SelfResponseCopyWithImpl(
      _SelfResponse _value, $Res Function(_SelfResponse) _then)
      : super(_value, (v) => _then(v as _SelfResponse));

  @override
  _SelfResponse get _value => super._value as _SelfResponse;

  @override
  $Res call({
    Object? code = freezed,
    Object? data = freezed,
  }) {
    return _then(_SelfResponse(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SelfResponseData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SelfResponse with DiagnosticableTreeMixin implements _SelfResponse {
  const _$_SelfResponse({required this.code, required this.data});

  factory _$_SelfResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_SelfResponseFromJson(json);

  @override
  final int code;
  @override
  final SelfResponseData data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SelfResponse(code: $code, data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SelfResponse'))
      ..add(DiagnosticsProperty('code', code))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SelfResponse &&
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
  _$SelfResponseCopyWith<_SelfResponse> get copyWith =>
      __$SelfResponseCopyWithImpl<_SelfResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SelfResponseToJson(this);
  }
}

abstract class _SelfResponse implements SelfResponse {
  const factory _SelfResponse(
      {required int code, required SelfResponseData data}) = _$_SelfResponse;

  factory _SelfResponse.fromJson(Map<String, dynamic> json) =
      _$_SelfResponse.fromJson;

  @override
  int get code => throw _privateConstructorUsedError;
  @override
  SelfResponseData get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SelfResponseCopyWith<_SelfResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

SelfResponseData _$SelfResponseDataFromJson(Map<String, dynamic> json) {
  return _SelfResponseData.fromJson(json);
}

/// @nodoc
class _$SelfResponseDataTearOff {
  const _$SelfResponseDataTearOff();

  _SelfResponseData call({required User user}) {
    return _SelfResponseData(
      user: user,
    );
  }

  SelfResponseData fromJson(Map<String, Object> json) {
    return SelfResponseData.fromJson(json);
  }
}

/// @nodoc
const $SelfResponseData = _$SelfResponseDataTearOff();

/// @nodoc
mixin _$SelfResponseData {
  User get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SelfResponseDataCopyWith<SelfResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelfResponseDataCopyWith<$Res> {
  factory $SelfResponseDataCopyWith(
          SelfResponseData value, $Res Function(SelfResponseData) then) =
      _$SelfResponseDataCopyWithImpl<$Res>;
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$SelfResponseDataCopyWithImpl<$Res>
    implements $SelfResponseDataCopyWith<$Res> {
  _$SelfResponseDataCopyWithImpl(this._value, this._then);

  final SelfResponseData _value;
  // ignore: unused_field
  final $Res Function(SelfResponseData) _then;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$SelfResponseDataCopyWith<$Res>
    implements $SelfResponseDataCopyWith<$Res> {
  factory _$SelfResponseDataCopyWith(
          _SelfResponseData value, $Res Function(_SelfResponseData) then) =
      __$SelfResponseDataCopyWithImpl<$Res>;
  @override
  $Res call({User user});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$SelfResponseDataCopyWithImpl<$Res>
    extends _$SelfResponseDataCopyWithImpl<$Res>
    implements _$SelfResponseDataCopyWith<$Res> {
  __$SelfResponseDataCopyWithImpl(
      _SelfResponseData _value, $Res Function(_SelfResponseData) _then)
      : super(_value, (v) => _then(v as _SelfResponseData));

  @override
  _SelfResponseData get _value => super._value as _SelfResponseData;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_SelfResponseData(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SelfResponseData
    with DiagnosticableTreeMixin
    implements _SelfResponseData {
  const _$_SelfResponseData({required this.user});

  factory _$_SelfResponseData.fromJson(Map<String, dynamic> json) =>
      _$_$_SelfResponseDataFromJson(json);

  @override
  final User user;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SelfResponseData(user: $user)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SelfResponseData'))
      ..add(DiagnosticsProperty('user', user));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SelfResponseData &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  _$SelfResponseDataCopyWith<_SelfResponseData> get copyWith =>
      __$SelfResponseDataCopyWithImpl<_SelfResponseData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SelfResponseDataToJson(this);
  }
}

abstract class _SelfResponseData implements SelfResponseData {
  const factory _SelfResponseData({required User user}) = _$_SelfResponseData;

  factory _SelfResponseData.fromJson(Map<String, dynamic> json) =
      _$_SelfResponseData.fromJson;

  @override
  User get user => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SelfResponseDataCopyWith<_SelfResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}
