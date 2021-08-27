import 'package:alexander/pages/theme/palette.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class MandalaChartPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 80, right: 80),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              TextButton(
                onPressed: () {},
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 12.0),
                      child: Icon(
                        Icons.arrow_back_ios_new_outlined,
                        size: 16,
                        color: Palette.mainTextColor,
                      ),
                    ),
                    const Text(
                      'ホームに戻る',
                      style: TextStyle(
                        fontSize: 12,
                        color: Palette.mainTextColor,
                        letterSpacing: 3.2,
                      ),
                    ),
                  ],
                ),
              ),
              const Gap(24),
              Container(
                child: Column(
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const MandalaBox(
                          setColor: Palette.bgContentsDarkColor,
                        ),
                        const MandalaBox(
                          setColor: Palette.bgContentsDarkColor,
                        ),
                        const MandalaBox(
                          setColor: Palette.bgContentsDarkColor,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const MandalaBox(
                          setColor: Palette.bgContentsDarkColor,
                        ),
                        const MandalaBox(
                          setColor: Palette.mandalaCenterColor,
                        ),
                        const MandalaBox(
                          setColor: Palette.bgContentsDarkColor,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const MandalaBox(
                          setColor: Palette.bgContentsDarkColor,
                        ),
                        const MandalaBox(
                          setColor: Palette.bgContentsDarkColor,
                        ),
                        const MandalaBox(
                          setColor: Palette.bgContentsDarkColor,
                        ),
                      ],
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

class MandalaBox extends HookWidget {
  final Color setColor;

  const MandalaBox({Key? key, required this.setColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final offset = useState(const Offset(0, 0));
    final isFocus = useState(false);

    Widget _card(bool hasFocus) {
      return SizedBox(
        height: 128,
        width: 128,
        child: Card(
          color: setColor,
          child: Center(
            child: TextFormField(
              enabled: hasFocus,
              style: const TextStyle(
                fontSize: 16,
              ),
              decoration: const InputDecoration(
                labelText: 'Text',
                border: InputBorder.none,
              ),
            ),
          ),
        ),
      );
    }

    return Focus(
      onFocusChange: (hasFocus) {
        if (hasFocus) {
        } else {
          isFocus.value = false;
          print('毎回呼ばれる');
        }
      },
      child: Builder(builder: (BuildContext context) {
        final FocusNode focusNode = Focus.of(context);
        final bool hasFocus = focusNode.hasFocus;

        return GestureDetector(
          onTap: () {
            if (!hasFocus) {
              // focusNode.requestFocus();
              print('test');
              isFocus.value = true;
            }
          },
          onPanUpdate: (_) {
            offset.value += _.delta;

            print(offset.value);
          },
          onPanEnd: (_) {
            offset.value = const Offset(0, 0);
          },
          child: Transform.translate(
            offset: offset.value,
            child: _card(isFocus.value),
          ),
        );
      }),
    );
  }
}
