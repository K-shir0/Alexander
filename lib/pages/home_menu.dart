import 'dart:ui';
import 'package:alexander/addIcon/web_icon_app_icons.dart';
import 'package:alexander/pages/notemenuinfo.dart';
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
    final List<String> menugenre = [
      'ジャンル1',
    ];
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
                //共有状態の時の処理
                if (sharecheck == true) const Shareuserinfo(),
                //共有状態じゃない時の処理
                if (sharecheck == false) const Notshareuserinfo(),
                //メインメニューのウィジェット
                Container(
                  width: 1160,
                  height: size.height - 100,
                  color: Palette.bgmain,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 80),
                            child: const SizedBox(
                              width: 437,
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
                            padding: const EdgeInsets.only(left: 25, right: 15),
                            child: Container(
                              alignment: Alignment.center,
                              width: 178,
                              height: 32,
                              decoration: BoxDecoration(
                                color: Palette.inviteandborder,
                                // 角丸
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: InkWell(
                                //ボタンのクリックイベント
                                onTap: () {},
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.only(bottom: 5),
                                      child: Text(
                                        '整理整頓をする',
                                        style: TextStyle(
                                            color: Palette.whitecolor,
                                            fontSize: 16),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(top: 4),
                                      child: Icon(
                                        WebIconApp.keyboardarrowdown,
                                        color: Palette.whitecolor,
                                      ),
                                    ),
                                  ],
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
                                    style:
                                        TextStyle(color: Palette.mainTextColor),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ),
                        ],
                      ),
                      Expanded(
                        child: SingleChildScrollView(
                          child: Container(
                            color: Palette.bgmain,
                            child: Column(
                              children: [
                                //メインタグの処理
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 20, left: 20),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 16,
                                        height: 276,
                                        decoration: const BoxDecoration(
                                            color: Palette.bgContentsColor),
                                      ),
                                      Container(
                                        width: 1000,
                                        height: 276,
                                        decoration: const BoxDecoration(
                                            color: Palette.whitecolor),
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 40, right: 40, top: 30),
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
                                                  SizedBox(
                                                    width: 200,
                                                    height: 30,
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceAround,
                                                      children: [
                                                        //radiobuttonは後日記載
                                                        const Text(
                                                          '採用',
                                                          style: TextStyle(
                                                              fontSize: 16,
                                                              color: Palette
                                                                  .titleTextColor),
                                                        ),
                                                        const Text(
                                                          '保留',
                                                          style: TextStyle(
                                                              fontSize: 16,
                                                              color: Palette
                                                                  .titleTextColor),
                                                        ),
                                                        const Text(
                                                          'ボツ案',
                                                          style: TextStyle(
                                                              fontSize: 16,
                                                              color: Palette
                                                                  .titleTextColor),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Flexible(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            40),
                                                    child:
                                                        const SingleChildScrollView(
                                                      child: Text(
                                                        'サンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプル',
                                                        softWrap: true,
                                                        maxLines: 4,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                      ),
                                                    ),
                                                  ),
                                                  Row(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(left: 40),
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

class Fruits {}
