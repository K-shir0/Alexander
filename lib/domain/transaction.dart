import 'package:alexander/domain/operation.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'transaction.freezed.dart';
part 'transaction.g.dart';

@freezed
class Transaction with _$Transaction {
  const factory Transaction({
    required int id,
    required String spaceId,
    @Default([]) List<Operation> operations,
  }) = _Transaction;

 factory Transaction.fromJson(Map<String, dynamic> json) => _$TransactionFromJson(json);
}