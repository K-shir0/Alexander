import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_page_state.freezed.dart';

part 'sign_in_page_state.g.dart';

@freezed
abstract class SignInPageState with _$SignInPageState {
  const factory SignInPageState({
    @Default(false) bool isLoading,
  }) = _SignInPageState;

  factory SignInPageState.fromJson(Map<String, dynamic> json) =>
      _$SignInPageStateFromJson(json);
}
