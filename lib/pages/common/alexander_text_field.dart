import 'package:alexander/pages/theme/palette.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlexanderTextField extends StatelessWidget {
  final IconData iconName;
  final String label;
  final String engLabel;
  final String? information;
  final bool obscureText;

  const AlexanderTextField(
      {Key? key,
      required this.iconName,
      required this.label,
      required this.engLabel,
      this.information,
      this.obscureText = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            //左上テキストラベル
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0, right: 8.0),
                  child: Icon(iconName, color: Palette.mainTextColor),
                ),
                // Column(
                //   children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    label,
                    style: const TextStyle(
                      fontSize: 12,
                      color: Palette.mainTextColor,
                      letterSpacing: 2.4000000000000004,
                    ),
                  ),
                ),
                //   ],
                // ),
              ],
            ),
            //右上テキストラベル
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Text(engLabel,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Palette.accentTextColor,
                  )),
            )
          ],
        ),
        //入力テキストフィールド
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4.0),
            color: const Color(0xffedf0f0),
          ),
          child: TextField(
            obscureText: obscureText,
            decoration: const InputDecoration(
              border: InputBorder.none,
              // labelText: engLabel,
            ),
          ),
        ),
        //error用テキストラベル
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Row(
              children: <Widget>[
                if (information != null)
                  const Padding(
                    padding: EdgeInsets.only(top: 8.0, right: 8.0),
                    child: Icon(Icons.info_outline_rounded,
                        color: Palette.emphasisTextColor),
                  ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    information ?? '',
                    style: const TextStyle(
                      fontSize: 12,
                      color: Palette.emphasisTextColor,
                      letterSpacing: 2.4000000000000004,
                    ),
                  ),
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}
