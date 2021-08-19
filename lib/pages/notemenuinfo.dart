import 'package:alexander/pages/theme/palette.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
                      Text(
                        noteName[index],
                        textAlign: TextAlign.right,
                        style: const TextStyle(
                            fontSize: 15, color: Palette.titleTextColor),
                      ),
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
