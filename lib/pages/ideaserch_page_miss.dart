/*
  検索処理を書いてしまったので参考にしてください
*/

import 'package:alexander/pages/search_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class IdeaPagemiss extends StatefulWidget {
  const IdeaPagemiss({Key? key}) : super(key: key);

  @override
  _IdeaPagemissState createState() => _IdeaPagemissState();
}

class _IdeaPagemissState extends State<IdeaPagemiss> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<SearchModel>(
      create: (_) => SearchModel(),
      // Consumerを使えば上で宣言したmodelにアクセスできるみたいです
      child: Consumer<SearchModel>(builder: (context, model, child) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: const Text('テスト'),
          ),
          body: Column(
            children: [
              TextField(
                onChanged: (text) {
                  // onChangedは入力されている文字が変更するたびに呼ばれる
                  model.text = text;
                  model.search();
                },
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.all(20),
                  prefixIcon: Icon(Icons.search, color: Colors.white),
                  hintText: '名前で調べる...',
                ),
              ),
              const Text('検索結果がリストで表示されます'),
              Expanded(
                child: ListView.builder(
                  itemCount:
                      model.searchResultList.length, // ここで要素数を指定できる 検索結果の長さを渡す
                  itemBuilder: (BuildContext context, int index) {
                    return _searchList(context, model, index); // 上で指定した数だけ繰り返す
                  },
                ),
              ),
            ],
          ),
        );
      }),
    );
  }

  Widget _searchList(BuildContext context, SearchModel model, int index) {
    return ListTile(
      title: Text(model.searchResultList.elementAt(index)), // 候補リストのListTileを生成
    );
  }
}
