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
    final List<String> noteName = [
      'ここに',
    ];
    //共有ユーザー
    final List<String> shereuser = [
      'user1',
    ];
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: 280,
                  height: 112,
                  child: Container(
                    color: Palette.bgaccount,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 24),
                          width: 32,
                          height: 32,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Palette.loginleft,
                          ),
                        ),
                        const Expanded(
                          child: SingleChildScrollView(
                            child: Padding(
                              padding: EdgeInsets.all(20),
                              child: Text(
                                'ユーザー名サンプルあああああ',
                                style: TextStyle(fontSize: 12),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                        ),
                        //押したらメニューが出るアイコンボックス
                        Container(
                          margin: const EdgeInsets.only(right: 24),
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
                    width: 1160,
                    height: 112,
                    child: Container(
                      color: Palette.bgContentsColor,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          //共有状態の確認の表示ウィジェット
                          Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(left: 80),
                                width: 16,
                                height: 16,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Palette.emphasisTetxColor,
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.all(10),
                                child: Text(
                                  '共有済み',
                                  style: TextStyle(
                                    color: Palette.emphasisTetxColor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          //共有しているユーザー名を格納するウィジェット
                          SizedBox(
                            width: 600,
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
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 32,
                                        height: 32,
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
                            height: 40,
                            width: 110,
                            margin: const EdgeInsets.only(right: 80),
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
                                  Container(
                                    padding: const EdgeInsets.only(
                                        left: 5, bottom: 5),
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
                  width: 280,
                  height: size.height - 100,
                  color: Palette.whitecolor,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        const Padding(padding: EdgeInsets.all(5)),
                        Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(left: 24),
                              width: 32,
                              height: 32,
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
                            const SingleChildScrollView(
                              child: Padding(
                                padding: EdgeInsets.all(20),
                                child: Text(
                                  'ノート追加',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Palette.titleTextColor,
                                      fontSize: 16),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
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
                                  Container(
                                    margin: const EdgeInsets.only(right: 24),
                                    child: Text(
                                      noteName[index],
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 15,
                                          color: Palette.titleTextColor),
                                    ),
                                  ),
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
                  width: 1160,
                  height: size.height - 100,
                  color: Palette.bgmain,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(left: 80),
                              child: const SizedBox(
                                width: 646,
                                height: 32,
                                child: TextField(
                                  textAlignVertical: TextAlignVertical.center,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(30)),
                                    ),
                                    prefixIcon: Icon(Icons.search),
                                    hintText: '検索',
                                  ),
                                ),
                              ),
                            ),
                            //アイデア追加ボタン
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 25, right: 15),
                              child: Container(
                                alignment: Alignment.center,
                                width: 185,
                                height: 32,
                                decoration: BoxDecoration(
                                  color: Palette.inviteandborder,
                                  // 角丸
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: InkWell(
                                  //ボタンのクリックイベント
                                  onTap: () {},
                                  child: const Text(
                                    'アイデアを追加する',
                                    style: TextStyle(color: Palette.whitecolor),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ),
                            //チームを抜けるボタン
                            if (sharecheck == true)
                              Padding(
                                padding: const EdgeInsets.all(15),
                                child: Container(
                                  alignment: Alignment.center,
                                  width: 121,
                                  height: 32,
                                  decoration: BoxDecoration(
                                    color: Palette.bgContentsColor,
                                    // 角丸
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: InkWell(
                                    //ボタンのクリックイベント
                                    onTap: () {},
                                    child: const Text(
                                      'チームを抜ける',
                                      style: TextStyle(
                                          color: Palette.mainTextColor),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: SingleChildScrollView(
                          child: Container(
                            width: 200,
                            height: 100,
                            color: Palette.bgmain,
                            child: Column(
                              children: [],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
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
