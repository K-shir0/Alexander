// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'operation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Operation _$_$_OperationFromJson(Map<String, dynamic> json) {
  return _$_Operation(
    id: json['id'] as String,
    command: json['command'] as String,
    args: (json['args'] as List<dynamic>?)?.map((e) => e as String).toList() ??
        [],
  );
}

Map<String, dynamic> _$_$_OperationToJson(_$_Operation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'command': instance.command,
      'args': instance.args,
    };
