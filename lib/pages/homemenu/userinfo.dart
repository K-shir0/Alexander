import 'package:alexander/addIcon/web_icon_app_icons.dart';
import 'package:alexander/pages/theme/palette.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserInfo extends StatefulWidget {
  const UserInfo({Key? key}) : super(key: key);

  @override
  _UserInfoState createState() => _UserInfoState();
}

class _UserInfoState extends State<UserInfo> {
  String username = 'ユーザー名サンプルあああああああああああああああああああああああああああああああああ';
  @override
  //ホームメニューの左上(ユーザー情報が記載されているウィジェット)
  Widget build(BuildContext context) {
    return SizedBox(
      width: 280,
      height: 80,
      child: Container(
        color: Palette.bgContentsDarkColor,
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
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text(
                    username,
                    style: const TextStyle(fontSize: 12),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ),
            //押したらメニューが出るアイコンボックス
            PopupMenuButton(
              icon: const Icon(
                WebIconApp.keyboardarrowdown,
                color: Palette.mainTextColor,
              ),
              onSelected: (aaaa) {
                setState(() {
                  showDialog(
                      context: context,
                      builder: (_) {
                        return AlertDialog(
                          title: const Text('何を選択したかの表示'),
                          content: Text('$aaaaが選択されました'),
                        );
                      });
                });
              },
              itemBuilder: (context) => [
                //ユーザー名
                PopupMenuItem(
                  value: 1,
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 10),
                        width: 32,
                        height: 32,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Palette.loginleft,
                        ),
                      ),
                      Flexible(
                        child: SingleChildScrollView(
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: Text(
                              username,
                              style: const TextStyle(fontSize: 12),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 3,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                //名前の変更
                PopupMenuItem(
                  value: 1,
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 10),
                        width: 32,
                        height: 32,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Palette.loginleft,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(20),
                        child: Text(
                          '名前の変更',
                          style: TextStyle(fontSize: 12),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 3,
                        ),
                      ),
                    ],
                  ),
                ),
                //ログアウト
                PopupMenuItem(
                  value: 1,
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 10),
                        width: 32,
                        height: 32,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Palette.loginleft,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(20),
                        child: Text(
                          'ログアウト',
                          style: TextStyle(fontSize: 12),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 3,
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
}
