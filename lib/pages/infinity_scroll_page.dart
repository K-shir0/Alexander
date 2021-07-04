import 'dart:ui';

import 'package:alexander/pages/mandala_chart_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class InfinityScrollPage extends HookWidget {
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
          Transform.translate(
            offset: offset.value + sessionOffset.value,
            child: Transform.scale(scale: scale.value, child: const Text('text')),
          ),
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
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          scale.value -= 0.1;
        },
      ),

      // body: SizedBox.expand(
      //   child: ClipRect(
      //     child: Stack()
      //     GestureDetector(
      //       // onPanUpdate: (_) {
      //       //   print(_.delta);
      //       //   offset.value += _.delta;
      //       // },
      //       onScaleStart: (details) {
      //         initOffset.value = details.focalPoint;
      //         scale.value = 1.0;
      //       },
      //       onScaleUpdate: (_) {
      //         sessionOffset.value = _.focalPoint - initOffset.value;
      //         scale.value = _.scale;
      //       },
      //       onScaleEnd: (_) {
      //         offset.value += sessionOffset.value;
      //         sessionOffset.value = Offset.zero;
      //       },
      //       child: Transform.translate(
      //         offset: offset.value + sessionOffset.value,
      //         child: Transform.scale(
      //             scale: scale.value,
      //             child: Text(
      //               'testaaaaaaaaaaaaaaaaaaaaaaaaaaaa',
      //               overflow: TextOverflow.visible,
      //             )),
      //       ),
      //     ),
      //   ),
      // ),
    );
  }
}
