import 'package:alexander/addIcon/web_icon_app_icons.dart';
import 'package:alexander/pages/theme/palette.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//検索バー
class Mainmenuserch extends StatelessWidget {
  const Mainmenuserch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 437,
      height: 32,
      child: TextField(
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            borderSide: BorderSide(
              color: Palette.borderColor,
            ),
          ),
          prefixIcon: Icon(Icons.search),
          hintText: '検索',
        ),
      ),
    );
  }
}

//チームを抜けるボタン
class Exitteambutton extends StatelessWidget {
  const Exitteambutton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
            style: TextStyle(color: Palette.mainTextColor),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}

//整理整頓ボタン表示
class TidyButton extends StatefulWidget {
  const TidyButton({Key? key}) : super(key: key);

  @override
  _TidyButtonState createState() => _TidyButtonState();
}

class _TidyButtonState extends State<TidyButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 178,
      height: 32,
      decoration: BoxDecoration(
        color: Palette.inviteandborder,
        // 角丸
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.only(bottom: 5),
            child: Text(
              '整理整頓をする',
              style:
                  TextStyle(color: Palette.bgContentsLightColor, fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ),
          PopupMenuButton(
            icon: const Icon(
              WebIconApp.keyboardarrowdown,
              color: Palette.bgContentsLightColor,
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
              const PopupMenuItem(
                  value: 1,
                  child: Text(
                    '1:採用を先頭にする',
                    style:
                        TextStyle(fontSize: 12, color: Palette.titleTextColor),
                  )),
              const PopupMenuItem(
                  value: 2,
                  child: Text(
                    '2:保留を先頭にする',
                    style:
                        TextStyle(fontSize: 12, color: Palette.titleTextColor),
                  )),
              const PopupMenuItem(
                  value: 3,
                  child: Text(
                    '3:ボツ案を先頭にする',
                    style:
                        TextStyle(fontSize: 12, color: Palette.titleTextColor),
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
