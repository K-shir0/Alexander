import 'package:alexander/pages/homemenu/selectchangebutton.dart';
import 'package:alexander/pages/theme/palette.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Maintext extends StatelessWidget {
  const Maintext({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //タグの管理
    final List<String> menugenre = [
      'ジャンル1',
      'ジャンル2',
      'ジャンル2',
      'ジャンル2',
      'ジャンル2',
      'ジャンル2',
      'ジャンル2',
      'ジャンル2',
      'ジャンル2',
      'ジャンル2',
      'ジャンル2',
      'ジャンル2',
      'ジャンル2',
      'ジャンル2',
      'ジャンル2',
      'ジャンル2',
      'ジャンル2',
      'ジャンル2',
    ];
    return Flexible(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //タグ一覧
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 50),
            child: Row(
              children: [
                SizedBox(
                  width: 880,
                  height: 24,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: menugenre.length,
                    itemBuilder: (context, index) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 8,
                            height: 8,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Palette.loginleft,
                            ),
                          ),
                          Text(
                            menugenre[index],
                            style: const TextStyle(
                                fontSize: 12, color: Palette.titleTextColor),
                          ),
                        ],
                      );
                    },
                  ),
                ),
                //下記にタグ追加のプラスボタンを配置
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: 24,
                    width: 24,
                    decoration: BoxDecoration(
                        border: Border.all(color: Palette.titleTextColor),
                        shape: BoxShape.circle),
                    child: const Icon(
                      Icons.add,
                      color: Palette.titleTextColor,
                      size: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
          //テキスト文
          const Padding(
            padding: EdgeInsets.only(left: 56, top: 25, right: 40),
            child: SingleChildScrollView(
              child: Text(
                'サンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプル',
                softWrap: true,
                maxLines: 4,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          //マンダラボタンなどの表示
          const SelectChangeButton(),
        ],
      ),
    );
  }
}
