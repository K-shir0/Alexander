import 'package:alexander/domain/user.dart';
import 'package:alexander/service/model/authentication.dart';
import 'package:alexander/view_model/common/auth_state_notifier.dart';
import 'package:alexander/view_model/model/sign_in_page_state.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:state_notifier/state_notifier.dart';

class SignInPageStateNotifier extends StateNotifier<SignInPageState>
    with LocatorMixin {
  SignInPageStateNotifier(SignInPageState state, this.ref) : super(state);

  final ProviderReference ref;

  final form = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  /// ログイン中のユーザーを取得
  User? get authUser => ref.read(authStateProvider).authUser;

  Function()? onTapSignInButton() {
    if (state.isLoading) {
      return null;
    }

    return () {
      state.copyWith(isLoading: true);

      // フォームの保存処理
      form.currentState?.save();

      // ログイン処理
      ref
          .read(authStateProvider.notifier)
          .signIn(SignInRequest(
            email: emailController.text,
            password: passwordController.text,
          ))
          .then((value) => value.when(success: (_) {}, failure: (_) {}))
          .whenComplete(() => state.copyWith(isLoading: false));
    };
  }

  Function()? onTapSignOutButton() {
    if (state.isLoading) {
      return null;
    }

    return () {
      state.copyWith(isLoading: true);

      // ログイン処理
      ref
          .read(authStateProvider.notifier)
          .signOut()
          .then((value) => value.when(success: (_) {}, failure: (_) {}))
          .whenComplete(() => state.copyWith(isLoading: false));
    };
  }
}

final signInPageProvider =
StateNotifierProvider.autoDispose<SignInPageStateNotifier, SignInPageState>(
      (refs) => SignInPageStateNotifier(const SignInPageState(), refs),
);