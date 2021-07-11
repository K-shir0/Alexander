import 'package:flutter/material.dart';

class IdeaPage extends StatefulWidget {
  const IdeaPage({Key? key}) : super(key: key);

  @override
  _IdeaPageState createState() => _IdeaPageState();
}

class _IdeaPageState extends State<IdeaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alexanser IdeaPage'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Text('Hellow Page'),
          ],
        ),
      ),
    );
  }
}
