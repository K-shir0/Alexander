import 'package:alexander/service/auth.dart';
import 'package:alexander/service/model/authentication.dart';
import 'package:alexander/view_model/model/sign_in_page_state.dart';
import 'package:alexander/view_model/sign_in_page_state_notifier.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final signInPageProvider =
    StateNotifierProvider.autoDispose<SignInPageStateNotifier, SignInPageState>(
  (refs) => SignInPageStateNotifier(const SignInPageState(), refs),
);

class AuthSamplePage extends HookWidget {
  // final _form = GlobalKey<FormState>();
  // final _emailController = TextEditingController();
  // final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final provider = useProvider(signInPageProvider);
    final notifier = useProvider(signInPageProvider.notifier);

    // // ログインボタンの処理
    // void onTapSignUpButton() {
    //   // フォームの保存処理
    //   _form.currentState?.save();
    //
    //   final email = _emailController.text;
    //   final password = _passwordController.text;
    //
    //   // ログイン処理
    //   provider
    //       .signIn(SignInRequest(email: email, password: password))
    //       .then((value) => value.when(success: (_) {}, failure: (_) {}));
    // }

    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Form(
          key: notifier.form,
          child: Column(
            children: [
              TextFormField(
                controller: notifier.emailController,
              ),
              TextFormField(
                controller: notifier.passwordController,
              ),
              ElevatedButton(
                onPressed: notifier.onTapSignInButton(),
                child: const Text('ログイン'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
