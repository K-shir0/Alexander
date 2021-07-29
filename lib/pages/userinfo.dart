import 'package:alexander/addIcon/web_icon_app_icons.dart';
import 'package:alexander/pages/theme/palette.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Userinfo extends StatelessWidget {
  const Userinfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //ホームメニューの左上(ユーザー情報が記載されているウィジェット)
    return SizedBox(
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
    );
  }
}
