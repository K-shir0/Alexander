import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

part 'idea.freezed.dart';

part 'idea.g.dart';


@freezed
class Idea with _$Idea {
  const factory Idea({
    required String id,
    @Default('') String title,
  }) = _Idea;

  factory Idea.fromJson(Map<String, dynamic> json) => _$IdeaFromJson(json);
}


@freezed
abstract class IdeaList with _$IdeaList {
  const IdeaList._();

  const factory IdeaList({
    @Default([]) List<Idea> ideas
  }) = _IdeaList;

 factory IdeaList.fromJson(Map<String, dynamic> json) => _$IdeaListFromJson(json);
}