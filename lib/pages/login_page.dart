import 'package:flutter/material.dart';

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
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(25),
            width: 600,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.yellow,
                width: 10,
              ),
            ),
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
                Row(
                  children: [
                    const Text(
                      'ユーザー名',
                      style: TextStyle(
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
                TextField(
                  decoration: const InputDecoration(
                      icon: Icon(Icons.person), hintText: 'Name'),
                  style: const TextStyle(fontSize: 20),
                  //リアルタイム判定
                  onChanged: (text) {
                    if (text.isNotEmpty) {
                      // 入力値があるなら、それを反映する。
                      setState(() {});
                    }
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                //パスワードを入力させるエリア
                Row(
                  children: [
                    const Text(
                      'パスワード',
                      style: TextStyle(
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
                TextField(
                  obscureText: true,
                  autocorrect: false,
                  decoration: const InputDecoration(
                      icon: Icon(Icons.lock_outline), hintText: 'Password'),
                  style: const TextStyle(fontSize: 20),
                  //リアルタイム判定
                  onChanged: (text) {
                    if (text.isNotEmpty) {
                      // 入力値があるなら、それを反映する。
                      setState(() {});
                    }
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //パスワードを忘れた時にとぶリンクを設定
                    InkWell(
                      onTap: () {},
                      child: const Text(
                        'パスワードを\n忘れた方はこちら',
                        style: TextStyle(fontSize: 8),
                      ),
                    ),
                    //新規登録したいときに飛ぶリンクの設定
                    InkWell(
                      onTap: toSignUpPage,
                      child: const Text(
                        '新規登録はこちら',
                        style: TextStyle(fontSize: 8),
                        textAlign: TextAlign.right,
                      ),
                    )
                  ],
                ),
                //ログインボタン
                TextButton(
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(30.0),
                    primary: Colors.black,
                  ),
                  //ログインボタンが押された時の処理
                  onPressed: () {},
                  child: const Text('ログイン'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void toSignUpPage() {
    Navigator.pushNamed(context, '/signup');
  }
}
