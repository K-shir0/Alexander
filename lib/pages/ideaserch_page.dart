import 'package:flutter/material.dart';

class IdeaPage extends StatefulWidget {
  const IdeaPage({Key? key}) : super(key: key);

  @override
  _IdeaPageState createState() => _IdeaPageState();
}

class _IdeaPageState extends State<IdeaPage> {
  //検索バーの出現を管理するための変数
  bool searchcheck = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alexander IdeaserchPage'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            //検索ボタンをクリック時
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            //true = 表示, false = 非表示
            if (searchcheck == true)
              const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  prefixIcon: Icon(Icons.search),
                  hintText: '検索',
                ),
              ),
          ],
        ),
      ),
    );
  }
}
