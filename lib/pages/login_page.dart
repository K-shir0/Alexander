import 'package:alexander/pages/sign_up_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: "Noto Sans JP",
      ),
      debugShowCheckedModeBanner: false,
      home: loginPage(),
    );
  }
}

class loginPage extends StatefulWidget {
  const loginPage({Key? key}) : super(key: key);

  @override
  _loginPageState createState() => _loginPageState();
}

//ログインページ
class _loginPageState extends State<loginPage> {
  @override
  Widget build(BuildContext context) {
    //各項目の入力内容を格納する変数
    var username = ""; //ユーザー名
    var password = ""; //パスワード

    return Scaffold(
      appBar: AppBar(elevation: 0, backgroundColor: Colors.transparent),
      body: Center(
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
              SizedBox(
                height: 20,
              ),
              Text(
                "ログイン画面",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              //ユーザー名を入力させるエリア
              Row(
                children: [
                  Text(
                    "ユーザー名",
                    style: TextStyle(
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
              TextField(
                decoration:
                    InputDecoration(icon: Icon(Icons.person), hintText: "Name"),
                style: TextStyle(fontSize: 20),
                //リアルタイム判定
                onChanged: (text) {
                  if (text.length > 0) {
                    // 入力値があるなら、それを反映する。
                    setState(() {
                      username = text;
                    });
                  }
                },
              ),
              SizedBox(
                height: 20,
              ),
              //パスワードを入力させるエリア
              Row(
                children: [
                  Text(
                    "パスワード",
                    style: TextStyle(
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
              TextField(
                obscureText: true,
                autocorrect: false,
                decoration: InputDecoration(
                    icon: Icon(Icons.lock_outline), hintText: "Password"),
                style: TextStyle(fontSize: 20),
                //リアルタイム判定
                onChanged: (text) {
                  if (text.length > 0) {
                    // 入力値があるなら、それを反映する。
                    setState(() {
                      password = text;
                    });
                  }
                },
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //パスワードを忘れた時にとぶリンクを設定
                  InkWell(
                    onTap: () {},
                    child: Text(
                      "パスワードを\n忘れた方はこちら",
                      style: TextStyle(fontSize: 8),
                    ),
                  ),
                  //新規登録したいときに飛ぶリンクの設定
                  InkWell(
                    onTap: SinkiPage,
                    child: Text(
                      "新規登録はこちら",
                      style: TextStyle(fontSize: 8),
                      textAlign: TextAlign.right,
                    ),
                  )
                ],
              ),
              //ログインボタン
              TextButton(
                child: const Text('ログイン'),
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.all(30.0),
                  primary: Colors.black,
                ),
                //ログインボタンが押された時の処理
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }

  void SinkiPage() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => SinkiForm()));
  }
}
