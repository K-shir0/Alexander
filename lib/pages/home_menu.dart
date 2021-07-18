import 'dart:ui';
import 'package:alexander/addIcon/web_icon_app_icons.dart';
import 'package:alexander/pages/theme/palette.dart';
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
    //画面サイズを取得
    final Size size = MediaQuery.of(context).size;
    final drawerwidth = size.width / 5; //drwer部分の横を指定した変数
    const sharecheck = true; //共有しているかしていないかのチェック
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
    return Scaffold(
      drawer: ListView(
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
          const ListTile()
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: drawerwidth,
                  height: 100,
                  child: Container(
                    color: Palette.bgaccount,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          margin: const EdgeInsets.all(10),
                          width: 30,
                          height: 30,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Palette.loginleft,
                          ),
                        ),
                        const Expanded(
                          child: SingleChildScrollView(
                            child: Text(
                              'ユーザー名サンプルあああああ',
                              style: TextStyle(fontSize: 15),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                        //押したらメニューが出るアイコンボックス
                        Container(
                          margin: const EdgeInsets.all(5),
                          child: InkWell(
                            onTap: () {},
                            child: const Icon(
                              WebIconApp.keyboardarrowdown,
                              color: Palette.mainTextColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                //共有状態の時の処理
                if (sharecheck == true)
                  SizedBox(
                    width: size.width - drawerwidth,
                    height: 100,
                    child: Container(
                      color: Palette.bgContentsColor,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          //共有状態の確認の表示ウィジェット
                          Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.all(20),
                                width: 20,
                                height: 20,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Palette.emphasisTetxColor,
                                ),
                              ),
                              const Text(
                                '共有済み',
                                style: TextStyle(
                                  color: Palette.emphasisTetxColor,
                                ),
                              ),
                            ],
                          ),
                          //共有しているユーザー名を格納するウィジェット
                          SizedBox(
                            width: (size.width - drawerwidth) / 2,
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
                                  return Row(
                                    children: [
                                      Container(
                                        width: 50,
                                        height: 50,
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Palette.loginleft,
                                        ),
                                      ),
                                      Text(
                                        shereuser[index],
                                        style: const TextStyle(
                                            fontSize: 20,
                                            color: Palette.titleTextColor),
                                      ),
                                    ],
                                  );
                                },
                              ),
                            ),
                          ),
                          //招待ボタンを作成したウィジェット
                          Container(
                            height: 50,
                            width: 140,
                            decoration: BoxDecoration(
                              color: Palette.whitecolor,
                              //枠線
                              border: Border.all(
                                  color: Palette.inviteandborder, width: 2),
                              // 角丸
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: InkWell(
                              onTap: () {},
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(
                                    WebIconApp.share,
                                    color: Palette.inviteandborder,
                                  ),
                                  const Text('  '),
                                  Container(
                                    margin: const EdgeInsets.only(top: 4),
                                    child: const Text(
                                      '招待',
                                      style: TextStyle(
                                          color: Palette.inviteandborder,
                                          fontSize: 15),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                //共有状態じゃない時の処理
                if (sharecheck == false)
                  SizedBox(
                    width: size.width - drawerwidth,
                    height: 100,
                    child: Container(
                      color: Palette.bgContentsColor,
                    ),
                  ),
              ],
            ),
            Row(
              children: [
                //ノート追加の部分のウィジェット
                Container(
                  width: drawerwidth,
                  height: size.height - 100,
                  color: Palette.whitecolor,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        const Padding(padding: EdgeInsets.all(5)),
                        Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.all(10),
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    color: Palette.titleTextColor, width: 2),
                              ),
                              child: InkWell(
                                //ボタンのクリックイベント
                                onTap: () {},
                                child: const Icon(Icons.add),
                              ),
                            ),
                            const Text(
                              'ノート追加',
                              style: TextStyle(
                                  color: Palette.titleTextColor, fontSize: 20),
                            ),
                          ],
                        ),
                        const Padding(padding: EdgeInsets.all(20)),
                        //配列noteNameの要素が全てTextで表示される
                        ListView.builder(
                          shrinkWrap: true,
                          itemCount: noteName.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              padding: const EdgeInsets.all(10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    noteName[index],
                                    textAlign: TextAlign.right,
                                    style: const TextStyle(
                                        fontSize: 15,
                                        color: Palette.titleTextColor),
                                  ),
                                  const Text('　　'),
                                ],
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                //メインメニューのウィジェット
                Container(
                  width: size.width - drawerwidth,
                  height: size.height - 100,
                  color: Palette.bgmain,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  //ノート追加ボタンクリックイベント
  void noteAdd() {
    noteName.add('ノート');
  }
}
