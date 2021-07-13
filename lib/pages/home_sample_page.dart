import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class HomeSamplePage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Row(
        children: [
          SizedBox(
            width: 256,
            child: HomeSampleSideMenu(),
          ),
          Text('test'),
        ],
      ),
    );
  }
}

class HomeSampleSideMenu extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Column(
        children: [
          ElevatedButton(onPressed: () {}, child: Text('add')),
          Column(
            children: [
              Text('Untitled'),
            ],
          )
        ],
      ),
    );
  }
}