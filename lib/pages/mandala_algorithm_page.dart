import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class MandalaAlgorithmPage extends HookWidget {
  int size = 3;

  final mandalaMaps = [
    [true, true, true],
    [false, true, true],
    [false, false, false]
  ];

  @override
  Widget build(BuildContext context) {
    final array = List<bool?>.filled(3 * 3 * size * size, false);

    int hasi = size * 3 - 1;

    String tmp = '';
    for (int i = 0; i < array.length; i++) {
      // 四隅
      if (i == 0 ||
          i == hasi ||
          i == array.length - 1 ||
          i == array.length - 1 - hasi) {
        array[i] = true;
      }

      // 最前列
      if (i >= 0 && i <= hasi && (i - 1) % 3 == 0) {
        array[i] = true;
      }

      // 最後列
      if (i >= array.length - hasi && i <= array.length && (i - 1) % 3 == 0) {
        array[i] = true;
      }

      // 前
      if (i % (3 * size) == 0 && (i - 1 - hasi) % (9 * size) == 0) {
        // print( );
        array[i] = true;
      }

      // 後
      if ( (i - hasi) % (3 * size) == 0 && (i - hasi - 3 * size) % (9 * size) == 0) {
        // print( );
        array[i] = true;
      }

      final mandala = mandalaMaps[i ~/ 3 ~/ 3 ~/ 3][i % (hasi + 1) ~/ 3];

      if (!mandala) {
        array[i] = null;
      }

      // print(mandalaMaps);

      // print( i ~/ 3 / 3 / 3); // 縦
      // print( i % (hasi + 1) / 3); // 横

      if (array[i] == null) {
        tmp += '×';
      } else if (array[i] ?? false){
        tmp += '■';
      } else {
        tmp += '□';
      }

      if ((i + 1) % (hasi + 1) == 0) {
        print(tmp);
        tmp = '';
      }
    }

    return Scaffold(
      appBar: AppBar(),
      body: Container(),
    );
  }
}
