import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

part 'operation.freezed.dart';

part 'operation.g.dart';

@freezed
class Operation with _$Operation {
  const factory Operation({
    required String id,
    required String command,
    @Default([]) List<String> args,
  }) = _Operation;

  // ignore: prefer_constructors_over_static_methods
  static Operation next(String ideaId, String? currentIdeaId) {
    return Operation(
        id: const Uuid().v4(),
        command: 'next',
        args: [ideaId, if (currentIdeaId != null) currentIdeaId]);
  }

  // ignore: prefer_constructors_over_static_methods
  static Operation editIdea(String ideaId, String contents) {
    return Operation(
        id: const Uuid().v4(),
        command: 'editIdeaTitle',
        args: [ideaId, contents]);
  }

  // ignore: prefer_constructors_over_static_methods
  static Operation editIdeaContent(String ideaId, String contents) {
    return Operation(
        id: const Uuid().v4(),
        command: 'editIdeaContent',
        args: [ideaId, contents]);
  }

  factory Operation.fromJson(Map<String, dynamic> json) =>
      _$OperationFromJson(json);
}
