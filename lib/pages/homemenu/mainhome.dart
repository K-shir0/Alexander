import 'package:alexander/pages/theme/palette.dart';
import 'package:flutter/cupertino.dart';

import 'mainmenu_selectedbutton.dart';
import 'maintext.dart';

class Mainhome extends StatelessWidget {
  const Mainhome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Container(
          color: Palette.bgContentsNormalColor,
          child: Column(
            children: [
              //メインタグの処理
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 80, right: 80),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 1000,
                      height: 372,
                      decoration: const BoxDecoration(
                          color: Palette.bgContentsLightColor),
                      child: Column(
                        children: [
                          //タイトル
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 56, right: 40, top: 30),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'タイトルサンプル',
                                  style: TextStyle(fontSize: 24),
                                ),
                                //保留ボタン
                                Container(
                                  alignment: Alignment.center,
                                  width: 91,
                                  height: 32,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Palette.mainTextColor),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: const Mystatefullwidget(),
                                ),
                              ],
                            ),
                          ),
                          //メインテキスト
                          const Maintext(),
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
    );
  }
}
