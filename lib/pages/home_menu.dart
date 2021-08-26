import 'dart:ui';
import 'package:alexander/pages/mainmenu_selectedbutton.dart';
import 'package:alexander/pages/mainmenuserch.dart';
import 'package:alexander/pages/notemenuinfo.dart';
import 'package:alexander/pages/selectchangebutton.dart';
import 'package:alexander/pages/shareuserinfo.dart';
import 'package:alexander/pages/theme/palette.dart';
import 'package:alexander/pages/userinfo.dart';
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
    //タグの管理
    final List<String> menugenre = ['ジャンル1', 'ジャンル2'];
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
                  height: size.height - 100,
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
                      Expanded(
                        child: SingleChildScrollView(
                          child: Container(
                            color: Palette.bgContentsNormalColor,
                            child: Column(
                              children: [
                                //メインタグの処理
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 20, left: 80, right: 80),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 1000,
                                        height: 276,
                                        decoration: const BoxDecoration(
                                            color:
                                                Palette.bgContentsLightColor),
                                        child: Column(
                                          children: [
                                            //タイトル
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 56, right: 40, top: 30),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  const Text(
                                                    'タイトルサンプル',
                                                    style:
                                                        TextStyle(fontSize: 24),
                                                  ),
                                                  //保留ボタン
                                                  Container(
                                                    alignment: Alignment.center,
                                                    width: 91,
                                                    height: 32,
                                                    decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: Palette
                                                              .mainTextColor),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5),
                                                    ),
                                                    child:
                                                        const Mystatefullwidget(),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            //メインテキスト
                                            Flexible(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  //タグ一覧
                                                  Row(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                left: 56,
                                                                top: 25),
                                                        child: SizedBox(
                                                          width: 880,
                                                          height: 24,
                                                          child:
                                                              ListView.builder(
                                                            scrollDirection:
                                                                Axis.horizontal,
                                                            itemCount: menugenre
                                                                .length,
                                                            itemBuilder:
                                                                (context,
                                                                    index) {
                                                              return Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Container(
                                                                    width: 8,
                                                                    height: 8,
                                                                    decoration:
                                                                        const BoxDecoration(
                                                                      shape: BoxShape
                                                                          .circle,
                                                                      color: Palette
                                                                          .loginleft,
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: const EdgeInsets
                                                                            .only(
                                                                        left: 7,
                                                                        right:
                                                                            7,
                                                                        bottom:
                                                                            5),
                                                                    child: Text(
                                                                      menugenre[
                                                                          index],
                                                                      style: const TextStyle(
                                                                          fontSize:
                                                                              12,
                                                                          color:
                                                                              Palette.titleTextColor),
                                                                    ),
                                                                  ),
                                                                ],
                                                              );
                                                            },
                                                          ),
                                                        ),
                                                      ),
                                                      //下記にタグ追加のプラスボタンを配置
                                                    ],
                                                  ),
                                                  //テキスト文
                                                  const Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 56, top: 25),
                                                    child:
                                                        SingleChildScrollView(
                                                      child: Text(
                                                        'サンプルサンプルサンプルサンプルサンプル',
                                                        softWrap: true,
                                                        maxLines: 4,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                      ),
                                                    ),
                                                  ),
                                                  //マンダラボタンなどの表示
                                                  const SelectChangeButton(),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
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
