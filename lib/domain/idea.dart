import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'idea.freezed.dart';
part 'idea.g.dart';

@freezed
abstract class Idea with _$Idea {
  const factory Idea({
    required String id,
    @Default('') String title,
    @Default('') String content,
    @Default(-1) int position
  }) = _Idea;

 factory Idea.fromJson(Map<String, dynamic> json) => _$IdeaFromJson(json);
}