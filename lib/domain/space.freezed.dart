// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'space.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SpaceMetadata _$SpaceMetadataFromJson(Map<String, dynamic> json) {
  return _SpaceMetadata.fromJson(json);
}

/// @nodoc
class _$SpaceMetadataTearOff {
  const _$SpaceMetadataTearOff();

  _SpaceMetadata call({required String id, String title = ''}) {
    return _SpaceMetadata(
      id: id,
      title: title,
    );
  }

  SpaceMetadata fromJson(Map<String, Object> json) {
    return SpaceMetadata.fromJson(json);
  }
}

/// @nodoc
const $SpaceMetadata = _$SpaceMetadataTearOff();

/// @nodoc
mixin _$SpaceMetadata {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpaceMetadataCopyWith<SpaceMetadata> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpaceMetadataCopyWith<$Res> {
  factory $SpaceMetadataCopyWith(
          SpaceMetadata value, $Res Function(SpaceMetadata) then) =
      _$SpaceMetadataCopyWithImpl<$Res>;
  $Res call({String id, String title});
}

/// @nodoc
class _$SpaceMetadataCopyWithImpl<$Res>
    implements $SpaceMetadataCopyWith<$Res> {
  _$SpaceMetadataCopyWithImpl(this._value, this._then);

  final SpaceMetadata _value;
  // ignore: unused_field
  final $Res Function(SpaceMetadata) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
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
    ));
  }
}

/// @nodoc
abstract class _$SpaceMetadataCopyWith<$Res>
    implements $SpaceMetadataCopyWith<$Res> {
  factory _$SpaceMetadataCopyWith(
          _SpaceMetadata value, $Res Function(_SpaceMetadata) then) =
      __$SpaceMetadataCopyWithImpl<$Res>;
  @override
  $Res call({String id, String title});
}

/// @nodoc
class __$SpaceMetadataCopyWithImpl<$Res>
    extends _$SpaceMetadataCopyWithImpl<$Res>
    implements _$SpaceMetadataCopyWith<$Res> {
  __$SpaceMetadataCopyWithImpl(
      _SpaceMetadata _value, $Res Function(_SpaceMetadata) _then)
      : super(_value, (v) => _then(v as _SpaceMetadata));

  @override
  _SpaceMetadata get _value => super._value as _SpaceMetadata;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
  }) {
    return _then(_SpaceMetadata(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SpaceMetadata with DiagnosticableTreeMixin implements _SpaceMetadata {
  const _$_SpaceMetadata({required this.id, this.title = ''});

  factory _$_SpaceMetadata.fromJson(Map<String, dynamic> json) =>
      _$_$_SpaceMetadataFromJson(json);

  @override
  final String id;
  @JsonKey(defaultValue: '')
  @override
  final String title;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SpaceMetadata(id: $id, title: $title)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SpaceMetadata'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SpaceMetadata &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title);

  @JsonKey(ignore: true)
  @override
  _$SpaceMetadataCopyWith<_SpaceMetadata> get copyWith =>
      __$SpaceMetadataCopyWithImpl<_SpaceMetadata>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SpaceMetadataToJson(this);
  }
}

abstract class _SpaceMetadata implements SpaceMetadata {
  const factory _SpaceMetadata({required String id, String title}) =
      _$_SpaceMetadata;

  factory _SpaceMetadata.fromJson(Map<String, dynamic> json) =
      _$_SpaceMetadata.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SpaceMetadataCopyWith<_SpaceMetadata> get copyWith =>
      throw _privateConstructorUsedError;
}
