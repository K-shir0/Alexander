// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'home_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HomePageState _$HomePageStateFromJson(Map<String, dynamic> json) {
  return _HomePageState.fromJson(json);
}

/// @nodoc
class _$HomePageStateTearOff {
  const _$HomePageStateTearOff();

  _HomePageState call(
      {List<SpaceMetadata> spaces = const [],
      List<Idea> ideas = const [],
      List<Transaction> transactions = const []}) {
    return _HomePageState(
      spaces: spaces,
      ideas: ideas,
      transactions: transactions,
    );
  }

  HomePageState fromJson(Map<String, Object> json) {
    return HomePageState.fromJson(json);
  }
}

/// @nodoc
const $HomePageState = _$HomePageStateTearOff();

/// @nodoc
mixin _$HomePageState {
  List<SpaceMetadata> get spaces => throw _privateConstructorUsedError;
  List<Idea> get ideas => throw _privateConstructorUsedError;
  List<Transaction> get transactions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomePageStateCopyWith<HomePageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomePageStateCopyWith<$Res> {
  factory $HomePageStateCopyWith(
          HomePageState value, $Res Function(HomePageState) then) =
      _$HomePageStateCopyWithImpl<$Res>;
  $Res call(
      {List<SpaceMetadata> spaces,
      List<Idea> ideas,
      List<Transaction> transactions});
}

/// @nodoc
class _$HomePageStateCopyWithImpl<$Res>
    implements $HomePageStateCopyWith<$Res> {
  _$HomePageStateCopyWithImpl(this._value, this._then);

  final HomePageState _value;
  // ignore: unused_field
  final $Res Function(HomePageState) _then;

  @override
  $Res call({
    Object? spaces = freezed,
    Object? ideas = freezed,
    Object? transactions = freezed,
  }) {
    return _then(_value.copyWith(
      spaces: spaces == freezed
          ? _value.spaces
          : spaces // ignore: cast_nullable_to_non_nullable
              as List<SpaceMetadata>,
      ideas: ideas == freezed
          ? _value.ideas
          : ideas // ignore: cast_nullable_to_non_nullable
              as List<Idea>,
      transactions: transactions == freezed
          ? _value.transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<Transaction>,
    ));
  }
}

/// @nodoc
abstract class _$HomePageStateCopyWith<$Res>
    implements $HomePageStateCopyWith<$Res> {
  factory _$HomePageStateCopyWith(
          _HomePageState value, $Res Function(_HomePageState) then) =
      __$HomePageStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<SpaceMetadata> spaces,
      List<Idea> ideas,
      List<Transaction> transactions});
}

/// @nodoc
class __$HomePageStateCopyWithImpl<$Res>
    extends _$HomePageStateCopyWithImpl<$Res>
    implements _$HomePageStateCopyWith<$Res> {
  __$HomePageStateCopyWithImpl(
      _HomePageState _value, $Res Function(_HomePageState) _then)
      : super(_value, (v) => _then(v as _HomePageState));

  @override
  _HomePageState get _value => super._value as _HomePageState;

  @override
  $Res call({
    Object? spaces = freezed,
    Object? ideas = freezed,
    Object? transactions = freezed,
  }) {
    return _then(_HomePageState(
      spaces: spaces == freezed
          ? _value.spaces
          : spaces // ignore: cast_nullable_to_non_nullable
              as List<SpaceMetadata>,
      ideas: ideas == freezed
          ? _value.ideas
          : ideas // ignore: cast_nullable_to_non_nullable
              as List<Idea>,
      transactions: transactions == freezed
          ? _value.transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<Transaction>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HomePageState with DiagnosticableTreeMixin implements _HomePageState {
  const _$_HomePageState(
      {this.spaces = const [],
      this.ideas = const [],
      this.transactions = const []});

  factory _$_HomePageState.fromJson(Map<String, dynamic> json) =>
      _$_$_HomePageStateFromJson(json);

  @JsonKey(defaultValue: const [])
  @override
  final List<SpaceMetadata> spaces;
  @JsonKey(defaultValue: const [])
  @override
  final List<Idea> ideas;
  @JsonKey(defaultValue: const [])
  @override
  final List<Transaction> transactions;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomePageState(spaces: $spaces, ideas: $ideas, transactions: $transactions)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomePageState'))
      ..add(DiagnosticsProperty('spaces', spaces))
      ..add(DiagnosticsProperty('ideas', ideas))
      ..add(DiagnosticsProperty('transactions', transactions));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HomePageState &&
            (identical(other.spaces, spaces) ||
                const DeepCollectionEquality().equals(other.spaces, spaces)) &&
            (identical(other.ideas, ideas) ||
                const DeepCollectionEquality().equals(other.ideas, ideas)) &&
            (identical(other.transactions, transactions) ||
                const DeepCollectionEquality()
                    .equals(other.transactions, transactions)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(spaces) ^
      const DeepCollectionEquality().hash(ideas) ^
      const DeepCollectionEquality().hash(transactions);

  @JsonKey(ignore: true)
  @override
  _$HomePageStateCopyWith<_HomePageState> get copyWith =>
      __$HomePageStateCopyWithImpl<_HomePageState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_HomePageStateToJson(this);
  }
}

abstract class _HomePageState implements HomePageState {
  const factory _HomePageState(
      {List<SpaceMetadata> spaces,
      List<Idea> ideas,
      List<Transaction> transactions}) = _$_HomePageState;

  factory _HomePageState.fromJson(Map<String, dynamic> json) =
      _$_HomePageState.fromJson;

  @override
  List<SpaceMetadata> get spaces => throw _privateConstructorUsedError;
  @override
  List<Idea> get ideas => throw _privateConstructorUsedError;
  @override
  List<Transaction> get transactions => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$HomePageStateCopyWith<_HomePageState> get copyWith =>
      throw _privateConstructorUsedError;
}
