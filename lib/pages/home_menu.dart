import 'dart:ui';
import 'package:alexander/addIcon/web_icon_app_icons.dart';
import 'package:alexander/pages/mainmenuserch.dart';
import 'package:alexander/pages/notemenuinfo.dart';
import 'package:alexander/pages/selectchangebutton.dart';
import 'package:alexander/pages/shareuserinfo.dart';
import 'package:alexander/pages/theme/palette.dart';
import 'package:alexander/pages/userinfo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';

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

    //タグの管理
    final List<String> menugenre = ['ジャンル1', 'ジャンル2'];
    return Scaffold(
      body: SingleChildScrollView(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                const Userinfo(),
                const Notemenu(),
              ],
            ),
            Column(
              children: [
                // //共有状態の時の処理
                // if (sharecheck == true) const Shareuserinfo(),
                // //共有状態じゃない時の処理
                // if (sharecheck == false)
                const Notshareuserinfo(),
                // メインメニューのウィジェット
                Container(
                  width: MediaQuery.of(context).size.width - 280,
                  height: size.height - 100,
                  color: Palette.bgContentsNormalColor,
                  child: Column(
                    children: [
                      // Padding(
                      //   padding: const EdgeInsets.only(top: 50),
                      //   child: Row(
                      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //     children: [
                      //       //検索バー
                      //       const Padding(
                      //         padding: EdgeInsets.only(left: 80),
                      //         child: Mainmenuserch(),
                      //       ),
                      //       // // 整理ボタン
                      //       // const Padding(
                      //       //   padding: EdgeInsets.only(right: 120),
                      //       //   child: Tidybutton(),
                      //       // ),
                      //     ],
                      //   ),
                      // ),

                      // アイデア一覧
                      Expanded(
                        child: SingleChildScrollView(
                          child: Container(
                            color: Palette.bgContentsNormalColor,
                            child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 80, right: 80, top: 20),
                                child: Column(
                                  children: [
                                    IdeaCard(),
                                  ],
                                )),
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

class IdeaCard extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.0),
        color: Palette.bgContentsLightColor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //タイトル
            const Text(
              'タイトルサンプル',
              style: TextStyle(fontSize: 24),
            ),
            Gap(32),
            //メインテキスト
            Text(
              'サンプルサンプルサンプルサンプルサンプル',
              softWrap: true,
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
            ),
            Gap(32),
            //マンダラボタンなどの表示
            const SelectChangeButton(),
          ],
        ),
      ),
    );
  }
}
