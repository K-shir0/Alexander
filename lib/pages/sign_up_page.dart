import 'package:alexander/pages/theme/palette.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'common/alexander_text_field.dart';
import 'common/sign_button.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
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
                    TextButton(
                      onPressed: returnPage,
                      child: Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(right: 12.0),
                            child: Icon(
                              Icons.arrow_back_ios_new_outlined,
                              size: 16,
                              color: Palette.mainTextColor,
                            ),
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
                    const Gap(24),
                    //ファーストネームTextField
                    const AlexanderTextField(
                        label: 'ファーストネーム',
                        engLabel: 'First Name',
                        information: 'ファーストネームが入力されていません'),
                    const Gap(24),
                    //ラストネームTextField
                    const AlexanderTextField(
                        label: 'ラストネーム',
                        engLabel: 'Last Name',
                        information: 'ラストネームが入力されていません'),
                    const Gap(24),
                    //メールアドレスTextField
                    const AlexanderTextField(
                        label: 'メールアドレス',
                        engLabel: 'E-mail',
                        information: 'メールアドレスが入力されていません'),
                    const Gap(24),
                    //パスワードTextField
                    const AlexanderTextField(
                        label: 'パスワード',
                        engLabel: 'Password',
                        information: 'パスワードが入力されていません',
                        obscureText: true),
                    const Gap(24),
                    //ログイン用パスワードTextField
                    const AlexanderTextField(
                        label: 'もう一度パスワードを入力',
                        engLabel: 'ConfirmPassword',
                        information: 'パスワードが一致していません',
                        obscureText: true),
                    const Gap(24),
                    //新規登録
                    const SignButton(buttonLabel: 'SIGN UP'),
                    const SizedBox(
                      height: 36,
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
  // void toHomePage() {
  //   //履歴を残さないように画面遷移
  //   Navigator.pushAndRemoveUntil(
  //       context,
  //       MaterialPageRoute(builder: (context) => HomePage()),
  //       (_) => false);
  // }

  //新規登録画面へ
  void toSignUpPage() {
    Navigator.pushNamed(context, '/signup');
  }

  //ログインページに戻らせる画面遷移
  void returnPage() {
    Navigator.pushNamed(context, '/login');
  }
}
