import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IndexPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Wrap(
        children: [
          const LinkButton(title: 'カウンター', pushName: '/counter'),
          const LinkButton(title: 'ログインページ', pushName: '/login'),
          const LinkButton(title: '新規登録ページ', pushName: '/signup'),
          const LinkButton(title: 'ホーム', pushName: '/home'),
          const LinkButton(title: 'ログインテスト', pushName: '/test/login'),
        ],
      ),
    );
  }
}

class LinkButton extends StatelessWidget {
  final String title;
  final String pushName;

  const LinkButton({Key? key, required this.title, required this.pushName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, pushName);
      },
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(title),
        ),
      ),
    );
  }
}
