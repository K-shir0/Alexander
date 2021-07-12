import 'package:flutter/cupertino.dart';

class SearchModel extends ChangeNotifier {
  String text = ''; // TextFieldの値を受け取ります

  // 適当なリストを用意
  // Firestoreなどからもってきて使うなど応用してください
  List<String> searchList = [
    'りんご',
    'ごりら',
    'ラッパ',
    '狸',
    'きつね',
    'ねこ',
    'こま',
    'まんとひひ',
    'ヒント',
    'トマト',
    'トートロジー'
  ];

  List<String> searchResultList = []; // 検索結果が渡されます

  // 検索の中身
  search() {
    if (text.isNotEmpty) {
      // 何か文字が入力された実行する
      searchResultList.clear(); // .add で増やしているので毎回clearしている
      // ここから検索処理
      searchList.forEach(
        (element) {
          if (element.contains(text)) {
            // .contains で文字列の部分一致を判定できる
            searchResultList.add(element); // 一致している要素があれば追加する
          }
        },
      );
      notifyListeners(); // これを実行すると再描画される
    }
  }
}
