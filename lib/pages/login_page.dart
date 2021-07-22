import 'package:alexander/pages/common/alexander_text_field.dart';
import 'package:alexander/pages/common/sign_button.dart';
import 'package:alexander/pages/theme/palette.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'home_menu.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

//ログインページ
class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
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
                        textHeightBehavior:
                            TextHeightBehavior(applyHeightToFirstAscent: false),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    const Gap(80),
                    //ログイン用メールアドレスTextField
                    const AlexanderTextField(
                        iconName: Icons.mail_outline_outlined,
                        label: 'メールアドレス',
                        engLabel: 'E-mail',
                        information: 'メールアドレスが入力されていません'),
                    const Gap(24),
                    //ログイン用パスワードTextField
                    const AlexanderTextField(
                        iconName: Icons.vpn_key_outlined,
                        label: 'パスワード',
                        engLabel: 'Password',
                        information: 'パスワードが間違っています',
                        obscureText: true),
                    const Gap(24),
                    //ログインボタン
                    const SignButton(buttonLabel: 'SIGN IN'),
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
                      onPressed: () {
                        toSignUpPage();
                      },
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
        ],
      ),
    );
  }

  //ホーム画面へ
  void toHomePage() {
    //履歴を残さないように画面遷移
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => const HomePage()),
        (_) => false);
  }

  //新規登録画面へ
  void toSignUpPage() {
    Navigator.pushNamed(context, '/signup');
  }
}
