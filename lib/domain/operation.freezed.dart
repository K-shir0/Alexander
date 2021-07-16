// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'operation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Operation _$OperationFromJson(Map<String, dynamic> json) {
  return _Operation.fromJson(json);
}

/// @nodoc
class _$OperationTearOff {
  const _$OperationTearOff();

  _Operation call(
      {required String id, String content = '', required String command}) {
    return _Operation(
      id: id,
      content: content,
      command: command,
    );
  }

  Operation fromJson(Map<String, Object> json) {
    return Operation.fromJson(json);
  }
}

/// @nodoc
const $Operation = _$OperationTearOff();

/// @nodoc
mixin _$Operation {
  String get id => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String get command => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OperationCopyWith<Operation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OperationCopyWith<$Res> {
  factory $OperationCopyWith(Operation value, $Res Function(Operation) then) =
      _$OperationCopyWithImpl<$Res>;
  $Res call({String id, String content, String command});
}

/// @nodoc
class _$OperationCopyWithImpl<$Res> implements $OperationCopyWith<$Res> {
  _$OperationCopyWithImpl(this._value, this._then);

  final Operation _value;
  // ignore: unused_field
  final $Res Function(Operation) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? content = freezed,
    Object? command = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      command: command == freezed
          ? _value.command
          : command // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$OperationCopyWith<$Res> implements $OperationCopyWith<$Res> {
  factory _$OperationCopyWith(
          _Operation value, $Res Function(_Operation) then) =
      __$OperationCopyWithImpl<$Res>;
  @override
  $Res call({String id, String content, String command});
}

/// @nodoc
class __$OperationCopyWithImpl<$Res> extends _$OperationCopyWithImpl<$Res>
    implements _$OperationCopyWith<$Res> {
  __$OperationCopyWithImpl(_Operation _value, $Res Function(_Operation) _then)
      : super(_value, (v) => _then(v as _Operation));

  @override
  _Operation get _value => super._value as _Operation;

  @override
  $Res call({
    Object? id = freezed,
    Object? content = freezed,
    Object? command = freezed,
  }) {
    return _then(_Operation(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      command: command == freezed
          ? _value.command
          : command // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Operation with DiagnosticableTreeMixin implements _Operation {
  const _$_Operation(
      {required this.id, this.content = '', required this.command});

  factory _$_Operation.fromJson(Map<String, dynamic> json) =>
      _$_$_OperationFromJson(json);

  @override
  final String id;
  @JsonKey(defaultValue: '')
  @override
  final String content;
  @override
  final String command;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Operation(id: $id, content: $content, command: $command)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Operation'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('content', content))
      ..add(DiagnosticsProperty('command', command));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Operation &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.content, content) ||
                const DeepCollectionEquality()
                    .equals(other.content, content)) &&
            (identical(other.command, command) ||
                const DeepCollectionEquality().equals(other.command, command)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(content) ^
      const DeepCollectionEquality().hash(command);

  @JsonKey(ignore: true)
  @override
  _$OperationCopyWith<_Operation> get copyWith =>
      __$OperationCopyWithImpl<_Operation>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_OperationToJson(this);
  }
}

abstract class _Operation implements Operation {
  const factory _Operation(
      {required String id,
      String content,
      required String command}) = _$_Operation;

  factory _Operation.fromJson(Map<String, dynamic> json) =
      _$_Operation.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get content => throw _privateConstructorUsedError;
  @override
  String get command => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$OperationCopyWith<_Operation> get copyWith =>
      throw _privateConstructorUsedError;
}
