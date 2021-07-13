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
  //共有ノートか普通のノートかの判定
  bool noteCheck = true; //false = ノート true = 共有ノート
  //共有ユーザー
  List<String> shereuser = [
    'user1',
    'user2',
    'user3',
    'user4',
    'user5',
    'user6',
    'user7',
    'user8',
    'user9',
    'user10',
    'user11',
    'user12',
    'user13',
    'user14',
    'user15',
    'user16',
    'user17',
    'user18',
    'user19',
    'user20',
    'user21',
    'user22',
    'user23',
    'user24',
    'user25',
    'user26',
    'user27',
    'user28'
  ];
  @override
  Widget build(BuildContext context) {
    //画面サイズを取得
    final Size size = MediaQuery.of(context).size;
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
                            padding: const EdgeInsets.all(3),
                            child: Text(
                              noteName[index],
                              textAlign: TextAlign.center,
                              style: const TextStyle(fontSize: 10),
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
      //ホームメニューの画面レイアウト
      body: SingleChildScrollView(
        child: Column(
          children: [
            //共有ボタン、共有車を表示
            Row(
              children: [
                SizedBox(
                  height: 50,
                  width: 100,
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(border: Border.all(width: 5)),
                    child: Text(noteCheck == false ? 'ノート' : '共有ノート'),
                  ),
                ),
                if (noteCheck == true)
                  SizedBox(
                    height: 50,
                    width: size.width - 100,
                    child: SingleChildScrollView(
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 3,
                          vertical: 3,
                        ),
                        height: 30,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: shereuser.length,
                          itemBuilder: (context, index) {
                            return Center(
                              child: Text(
                                '${shereuser[index]},',
                                style: const TextStyle(fontSize: 20),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
              ],
            ),

            ListTile(
              title: const Text('とりあえず置いてみた'),
              subtitle: const Text('サブタイトル置いてみた'),
              trailing: const Icon(Icons.more_vert),
              onTap: () {},
            )
          ],
        ),
      ),
    );
  }

  //ノート追加ボタンクリックイベント
  void noteadd() {
    noteName.add('ノート');
  }
}
