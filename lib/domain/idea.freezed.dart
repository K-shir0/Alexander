// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'idea.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Idea _$IdeaFromJson(Map<String, dynamic> json) {
  return _Idea.fromJson(json);
}

/// @nodoc
class _$IdeaTearOff {
  const _$IdeaTearOff();

  _Idea call({required String id, String title = '', int position = -1}) {
    return _Idea(
      id: id,
      title: title,
      position: position,
    );
  }

  Idea fromJson(Map<String, Object> json) {
    return Idea.fromJson(json);
  }
}

/// @nodoc
const $Idea = _$IdeaTearOff();

/// @nodoc
mixin _$Idea {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  int get position => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IdeaCopyWith<Idea> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IdeaCopyWith<$Res> {
  factory $IdeaCopyWith(Idea value, $Res Function(Idea) then) =
      _$IdeaCopyWithImpl<$Res>;
  $Res call({String id, String title, int position});
}

/// @nodoc
class _$IdeaCopyWithImpl<$Res> implements $IdeaCopyWith<$Res> {
  _$IdeaCopyWithImpl(this._value, this._then);

  final Idea _value;
  // ignore: unused_field
  final $Res Function(Idea) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? position = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$IdeaCopyWith<$Res> implements $IdeaCopyWith<$Res> {
  factory _$IdeaCopyWith(_Idea value, $Res Function(_Idea) then) =
      __$IdeaCopyWithImpl<$Res>;
  @override
  $Res call({String id, String title, int position});
}

/// @nodoc
class __$IdeaCopyWithImpl<$Res> extends _$IdeaCopyWithImpl<$Res>
    implements _$IdeaCopyWith<$Res> {
  __$IdeaCopyWithImpl(_Idea _value, $Res Function(_Idea) _then)
      : super(_value, (v) => _then(v as _Idea));

  @override
  _Idea get _value => super._value as _Idea;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? position = freezed,
  }) {
    return _then(_Idea(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Idea with DiagnosticableTreeMixin implements _Idea {
  const _$_Idea({required this.id, this.title = '', this.position = -1});

  factory _$_Idea.fromJson(Map<String, dynamic> json) =>
      _$_$_IdeaFromJson(json);

  @override
  final String id;
  @JsonKey(defaultValue: '')
  @override
  final String title;
  @JsonKey(defaultValue: -1)
  @override
  final int position;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Idea(id: $id, title: $title, position: $position)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Idea'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('position', position));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Idea &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.position, position) ||
                const DeepCollectionEquality()
                    .equals(other.position, position)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(position);

  @JsonKey(ignore: true)
  @override
  _$IdeaCopyWith<_Idea> get copyWith =>
      __$IdeaCopyWithImpl<_Idea>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_IdeaToJson(this);
  }
}

abstract class _Idea implements Idea {
  const factory _Idea({required String id, String title, int position}) =
      _$_Idea;

  factory _Idea.fromJson(Map<String, dynamic> json) = _$_Idea.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  int get position => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$IdeaCopyWith<_Idea> get copyWith => throw _privateConstructorUsedError;
}
