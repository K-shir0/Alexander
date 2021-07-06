// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'sign_in_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SignInPageState _$SignInPageStateFromJson(Map<String, dynamic> json) {
  return _SignInPageState.fromJson(json);
}

/// @nodoc
class _$SignInPageStateTearOff {
  const _$SignInPageStateTearOff();

  _SignInPageState call({bool isLoading = false}) {
    return _SignInPageState(
      isLoading: isLoading,
    );
  }

  SignInPageState fromJson(Map<String, Object> json) {
    return SignInPageState.fromJson(json);
  }
}

/// @nodoc
const $SignInPageState = _$SignInPageStateTearOff();

/// @nodoc
mixin _$SignInPageState {
  bool get isLoading => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignInPageStateCopyWith<SignInPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInPageStateCopyWith<$Res> {
  factory $SignInPageStateCopyWith(
          SignInPageState value, $Res Function(SignInPageState) then) =
      _$SignInPageStateCopyWithImpl<$Res>;
  $Res call({bool isLoading});
}

/// @nodoc
class _$SignInPageStateCopyWithImpl<$Res>
    implements $SignInPageStateCopyWith<$Res> {
  _$SignInPageStateCopyWithImpl(this._value, this._then);

  final SignInPageState _value;
  // ignore: unused_field
  final $Res Function(SignInPageState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$SignInPageStateCopyWith<$Res>
    implements $SignInPageStateCopyWith<$Res> {
  factory _$SignInPageStateCopyWith(
          _SignInPageState value, $Res Function(_SignInPageState) then) =
      __$SignInPageStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isLoading});
}

/// @nodoc
class __$SignInPageStateCopyWithImpl<$Res>
    extends _$SignInPageStateCopyWithImpl<$Res>
    implements _$SignInPageStateCopyWith<$Res> {
  __$SignInPageStateCopyWithImpl(
      _SignInPageState _value, $Res Function(_SignInPageState) _then)
      : super(_value, (v) => _then(v as _SignInPageState));

  @override
  _SignInPageState get _value => super._value as _SignInPageState;

  @override
  $Res call({
    Object? isLoading = freezed,
  }) {
    return _then(_SignInPageState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SignInPageState
    with DiagnosticableTreeMixin
    implements _SignInPageState {
  const _$_SignInPageState({this.isLoading = false});

  factory _$_SignInPageState.fromJson(Map<String, dynamic> json) =>
      _$_$_SignInPageStateFromJson(json);

  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInPageState(isLoading: $isLoading)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignInPageState'))
      ..add(DiagnosticsProperty('isLoading', isLoading));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignInPageState &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(isLoading);

  @JsonKey(ignore: true)
  @override
  _$SignInPageStateCopyWith<_SignInPageState> get copyWith =>
      __$SignInPageStateCopyWithImpl<_SignInPageState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SignInPageStateToJson(this);
  }
}

abstract class _SignInPageState implements SignInPageState {
  const factory _SignInPageState({bool isLoading}) = _$_SignInPageState;

  factory _SignInPageState.fromJson(Map<String, dynamic> json) =
      _$_SignInPageState.fromJson;

  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SignInPageStateCopyWith<_SignInPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
