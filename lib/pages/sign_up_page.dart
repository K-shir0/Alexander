import 'package:alexander/pages/common/alexander_not_icon_text_field.dart';
import 'package:alexander/pages/theme/palette.dart';
import 'package:flutter/material.dart';
import 'common/sign_button.dart';
import 'home_menu.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Center(
              child: Container(
                padding: const EdgeInsets.only(
                    top: 16, right: 100, bottom: 16, left: 16),
                width: 600,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    //ログインページに戻るボタン
                    TextButton(
                      onPressed: returnPage,
                      child: Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(right:12.0),
                            child: Icon(Icons.arrow_back_ios_new_outlined,
                              size: 16,
                              color: Palette.mainTextColor,),
                          ),
                          const Text(
                            'ログインページに戻る',
                            style: TextStyle(
                              fontSize: 12,
                              color: Palette.mainTextColor,
                              letterSpacing: 3.2,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    //ファーストネームTextField
                    const AlexanderNotIconTextField(
                        label: 'ファーストネーム',
                        engLabel: 'First Name',
                        information: 'ファーストネームが入力されていません'),
                    const SizedBox(
                      height: 16,
                    ),
                    //ラストネームTextField
                    const AlexanderNotIconTextField(
                        label: 'ラストネーム',
                        engLabel: 'Last Name',
                        information: 'ラストネームが入力されていません'),
                    const SizedBox(
                      height: 16,
                    ),
                    //メールアドレスTextField
                    const AlexanderNotIconTextField(
                        label: 'メールアドレス',
                        engLabel: 'E-mail',
                        information: 'メールアドレスが入力されていません'),
                    const SizedBox(
                      height: 16,
                    ),
                    //パスワードTextField
                    const AlexanderNotIconTextField(
                        label: 'パスワード',
                        engLabel: 'Password',
                        information: 'パスワードが入力されていません',
                        obscureText: true),
                    const SizedBox(
                      height: 16,
                    ),
                    //ログイン用パスワードTextField
                    const AlexanderNotIconTextField(
                        label: 'もう一度パスワードを入力',
                        engLabel: 'ConfirmPassword',
                        information: 'パスワードが一致していません',
                        obscureText: true),
                    const SizedBox(
                      height: 16,
                    ),
                    //新規登録
                    const SignButton(buttonLabel: 'SIGN UP'),
                    const SizedBox(
                      height: 36,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
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
  //ログインページに戻らせる画面遷移
  void returnPage() {
    Navigator.pushNamed(context, '/login');
  }
}
