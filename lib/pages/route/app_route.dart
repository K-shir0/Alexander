import 'package:alexander/pages/counter_page.dart';
import 'package:alexander/pages/default_page.dart';
import 'package:alexander/pages/index_page.dart';
import 'package:alexander/pages/infinity_scroll_page.dart';
import 'package:alexander/pages/login_page.dart';
import 'package:alexander/pages/mandala_algorithm_page.dart';
import 'package:alexander/pages/mandala_chart_page.dart';
import 'package:alexander/pages/route/guard/auth_route_guard.dart';
import 'package:alexander/pages/sign_up_page.dart';
import 'package:auto_route/annotations.dart';

import '../home_menu_page.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    // AutoRoute(
    //   path: '/',
    //   page: IndexPage,
    //   initial: true,
    // ),
    AutoRoute(
      path: '/home',
      page: DefaultPage,
      guards: [AuthGuard],
    ),
    AutoRoute(
      path: '/home/:id',
      page: HomePage,
      guards: [AuthGuard],
    ),
    AutoRoute(
      path: '/login',
      page: LoginPage,
    ),
    // AutoRoute(
    //   path: '/signup',
    //   page: SignUpPage,
    // ),
    // AutoRoute(
    //   path: '/test/mandala',
    //   page: MandalaChartPage,
    // ),
    // AutoRoute(
    //   path: '/test/infinity',
    //   page: InfinityScrollPage,
    // ),
    // AutoRoute(
    //   path: '/test/mandala_algorithm',
    //   page: MandalaAlgorithmPage,
    // ),
    // AutoRoute(
    //   path: '/counter',
    //   page: CounterPage,
    // ),
    RedirectRoute(path: '*', redirectTo: '/home'),
  ],
)
class $AppRouter {}
