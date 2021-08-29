import 'package:alexander/domain/transaction.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_state.freezed.dart';

part 'transaction_state.g.dart';

@freezed
class TransactionState with _$TransactionState {
  const factory TransactionState({
    @Default([]) List<Transaction> transactions,
    @Default(false) bool isSaving,
  }) = _TransactionState;

  factory TransactionState.fromJson(Map<String, dynamic> json) =>
      _$TransactionStateFromJson(json);
}
