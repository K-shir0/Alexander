import 'package:alexander/pages/theme/palette.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlexanderTextField extends StatelessWidget {
  final IconData iconName;
  final String label;
  final String engLabel;
  final String infomation;
  final bool obscureText;


  const AlexanderTextField({Key? key, required this.iconName,required this.label, required this.engLabel, required this.infomation,  this.obscureText = false}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0, right: 8.0),
                  child: Icon(iconName,
                      color: Palette.mainTextColor),
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
                            letterSpacing: 2.4000000000000004,),
                      ),
                    ),
                //   ],
                // ),
              ],
            ),
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
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Row(
              children: <Widget>[
                 const Padding(
                  padding: EdgeInsets.only(top: 8.0, right: 8.0),
                  child: Icon(Icons.info_outline_rounded,
                      color: Palette.emphasisTextColor),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    infomation,
                    style:  const TextStyle(
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
