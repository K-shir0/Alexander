import 'package:alexander/pages/theme/palette.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../accordion_button.dart';

//共有状態の時に呼ばれるウィジェット
class Shareuserinfo extends StatelessWidget {
  const Shareuserinfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //共有ユーザー
    final List<String> shereuser = ['user1', 'isss'];

    return SizedBox(
      width: 1160,
      height: 80,
      child: Container(
        color: Palette.bgContentsColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //共有しているユーザー名を格納するウィジェット
            Padding(
              padding: const EdgeInsets.only(left: 136),
              child: SizedBox(
                width: 600,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 3,
                    vertical: 3,
                  ),
                  height: 40,
                  //共有ユーザー名の表示
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: shereuser.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Row(
                          children: [
                            AccordionIconButton(
                              iconSize: 30,
                              maxWidth: 100,
                              label: shereuser[index],
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
            //共有中表示
            Padding(
              padding: const EdgeInsets.only(right: 80),
              child: Container(
                padding: const EdgeInsets.all(5.0),
                width: 112,
                height: 40,
                decoration: BoxDecoration(
                  border: Border.all(color: Palette.emphasisTextColor),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 16,
                      height: 16,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Palette.emphasisTextColor,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 5),
                      child: Text(
                        '共有中',
                        style: TextStyle(
                            color: Palette.emphasisTextColor, fontSize: 16),
                      ),
                    ),
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
    const String user = 'user1'; //非共有時のユーザー名
    return SizedBox(
      width: 1160,
      height: 80,
      child: Container(
        color: Palette.bgContentsNormalColor,
        child: Padding(
          padding: const EdgeInsets.only(left: 136, right: 80),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const AccordionIconButton(
                iconSize: 30,
                maxWidth: 100,
                label: user,
              ),
              //非共有中表示
              Container(
                padding: const EdgeInsets.all(5.0),
                width: 112,
                height: 40,
                decoration: BoxDecoration(
                  border: Border.all(color: Palette.accentTextColor),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 16,
                      height: 16,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Palette.accentTextColor,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 5),
                      child: Text(
                        '非共有',
                        style: TextStyle(
                            color: Palette.accentTextColor, fontSize: 16),
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
