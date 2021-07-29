import 'package:alexander/pages/theme/palette.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Notemenu extends StatelessWidget {
  const Notemenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //ノート名を格納する変数
    final List<String> noteName = [
      'ここに',
    ];
    return //ノート追加の部分のウィジェット
        Container(
      width: 280,
      height: 788,
      color: Palette.whitecolor,
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
                  border: Border.all(color: Palette.titleTextColor, width: 2),
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
                    style:
                        TextStyle(color: Palette.titleTextColor, fontSize: 16),
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
                            fontSize: 15, color: Palette.titleTextColor),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
