import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //ノート名を格納する変数
  List noteName = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //AppBarは将来消す予定(HomePage完成次第)
      appBar: AppBar(title: const Text('AlexanderMainMenu')),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('アカウント情報を記載する予定'),
            ),
            ListTile(
              title: const Text('ノート追加'),
              trailing: IconButton(
                icon: const Icon(Icons.add_circle),
                tooltip: 'ノート追加',
                onPressed: () {}, //ノート追加ボタンを押した時の処理
              ),
            ),
            /*
            ListView.builder(
              padding: EdgeInsets.all(30),
              shrinkWrap: true,
              itemCount: noteName.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  
                  child: Text(
                    //noteName[index],
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 25),
                  ),
                
                );
              },
            )*/
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(),
      ),
    );
  }

  //ノート追加ボタンクリックイベント
  void noteadd() {
    noteName.add('ノート');
  }
}
