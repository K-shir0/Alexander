// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TransactionState _$_$_TransactionStateFromJson(Map<String, dynamic> json) {
  return _$_TransactionState(
    transactions: (json['transactions'] as List<dynamic>?)
            ?.map((e) => Transaction.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
  );
}

Map<String, dynamic> _$_$_TransactionStateToJson(
        _$_TransactionState instance) =>
    <String, dynamic>{
      'transactions': instance.transactions,
    };
