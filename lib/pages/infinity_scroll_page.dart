import 'dart:ui';

import 'package:alexander/pages/mandala_chart_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class InfinityScrollPage extends HookWidget {
  final widgets = [
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        MandalaChartPage(),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final offset = useState(Offset.zero);
    final sessionOffset = useState(Offset.zero);
    final initOffset = useState(Offset.zero);
    final initScale = useState(0.0);
    final scale = useState(1.0);

    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          ClipRect(
            child: GestureDetector(
              onScaleStart: (details) {
                initOffset.value = details.focalPoint;
                initScale.value = scale.value;
              },
              onScaleUpdate: (_) {
                sessionOffset.value = _.focalPoint - initOffset.value;
                scale.value = _.scale * initScale.value;
              },
              onScaleEnd: (_) {
                offset.value += sessionOffset.value;
                sessionOffset.value = Offset.zero;
              },
            ),
          ),
          ClipRect(
            child: SizedBox.expand(
              child: Center(
                child: Transform.translate(
                  offset: offset.value + sessionOffset.value,
                  child: Transform.scale(
                    scale: scale.value,
                    child: Wrap(
                      children: widgets,
                    ),
                  ),
                ),
              ),
            ),
          ),
          /**
           * 左下のアイコンの所
           */
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      scale.value += 0.1;
                    },
                    icon: const Icon(Icons.add),
                    tooltip: '拡大',
                  ),
                  IconButton(
                    onPressed: () {
                      if (scale.value >= 0.2) {
                        scale.value -= 0.1;
                      }
                    },
                    icon: const Icon(Icons.remove),
                    tooltip: '縮小',
                  ),
                  IconButton(
                    onPressed: () {
                      scale.value = 1.0;
                      offset.value = Offset.zero;
                    },
                    icon: const Icon(Icons.center_focus_strong),
                    tooltip: '中心',
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
