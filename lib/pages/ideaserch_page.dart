import 'package:flutter/material.dart';

class IdeaPage extends StatefulWidget {
  const IdeaPage({Key? key}) : super(key: key);

  @override
  _IdeaPageState createState() => _IdeaPageState();
}

class _IdeaPageState extends State<IdeaPage> {
  @override
  Widget build(BuildContext context) {
    //画面サイズを取得
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alexander IdeaserchPage'),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            //true = 表示, false = 非表示
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(''),
                SizedBox(
                  width: size.width / 4,
                  child: const TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      prefixIcon: Icon(Icons.search),
                      hintText: '検索',
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('ボツリスト'),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
