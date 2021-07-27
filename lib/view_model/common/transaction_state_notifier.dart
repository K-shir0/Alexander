import 'package:alexander/domain/operation.dart';
import 'package:alexander/view_model/common/model/transaction_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TransactionStateNotifier extends StateNotifier<TransactionState> {
  TransactionStateNotifier(TransactionState state, this.ref) : super(state);

  ProviderReference ref;

  void operationAdd(Operation operation) {
    // TODO トランザクションのチェック

  }
}