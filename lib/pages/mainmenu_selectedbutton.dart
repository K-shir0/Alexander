import 'package:alexander/addIcon/web_icon_app_icons.dart';
import 'package:alexander/pages/theme/palette.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//採用・保留選択ドロップボタン
class Mystatefullwidget extends StatefulWidget {
  const Mystatefullwidget({Key? key}) : super(key: key);

  @override
  _MystatefullwidgetState createState() => _MystatefullwidgetState();
}

class _MystatefullwidgetState extends State<Mystatefullwidget> {
  String dropdownValue = '保留';
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(WebIconApp.keyboardarrowdown),
      iconEnabledColor: Palette.mainTextColor,
      style: const TextStyle(color: Palette.titleTextColor),
      underline: Container(
        height: 2,
        color: Palette.bgContentsLightColor,
      ),
      onChanged: (String? newValue) {
        setState(() {
          //各ボタンのクリックイベント
          dropdownValue = newValue!;
        });
      },
      items: <String>['採用', '保留', 'ボツ案', '無し']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
