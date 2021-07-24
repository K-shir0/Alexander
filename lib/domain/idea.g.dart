// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'idea.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Idea _$_$_IdeaFromJson(Map<String, dynamic> json) {
  return _$_Idea(
    id: json['id'] as String,
    title: json['title'] as String? ?? '',
    position: json['position'] as int? ?? -1,
  );
}

Map<String, dynamic> _$_$_IdeaToJson(_$_Idea instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'position': instance.position,
    };
