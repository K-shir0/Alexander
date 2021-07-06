// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AuthState _$_$_AuthStateFromJson(Map<String, dynamic> json) {
  return _$_AuthState(
    isChecked: json['is_checked'] as bool? ?? false,
    authUser: json['auth_user'] == null
        ? null
        : User.fromJson(json['auth_user'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_AuthStateToJson(_$_AuthState instance) =>
    <String, dynamic>{
      'is_checked': instance.isChecked,
      'auth_user': instance.authUser,
    };
