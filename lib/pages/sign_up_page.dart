import 'package:flutter/material.dart';
import 'login_page.dart';

class SinkiPage extends StatelessWidget {
  const SinkiPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: "Noto Sans JP",
      ),
      debugShowCheckedModeBanner: false,
      home: SinkiForm(),
    );
  }
}

class SinkiForm extends StatefulWidget {
  const SinkiForm({Key? key}) : super(key: key);

  @override
  _SinkiFormState createState() => _SinkiFormState();
}

class _SinkiFormState extends State<SinkiForm> {
  @override
  Widget build(BuildContext context) {
    //各項目の入力内容を格納する変数
    var firstname = ""; //Firstname
    var lastname = ""; //lastname
    var username = ""; //ユーザー名
    var mailAddress = ""; //メールアドレス
    var password = ""; //パスワード
    var saipassword = ""; //再入力パスワード

    final double deviceHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        //戻るボタンアイコン
        leading: IconButton(
          //アイコンボタンが押された時の処理
          onPressed: ReturnPage,
          icon: Icon(
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
                SizedBox(
                  height: 20,
                ),
                Text(
                  "新規登録画面",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                //登録するfirstnameを入力させるエリア
                Row(
                  children: [
                    Text(
                      "FirstName",
                      style: TextStyle(
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
                TextField(
                  decoration: InputDecoration(
                      icon: Icon(Icons.person), hintText: "FirstName"),
                  style: TextStyle(fontSize: 15),
                  //リアルタイム判定
                  onChanged: (text) {
                    if (text.length > 0) {
                      // 入力値があるなら、それを反映する。
                      setState(() {
                        firstname = text;
                      });
                    }
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                //登録するlastnameを入力させるエリア
                Row(
                  children: [
                    Text(
                      "LastName",
                      style: TextStyle(
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
                TextField(
                  decoration: InputDecoration(
                      icon: Icon(Icons.person), hintText: "LastName"),
                  style: TextStyle(fontSize: 15),
                  //リアルタイム判定
                  onChanged: (text) {
                    if (text.length > 0) {
                      // 入力値があるなら、それを反映する。
                      setState(() {
                        lastname = text;
                      });
                    }
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                //登録するユーザー名を入力させるエリア
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
                  decoration: InputDecoration(
                      icon: Icon(Icons.person), hintText: "Name"),
                  style: TextStyle(fontSize: 15),
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
                //登録するメールアドレスを入力させるエリア
                Row(
                  children: [
                    Text(
                      "メールアドレス",
                      style: TextStyle(
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
                TextField(
                  decoration: InputDecoration(
                      icon: Icon(Icons.mail), hintText: "MailAddress"),
                  style: TextStyle(fontSize: 15),
                  //リアルタイム判定
                  onChanged: (text) {
                    if (text.length > 0) {
                      // 入力値があるなら、それを反映する。
                      setState(() {
                        mailAddress = text;
                      });
                    }
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                //登録するパスワードを入力させるエリア
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
                  style: TextStyle(fontSize: 15),
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
                //再パスワードを入力させるエリア
                Row(
                  children: [
                    Text(
                      "パスワード再入力",
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
                  style: TextStyle(fontSize: 15),
                  //リアルタイム判定
                  onChanged: (text) {
                    if (text.length > 0) {
                      // 入力値があるなら、それを反映する。
                      setState(() {
                        saipassword = text;
                      });
                    }
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                //登録ボタン
                TextButton(
                  child: const Text('登録'),
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
      ),
    );
  }

  //ログインページに戻らせる画面遷移
  void ReturnPage() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => LoginPage()));
  }
}
