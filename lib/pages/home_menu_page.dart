import 'dart:ui';
import 'package:alexander/pages/selectchangebutton.dart';
import 'package:alexander/pages/shareuserinfo.dart';
import 'package:alexander/pages/theme/palette.dart';
import 'package:alexander/pages/userinfo.dart';
import 'package:alexander/view_model/home_page_state_notifier.dart';
import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomePage extends HookWidget {
  final String id;

  List noteName = [];

  String radioItem = '';

  HomePage({@PathParam('id') required this.id});

  @override
  Widget build(BuildContext context) {
    final state = useProvider(homePageProvider);
    final notifier = useProvider(homePageProvider.notifier);

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
            const Gap(32),
            //マンダラボタンなどの表示
            const SelectChangeButton(),
          ],
        ),
      ),
    );
  }
}

class Notemenu extends StatelessWidget {
  const Notemenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //ノート名を格納する変数
    final List<String> noteName = ['ノートサンプル', 'ノートサンプル2', 'ノートサンプル3'];
    return //ノート追加の部分のウィジェット
      Container(
        width: 280,
        height: 788,
        color: Palette.bgContentsLightColor,
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30, bottom: 30, left: 24),
                  child: Container(
                    width: 32,
                    height: 32,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Palette.titleTextColor, width: 2),
                    ),
                    child: InkWell(
                      //ボタンのクリックイベント
                      onTap: () {},
                      child: const Icon(Icons.add),
                    ),
                  ),
                ),
                const SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      'ノート追加',
                      textAlign: TextAlign.center,
                      style:
                      TextStyle(color: Palette.titleTextColor, fontSize: 16),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ],
            ),
            // 区切り線
            const Divider(
              thickness: 2,
              color: Palette.borderColor,
            ),
            //配列noteNameの要素が全てTextで表示される
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: noteName.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: Row(
                      children: [
                        SpaceWidget(),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      );
  }
}

class SpaceWidget extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      'aaaa',
      textAlign: TextAlign.right,
      style: const TextStyle(
          fontSize: 15, color: Palette.titleTextColor),
    );
  }

}