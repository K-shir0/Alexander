import 'package:alexander/service/auth.dart';
import 'package:alexander/service/base/model/result.dart';
import 'package:alexander/service/model/authentication.dart';
import 'package:alexander/view_model/common/model/auth_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final authStateProvider = StateNotifierProvider<AuthStateNotifier, AuthState>(
      (ref) => AuthStateNotifier(const AuthState(), ref),
);

class AuthStateNotifier extends StateNotifier<AuthState> {
  AuthStateNotifier(AuthState state, this.ref) : super(state);

  ProviderReference ref;

  /// ログインを試行し、呼び出し元に成功か失敗かを通知する。
  Future<Result<SignInResponse>> signIn(SignInRequest signInRequest) async {
    final client = ref.read(authProvider);

    return client.signIn(signInRequest).then((result) {
      result.when(
        success: (result) {
          // ログイン成功
          state = state.copyWith(authUser: result.data.user);
        },
        failure: (_) {},
      );

      return result;
    });
  }

  Future<Result<SignOutResponse>> signOut() async {
    final client = ref.read(authProvider);

    return client.signOut().then((result) {
      result.when(
          success: (_) {
            // ログアウト成功
            state = state.copyWith(authUser: null);
          },
          failure: (_) {});

      return result;
    });
  }

  Future<Result<String>> self() async {
    final client = ref.read(authProvider);

    client.getCookie().then(
          (value) =>
          value.when(
            success: (_) {
              client.self().then(
                      (value) =>
                      value.when(success: (_) {
                        // 取得成功
                        state = state.copyWith(authUser: _.data.user);
                      }, failure: (_) {}));
            },
            failure: (_) {},
          ),
    );

    return const Result.success('');
  }
}