// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'operation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Operation _$_$_OperationFromJson(Map<String, dynamic> json) {
  return _$_Operation(
    id: json['id'] as String,
    content: json['content'] as String? ?? '',
    command: json['command'] as String,
  );
}

Map<String, dynamic> _$_$_OperationToJson(_$_Operation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'content': instance.content,
      'command': instance.command,
    };
