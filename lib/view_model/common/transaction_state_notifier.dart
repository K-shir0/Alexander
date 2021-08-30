import 'package:alexander/domain/operation.dart';
import 'package:alexander/domain/transaction.dart';
import 'package:alexander/service/model/space.dart';
import 'package:alexander/service/space.dart';
import 'package:alexander/view_model/common/model/transaction_state.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uuid/uuid.dart';
import 'package:collection/collection.dart';

final transactionStateProvider =
    StateNotifierProvider<TransactionStateNotifier, TransactionState>(
  (ref) => TransactionStateNotifier(const TransactionState(), ref),
);

class TransactionStateNotifier extends StateNotifier<TransactionState> {
  TransactionStateNotifier(TransactionState state, this.ref) : super(state);

  ProviderReference ref;

  void operationAdd(Operation operation, String currentSpaceId) {
    Transaction transaction;
    int? index;

    // TODO トランザクションのチェック
    if (state.transactions
            .firstWhereOrNull((element) => element.spaceId == currentSpaceId) !=
        null) {
      transaction = state.transactions.firstWhere(
        (element) => element.spaceId == currentSpaceId,
      );

      index = state.transactions.indexWhere(
        (element) => element.spaceId == currentSpaceId,
      );
    } else {
      transaction = Transaction(id: const Uuid().v4(), spaceId: currentSpaceId);
    }

    // Operation の追加
    transaction = transaction.copyWith(operations: [
      ...transaction.operations,
      operation,
    ]);

    // Transaction の更新 or 追加
    // indexがnullでないなら更新
    if (index != null) {
      final transactions = state.copyWith().transactions;
      transactions[index] = transaction;

      state = state.copyWith(transactions: transactions);
    } else {
      state =
          state.copyWith(transactions: [...state.transactions, transaction]);
    }

    saveTransactions();
  }

  void saveTransactions() {
    if (state.isSaving || state.transactions.isEmpty) {
      return;
    }

    state = state.copyWith(isSaving: true);
    // TODO エラーの処理
    ref
        .read(spaceProvider)
        .savePage(
          SavePageRequest(transactions: state.transactions),
        )
        .whenComplete(
      () {
        Future.delayed(const Duration(seconds: 2)).then((_) {
          state = state.copyWith(isSaving: false);
          saveTransactions();
        });
      },
    );

    state = state.copyWith(transactions: []);
  }
}
