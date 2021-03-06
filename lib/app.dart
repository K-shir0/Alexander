import 'package:alexander/pages/route/guard/auth_route_guard.dart';
import 'package:alexander/view_model/common/auth_state_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:alexander/pages/route/app_route.gr.dart';

class App extends HookWidget {
  // This widget is the root of your application.
  final _appRouter = AppRouter(authGuard: AuthGuard());

  @override
  Widget build(BuildContext context) {
    //　起動時に一度だけログイン済みかチェックする
    useEffect(() {
      WidgetsBinding.instance?.addPostFrameCallback((_) {
        context.read(authStateProvider.notifier).self();
      });
    }, []);

    if (!useProvider(authStateProvider).isChecked) {
      print('Container');
      return Container();
    }

    return MaterialApp.router(
      title: 'Alexander',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Noto Sans JP',
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
      routeInformationParser: _appRouter.defaultRouteParser(),
      routerDelegate: _appRouter.delegate(),
    );
  }
}
