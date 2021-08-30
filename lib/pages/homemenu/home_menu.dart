import 'dart:ui';
import 'package:alexander/pages/homemenu/mainhome.dart';
import 'package:alexander/pages/homemenu/mainmenuserch.dart';
import 'package:alexander/pages/homemenu/notemenuinfo.dart';
import 'package:alexander/pages/homemenu/shareuserinfo.dart';
import 'package:alexander/pages/theme/palette.dart';
import 'package:alexander/pages/homemenu/userinfo.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //ノート名を格納する変数
  List noteName = [];

  String radioItem = '';
  @override
  Widget build(BuildContext context) {
    //画面サイズを取得
    final Size size = MediaQuery.of(context).size;
    const sharecheck = true; //共有しているかしていないかのチェック
    return Scaffold(
      body: SingleChildScrollView(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                const UserInfo(),
                const Notemenu(),
              ],
            ),
            Column(
              children: [
                //共有状態の時の処理
                if (sharecheck == true) const Shareuserinfo(),
                //共有状態じゃない時の処理
                if (sharecheck == false) const Notshareuserinfo(),
                //メインメニューのウィジェット
                Container(
                  width: 1160,
                  height: size.height - 80,
                  color: Palette.bgContentsNormalColor,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 50),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            //検索バー
                            const Padding(
                              padding: EdgeInsets.only(left: 80),
                              child: Mainmenuserch(),
                            ),
                            //アイデア追加ボタン
                            const Padding(
                              padding: EdgeInsets.only(right: 120),
                              child: TidyButton(),
                            ),
                          ],
                        ),
                      ),
                      //メインホーム
                      const Mainhome(),
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
