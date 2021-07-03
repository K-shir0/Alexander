import 'package:alexander/service/auth.dart';
import 'package:alexander/service/model/authentication.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LoginTestPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final provider = useProvider(authProvider);

    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                provider.signIn(SignInRequest(
                    email: 'laravel-a@example.com', password: 'password'));
              },
              child: Text('ログイン'),
            ),
          ],
        ),
      ),
    );
  }
}
