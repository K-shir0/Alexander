import 'package:alexander/pages/home_menu.dart';
import 'package:alexander/pages/login_page.dart';
import 'package:alexander/pages/sign_up_page.dart';
import 'package:alexander/pages/auth_sample_page.dart';
import 'package:alexander/service/auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'pages/counter_page.dart';

class App extends HookWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    useProvider(authProvider);

    //　起動時に一度だけログイン済みかチェックする
    useEffect(() {
      WidgetsBinding.instance?.addPostFrameCallback((_) {
        context.read(authProvider).getCookie();
      });
    }, []);

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/test',
      routes: {
        '/': (BuildContext context) =>
            const CounterPage(title: 'Flutter Demo Home Page'),
        '/login': (BuildContext context) => const LoginPage(),
        '/signup': (BuildContext context) => const SignUpPage(),
        '/home': (BuildContext context) => const HomePage(),
        '/test': (BuildContext context) => AuthSamplePage(),
      },
    );
  }
}
