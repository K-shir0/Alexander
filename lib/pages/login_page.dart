import 'package:alexander/pages/common/alexander_text_field.dart';
import 'package:alexander/pages/common/sign_button.dart';
import 'package:flutter/material.dart';
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
      appBar: AppBar(
          title: const Text('Alexander'), automaticallyImplyLeading: false),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(25),
            width: 600,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'ログイン画面',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                //ユーザー名を入力させるエリア
                // Row(
                //   children: [
                //     const Text(
                //       'ユーザー名',
                //       style: TextStyle(
                //         fontSize: 10,
                //       ),
                //     ),
                //   ],
                // ),
                // TextField(
                //   decoration: const InputDecoration(
                //       icon: Icon(Icons.person), hintText: 'Name'),
                //   style: const TextStyle(fontSize: 20),
                //   //リアルタイム判定
                //   onChanged: (text) {
                //     if (text.isNotEmpty) {
                //       // 入力値があるなら、それを反映する。
                //       setState(() {});
                //     }
                //   },
                // ),
                const AlexanderTextField(iconName: Icons.mail_outline_outlined,label: 'メールアドレス', engLabel: 'E-mail', infomation: 'メールアドレスが入力されていません'),
                const SizedBox(
                  height: 20,
                ),
                //パスワードを入力させるエリア
                // Row(
                //   children: [
                //     const Text(
                //       'パスワード',
                //       style: TextStyle(
                //         fontSize: 10,
                //       ),
                //     ),
                //   ],
                // ),
                // TextField(
                //   obscureText: true,
                //   autocorrect: false,
                //   decoration: const InputDecoration(
                //       icon: Icon(Icons.lock_outline), hintText: 'Password'),
                //   style: const TextStyle(fontSize: 20),
                //   //リアルタイム判定
                //   onChanged: (text) {
                //     if (text.isNotEmpty) {
                //       // 入力値があるなら、それを反映する。
                //       setState(() {});
                //     }
                //   },
                //),
                const AlexanderTextField(iconName: Icons.vpn_key_outlined,label: 'パスワード', engLabel: 'Password', infomation: 'パスワードが間違っています', obscureText: true),

                const SizedBox(
                  height: 20,
                ),
                const SignButton(buttonLabel: 'SIGN IN')//ログインボタン
                // TextButton(
                //   style: TextButton.styleFrom(
                //     padding: const EdgeInsets.all(30.0),
                //     primary: Colors.black,
                //   ),
                //   //ログインボタンが押された時の処理
                //   onPressed: toHomePage,
                //   child: const Text('ログイン'),
                // ),
              ],
            ),
          ),
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
}
