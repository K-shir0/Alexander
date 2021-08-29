// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'transaction_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TransactionState _$TransactionStateFromJson(Map<String, dynamic> json) {
  return _TransactionState.fromJson(json);
}

/// @nodoc
class _$TransactionStateTearOff {
  const _$TransactionStateTearOff();

  _TransactionState call(
      {List<Transaction> transactions = const [], bool isSaving = false}) {
    return _TransactionState(
      transactions: transactions,
      isSaving: isSaving,
    );
  }

  TransactionState fromJson(Map<String, Object> json) {
    return TransactionState.fromJson(json);
  }
}

/// @nodoc
const $TransactionState = _$TransactionStateTearOff();

/// @nodoc
mixin _$TransactionState {
  List<Transaction> get transactions => throw _privateConstructorUsedError;
  bool get isSaving => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionStateCopyWith<TransactionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionStateCopyWith<$Res> {
  factory $TransactionStateCopyWith(
          TransactionState value, $Res Function(TransactionState) then) =
      _$TransactionStateCopyWithImpl<$Res>;
  $Res call({List<Transaction> transactions, bool isSaving});
}

/// @nodoc
class _$TransactionStateCopyWithImpl<$Res>
    implements $TransactionStateCopyWith<$Res> {
  _$TransactionStateCopyWithImpl(this._value, this._then);

  final TransactionState _value;
  // ignore: unused_field
  final $Res Function(TransactionState) _then;

  @override
  $Res call({
    Object? transactions = freezed,
    Object? isSaving = freezed,
  }) {
    return _then(_value.copyWith(
      transactions: transactions == freezed
          ? _value.transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<Transaction>,
      isSaving: isSaving == freezed
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$TransactionStateCopyWith<$Res>
    implements $TransactionStateCopyWith<$Res> {
  factory _$TransactionStateCopyWith(
          _TransactionState value, $Res Function(_TransactionState) then) =
      __$TransactionStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Transaction> transactions, bool isSaving});
}

/// @nodoc
class __$TransactionStateCopyWithImpl<$Res>
    extends _$TransactionStateCopyWithImpl<$Res>
    implements _$TransactionStateCopyWith<$Res> {
  __$TransactionStateCopyWithImpl(
      _TransactionState _value, $Res Function(_TransactionState) _then)
      : super(_value, (v) => _then(v as _TransactionState));

  @override
  _TransactionState get _value => super._value as _TransactionState;

  @override
  $Res call({
    Object? transactions = freezed,
    Object? isSaving = freezed,
  }) {
    return _then(_TransactionState(
      transactions: transactions == freezed
          ? _value.transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<Transaction>,
      isSaving: isSaving == freezed
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TransactionState
    with DiagnosticableTreeMixin
    implements _TransactionState {
  const _$_TransactionState(
      {this.transactions = const [], this.isSaving = false});

  factory _$_TransactionState.fromJson(Map<String, dynamic> json) =>
      _$_$_TransactionStateFromJson(json);

  @JsonKey(defaultValue: const [])
  @override
  final List<Transaction> transactions;
  @JsonKey(defaultValue: false)
  @override
  final bool isSaving;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TransactionState(transactions: $transactions, isSaving: $isSaving)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TransactionState'))
      ..add(DiagnosticsProperty('transactions', transactions))
      ..add(DiagnosticsProperty('isSaving', isSaving));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TransactionState &&
            (identical(other.transactions, transactions) ||
                const DeepCollectionEquality()
                    .equals(other.transactions, transactions)) &&
            (identical(other.isSaving, isSaving) ||
                const DeepCollectionEquality()
                    .equals(other.isSaving, isSaving)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(transactions) ^
      const DeepCollectionEquality().hash(isSaving);

  @JsonKey(ignore: true)
  @override
  _$TransactionStateCopyWith<_TransactionState> get copyWith =>
      __$TransactionStateCopyWithImpl<_TransactionState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TransactionStateToJson(this);
  }
}

abstract class _TransactionState implements TransactionState {
  const factory _TransactionState(
      {List<Transaction> transactions, bool isSaving}) = _$_TransactionState;

  factory _TransactionState.fromJson(Map<String, dynamic> json) =
      _$_TransactionState.fromJson;

  @override
  List<Transaction> get transactions => throw _privateConstructorUsedError;
  @override
  bool get isSaving => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TransactionStateCopyWith<_TransactionState> get copyWith =>
      throw _privateConstructorUsedError;
}
