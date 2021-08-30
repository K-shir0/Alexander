import 'package:alexander/domain/idea.dart';
import 'package:alexander/domain/space.dart';
import 'package:alexander/domain/transaction.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_page_state.freezed.dart';
part 'home_page_state.g.dart';

@freezed
abstract class HomePageState with _$HomePageState {
  const factory HomePageState({
    @Default([]) List<SpaceMetadata> spaces,
    @Default([]) List<Idea> ideas,
    @Default([]) List<Transaction> transactions,
    @Default(false) bool isSaving,
    @Default(false) bool isLoading,
  }) = _HomePageState;

 factory HomePageState.fromJson(Map<String, dynamic> json) => _$HomePageStateFromJson(json);
}