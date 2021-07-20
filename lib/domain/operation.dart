import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'operation.freezed.dart';
part 'operation.g.dart';

@freezed
class Operation with _$Operation {
  const factory Operation({
    required String id,
    required String command,
    @Default([]) List<String> args,
  }) = _Operation;

 factory Operation.fromJson(Map<String, dynamic> json) => _$OperationFromJson(json);
}