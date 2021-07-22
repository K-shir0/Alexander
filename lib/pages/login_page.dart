import 'package:alexander/pages/theme/palette.dart';
import 'package:alexander/view_model/sign_in_page_state_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'common/alexander_text_field.dart';
import 'common/sign_button.dart';

/// ログインページ
class LoginPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    useProvider(signInPageProvider);
    final notifier = useProvider(signInPageProvider.notifier);

    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              child: Container(
            color: Palette.mainTextColor.withOpacity(0.4),
          )),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(left: 80, right: 80),
                child: Form(
                  key: notifier.form,
                  child: Column(
                    children: [
                      const Gap(32),
                      //タイトル
                      const SizedBox(
                        child: Text(
                          'Hello! Welcome Back!',
                          style: TextStyle(
                            fontFamily: 'Arial',
                            fontSize: 32,
                            color: Palette.accentTextColor,
                            letterSpacing: 6.4,
                            fontWeight: FontWeight.w700,
                            height: 1.25,
                          ),
                          textHeightBehavior: TextHeightBehavior(
                              applyHeightToFirstAscent: false),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      const Gap(80),
                      //ログイン用メールアドレスTextField
                      AlexanderTextField(
                        controller: notifier.emailController,
                        iconName: Icons.mail_outline_outlined,
                        label: 'メールアドレス',
                        engLabel: 'E-mail',
                        // information: 'メールアドレスが入力されていません',
                      ),
                      const Gap(24),
                      //ログイン用パスワードTextField
                      AlexanderTextField(
                          controller: notifier.passwordController,
                          iconName: Icons.vpn_key_outlined,
                          label: 'パスワード',
                          engLabel: 'Password',
                          // information: 'パスワードが間違っています',
                          obscureText: true),
                      const Gap(24),
                      //ログインボタン
                      SignButton(
                          onPressed: notifier.onTapSignInButton(),
                          buttonLabel: 'SIGN IN'),
                      const Gap(64),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.s,
                        children: <Widget>[
                          const Padding(
                            padding: EdgeInsets.only(right: 24),
                            child: Text(
                              'Googleアカウントでグイン・新規登録',
                              style: TextStyle(
                                fontSize: 12,
                                color: Palette.mainTextColor,
                                letterSpacing: 2.4000000000000004,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              color: Palette.border,
                              height: 2,
                            ),
                          ),
                        ],
                      ),
                      const Gap(32),
                      //Googleログイン用ボタン
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4.0),
                          color: const Color(0xfffafafa),
                          border: Border.all(color: const Color(0xff3162b4)),
                        ),
                        child: SizedBox(
                          height: 48,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              primary: Palette.bgContentsLightColor,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.login_outlined,
                                  size: 44,
                                  color: Palette.googleTextColor,
                                ),
                                const Text(
                                  'Continue with Google',
                                  style: TextStyle(
                                    fontFamily: 'Arial',
                                    fontSize: 16,
                                    color: Palette.googleTextColor,
                                    letterSpacing: 3.2,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const Gap(32),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          const Padding(
                            padding: EdgeInsets.only(right: 24),
                            child: Text(
                              '初めて利用する方はこちら',
                              style: TextStyle(
                                fontSize: 12,
                                color: Palette.mainTextColor,
                                letterSpacing: 2.4000000000000004,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              color: Palette.border,
                              height: 2,
                            ),
                          ),
                        ],
                      ),
                      const Gap(32),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          '新しくアカウントを作る',
                          style: TextStyle(
                            fontSize: 16,
                            color: Palette.accentTextColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
