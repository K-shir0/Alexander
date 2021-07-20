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

  static Operation next(String ideaId, String? currentIdeaId) {
    return Operation(
        id: const Uuid().v4(),
        command: 'next',
        args: [ideaId, if (currentIdeaId != null) currentIdeaId]);
  }

  factory Operation.fromJson(Map<String, dynamic> json) =>
      _$OperationFromJson(json);
}
