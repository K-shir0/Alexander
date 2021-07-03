import 'package:alexander/service/auth.dart';
import 'package:alexander/service/model/authentication.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LoginTestPage extends HookWidget {
  final _form = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final provider = useProvider(authProvider);

    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Form(
          key: _form,
          child: Column(
            children: [
              TextFormField(
                controller: _emailController,
              ),
              TextFormField(
                controller: _passwordController,
              ),
              ElevatedButton(
                onPressed: () {
                  // フォームの保存処理
                  _form.currentState?.save();

                  final email = _emailController.text;
                  final password = _passwordController.text;

                  // ログイン処理
                  provider
                      .signIn(SignInRequest(email: email, password: password))
                      .then((value) =>
                          value.when(success: (_) {}, failure: (_) {}));
                },
                child: const Text('ログイン'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
