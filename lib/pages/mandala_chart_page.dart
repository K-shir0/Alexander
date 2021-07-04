import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class MandalaChartPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            MandalaBox(),
            MandalaBox(),
            MandalaBox(),
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            MandalaBox(),
            MandalaBox(),
            MandalaBox(),
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            MandalaBox(),
            MandalaBox(),
            MandalaBox(),
          ],
        ),
      ],
    );
  }
}

class MandalaBox extends HookWidget {
  // KeyEventResult _handleKeyPress(FocusNode node, RawKeyEvent event) {
  //   if (event is RawKeyDownEvent) {
  //     print('test ${node.offset}');
  //
  //     return KeyEventResult.handled;
  //   }
  //   return KeyEventResult.ignored;
  // }

  @override
  Widget build(BuildContext context) {
    final offset = useState(const Offset(0, 0));
    final isFocus = useState(false);

    Widget _card(bool hasFocus) {
      return SizedBox(
        height: 128,
        width: 128,
        child: Card(
          child: Column(
            children: [
              TextFormField(
                enabled: hasFocus,
                initialValue: 'test',
              ),
              Text(hasFocus ? 'true' : 'false'),
            ],
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
              focusNode.requestFocus();
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
