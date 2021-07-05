import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    final double deviceHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        //戻るボタンアイコン
        leading: IconButton(
          //アイコンボタンが押された時の処理
          onPressed: returnPage,
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(25),
            width: deviceHeight,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.yellow,
                width: 10,
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  '新規登録画面',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                //登録するfirstnameを入力させるエリア
                Row(
                  children: [
                    const Text(
                      'FirstName',
                      style: TextStyle(
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
                TextField(
                  decoration: const InputDecoration(
                      icon: Icon(Icons.person), hintText: 'FirstName'),
                  style: const TextStyle(fontSize: 15),
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
                //登録するlastnameを入力させるエリア
                Row(
                  children: [
                    const Text(
                      'LastName',
                      style: TextStyle(
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
                TextField(
                  decoration: const InputDecoration(
                      icon: Icon(Icons.person), hintText: 'LastName'),
                  style: const TextStyle(fontSize: 15),
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
                //登録するユーザー名を入力させるエリア
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
                  style: const TextStyle(fontSize: 15),
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
                //登録するメールアドレスを入力させるエリア
                Row(
                  children: [
                    const Text(
                      'メールアドレス',
                      style: TextStyle(
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
                TextField(
                  decoration: const InputDecoration(
                      icon: Icon(Icons.mail), hintText: 'MailAddress'),
                  style: const TextStyle(fontSize: 15),
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
                //登録するパスワードを入力させるエリア
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
                  style: const TextStyle(fontSize: 15),
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
                //再パスワードを入力させるエリア
                Row(
                  children: [
                    const Text(
                      'パスワード再入力',
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
                  style: const TextStyle(fontSize: 15),
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
                //登録ボタン
                TextButton(
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(30.0),
                    primary: Colors.black,
                  ),
                  //ログインボタンが押された時の処理
                  onPressed: () {},
                  child: const Text('登録'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  //ログインページに戻らせる画面遷移
  void returnPage() {
    Navigator.pushNamed(context, '/login');
  }
}
