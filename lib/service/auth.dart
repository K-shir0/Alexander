import 'dart:html';

import 'package:alexander/service/model/authentication.dart';
import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'base/client.dart';

final authProvider = Provider((ref) => Auth(ref.read));

class Auth {
  late final Dio client;

  Auth(Reader reader) {
    client = reader(clientProvider);
  }

  Future<void> getCookie() async {
    await client.get('/sanctum/csrf-cookie').then((_) {
      // Cookieを取得
      final cookie = window.document.cookie.toString();

      // 正規表現にマッチするか調べる
      final match = RegExp(r'XSRF-TOKEN=([^;]*)').firstMatch(cookie);

      // トークンをセット
      client.options.headers['X-XSRF-TOKEN'] =
          Uri.decodeFull(match?.group(1) ?? '');
    });
  }

  void signIn(SignInRequest signInRequest) {
    client
        .post('/api/auth/login', data: signInRequest)
        .then((value) => print(value));
  }
}