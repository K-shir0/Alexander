// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'transaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Transaction _$TransactionFromJson(Map<String, dynamic> json) {
  return _Transaction.fromJson(json);
}

/// @nodoc
class _$TransactionTearOff {
  const _$TransactionTearOff();

  _Transaction call(
      {required String id,
      required String spaceId,
      List<Operation> operations = const []}) {
    return _Transaction(
      id: id,
      spaceId: spaceId,
      operations: operations,
    );
  }

  Transaction fromJson(Map<String, Object> json) {
    return Transaction.fromJson(json);
  }
}

/// @nodoc
const $Transaction = _$TransactionTearOff();

/// @nodoc
mixin _$Transaction {
  String get id => throw _privateConstructorUsedError;
  String get spaceId => throw _privateConstructorUsedError;
  List<Operation> get operations => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionCopyWith<Transaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionCopyWith<$Res> {
  factory $TransactionCopyWith(
          Transaction value, $Res Function(Transaction) then) =
      _$TransactionCopyWithImpl<$Res>;
  $Res call({String id, String spaceId, List<Operation> operations});
}

/// @nodoc
class _$TransactionCopyWithImpl<$Res> implements $TransactionCopyWith<$Res> {
  _$TransactionCopyWithImpl(this._value, this._then);

  final Transaction _value;
  // ignore: unused_field
  final $Res Function(Transaction) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? spaceId = freezed,
    Object? operations = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      spaceId: spaceId == freezed
          ? _value.spaceId
          : spaceId // ignore: cast_nullable_to_non_nullable
              as String,
      operations: operations == freezed
          ? _value.operations
          : operations // ignore: cast_nullable_to_non_nullable
              as List<Operation>,
    ));
  }
}

/// @nodoc
abstract class _$TransactionCopyWith<$Res>
    implements $TransactionCopyWith<$Res> {
  factory _$TransactionCopyWith(
          _Transaction value, $Res Function(_Transaction) then) =
      __$TransactionCopyWithImpl<$Res>;
  @override
  $Res call({String id, String spaceId, List<Operation> operations});
}

/// @nodoc
class __$TransactionCopyWithImpl<$Res> extends _$TransactionCopyWithImpl<$Res>
    implements _$TransactionCopyWith<$Res> {
  __$TransactionCopyWithImpl(
      _Transaction _value, $Res Function(_Transaction) _then)
      : super(_value, (v) => _then(v as _Transaction));

  @override
  _Transaction get _value => super._value as _Transaction;

  @override
  $Res call({
    Object? id = freezed,
    Object? spaceId = freezed,
    Object? operations = freezed,
  }) {
    return _then(_Transaction(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      spaceId: spaceId == freezed
          ? _value.spaceId
          : spaceId // ignore: cast_nullable_to_non_nullable
              as String,
      operations: operations == freezed
          ? _value.operations
          : operations // ignore: cast_nullable_to_non_nullable
              as List<Operation>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Transaction with DiagnosticableTreeMixin implements _Transaction {
  const _$_Transaction(
      {required this.id, required this.spaceId, this.operations = const []});

  factory _$_Transaction.fromJson(Map<String, dynamic> json) =>
      _$_$_TransactionFromJson(json);

  @override
  final String id;
  @override
  final String spaceId;
  @JsonKey(defaultValue: const [])
  @override
  final List<Operation> operations;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Transaction(id: $id, spaceId: $spaceId, operations: $operations)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Transaction'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('spaceId', spaceId))
      ..add(DiagnosticsProperty('operations', operations));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Transaction &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.spaceId, spaceId) ||
                const DeepCollectionEquality()
                    .equals(other.spaceId, spaceId)) &&
            (identical(other.operations, operations) ||
                const DeepCollectionEquality()
                    .equals(other.operations, operations)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(spaceId) ^
      const DeepCollectionEquality().hash(operations);

  @JsonKey(ignore: true)
  @override
  _$TransactionCopyWith<_Transaction> get copyWith =>
      __$TransactionCopyWithImpl<_Transaction>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TransactionToJson(this);
  }
}

abstract class _Transaction implements Transaction {
  const factory _Transaction(
      {required String id,
      required String spaceId,
      List<Operation> operations}) = _$_Transaction;

  factory _Transaction.fromJson(Map<String, dynamic> json) =
      _$_Transaction.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get spaceId => throw _privateConstructorUsedError;
  @override
  List<Operation> get operations => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TransactionCopyWith<_Transaction> get copyWith =>
      throw _privateConstructorUsedError;
}
