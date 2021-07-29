import 'package:alexander/addIcon/web_icon_app_icons.dart';
import 'package:alexander/pages/theme/palette.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//共有状態の時に呼ばれるウィジェット
class Shareuserinfo extends StatelessWidget {
  const Shareuserinfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //共有ユーザー
    final List<String> shereuser = [
      'user1',
    ];
    return SizedBox(
      width: 1160,
      height: 112,
      child: Container(
        color: Palette.bgContentsColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //共有状態の確認の表示ウィジェット
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 80),
                  width: 16,
                  height: 16,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Palette.emphasisTetxColor,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    '共有済み',
                    style: TextStyle(
                      color: Palette.emphasisTetxColor,
                    ),
                  ),
                ),
              ],
            ),
            //共有しているユーザー名を格納するウィジェット
            SizedBox(
              width: 600,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 3,
                  vertical: 3,
                ),
                height: 30,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: shereuser.length,
                  itemBuilder: (context, index) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 32,
                          height: 32,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Palette.loginleft,
                          ),
                        ),
                        Text(
                          shereuser[index],
                          style: const TextStyle(
                              fontSize: 20, color: Palette.titleTextColor),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
            //招待ボタンを作成したウィジェット
            Container(
              height: 40,
              width: 110,
              margin: const EdgeInsets.only(right: 80),
              decoration: BoxDecoration(
                color: Palette.whitecolor,
                border: Border.all(color: Palette.inviteandborder, width: 2),
                borderRadius: BorderRadius.circular(5),
              ),
              child: InkWell(
                onTap: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      WebIconApp.share,
                      color: Palette.inviteandborder,
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 5, bottom: 5),
                      child: const Text(
                        '招待',
                        style: TextStyle(
                            color: Palette.inviteandborder, fontSize: 15),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//非共有状態の時に呼び出されるウィジェット
class Notshareuserinfo extends StatelessWidget {
  const Notshareuserinfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 1160,
      height: 112,
      child: Container(
        color: Palette.bgContentsColor,
      ),
    );
  }
}
