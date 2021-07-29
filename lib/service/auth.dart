import 'dart:html';

import 'package:alexander/service/base/model/error.dart';
import 'package:alexander/service/model/authentication.dart';
import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'base/client.dart';
import 'base/model/result.dart';

final authProvider = Provider((ref) => Auth(ref.read));

class Auth {
  late final Dio client;

  Auth(Reader reader) {
    client = reader(clientProvider);
  }

  /// クッキーを取得しヘッダーにセットする
  Future<Result<String>> getCookie() async {
    try {
      return await client.get('/sanctum/csrf-cookie').then((_) {
        // Cookieを取得
        final cookie = window.document.cookie.toString();

        // 正規表現にマッチするか調べる
        final match = RegExp('XSRF-TOKEN=([^;]*)').firstMatch(cookie);

        final token = Uri.decodeFull(match?.group(1) ?? '');

        // トークンをセット
        client.options.headers['X-XSRF-TOKEN'] = token;

        return Result.success(token);
      });
    } on DioError catch (error) {
      return Result.failure(Error.getApiError(error));
    }
  }

  /// ログイン
  Future<Result<SignInResponse>> signIn(SignInRequest signInRequest) async {
    try {
      return await client
          .post(
            '/api/auth/login',
            data: signInRequest.toJson(),
          )
          .then((result) =>
              Result.success(SignInResponse.fromJson({...result.data})));
    } on DioError catch (error) {
      return Result.failure(Error.getApiError(error));
    }
  }

  /// ログアウト
  Future<Result<SignOutResponse>> signOut() async {
    try {
      return await client.post('/api/auth/logout').then((result) =>
          Result.success(SignOutResponse.fromJson({...result.data})));
    } on DioError catch (error) {
      return Result.failure(Error.getApiError(error));
    }
  }

  /// 自分の情報を取得する
  Future<Result<SelfResponse>> self() async {
    try {
      return await client
          .get(
            '/api/auth/self',
          )
          .then((result) =>
              Result.success(SelfResponse.fromJson({...result.data})));
    } on DioError catch (error) {
      return Result.failure(Error.getApiError(error));
    }
  }
}
