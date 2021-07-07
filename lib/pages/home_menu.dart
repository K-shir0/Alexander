import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
//ノート名を格納する変数
  List<String> noteName = [
    'ここに',
    'ノート',
    'cc',
    'dd',
    'uu',
    'ノート',
    'ノート',
    'ノート',
    'ノート',
    'ノート',
    'ノート',
    'ノート',
    'ノート',
    'ノート',
    'ノート',
    'ノート',
    'ノート',
    'ノート',
    'ノート',
    'ノート',
    'ノート',
    'ノート',
    'ノート',
    'ノート',
    'ノート',
    'ノート',
    'ノート',
    'ノート',
    'ノート',
    'ノート',
    'ノート',
    'ノート',
    'ノート',
    'ノート',
    'ノート',
    'ノート',
    'ノート',
    'ノート',
    'ノート',
    'ノート',
    'ノート',
    'ノート',
    'ノート',
    'ノート',
    'ノート',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AlexanderMainMenu')),
      drawer: Drawer(
        elevation: 20,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const SizedBox(
              height: 120,
              child: DrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                child: Text('ここにアカウント情報を記載'),
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  Column(
                    children: [
                      ListTile(
                        title: const Text('ノート追加'),
                        trailing: IconButton(
                          icon: const Icon(Icons.add_circle),
                          tooltip: 'ノート追加',
                          onPressed: noteadd, //ノート追加ボタンを押した時の処理
                        ),
                      ),
                      //配列noteNameの要素が全てTextで表示される
                      ListView.builder(
                        padding: const EdgeInsets.all(10),
                        shrinkWrap: true,
                        itemCount: noteName.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            child: Text(
                              noteName[index],
                              textAlign: TextAlign.center,
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                //共有ボタンおしたときの処理
                onPressed: () {},
                child: const Text('共有'),
              ),
            ),
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
