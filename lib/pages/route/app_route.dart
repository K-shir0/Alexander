import 'package:alexander/pages/auth_sample_page.dart';
import 'package:alexander/pages/counter_page.dart';
import 'package:alexander/pages/default_page.dart';
import 'package:alexander/pages/home_menu.dart';
import 'package:alexander/pages/home_sample_page.dart';
import 'package:alexander/pages/index_page.dart';
import 'package:alexander/pages/infinity_scroll_page.dart';
import 'package:alexander/pages/login_page.dart';
import 'package:alexander/pages/mandala_algorithm_page.dart';
import 'package:alexander/pages/mandala_chart_page.dart';
import 'package:alexander/pages/sign_up_page.dart';
import 'package:auto_route/annotations.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      path: '/',
      page: IndexPage,
      initial: true,
    ),
    AutoRoute(
      path: '/home',
      page: HomePage,
    ),
    AutoRoute(
      path: '/login',
      page: LoginPage,
    ),
    AutoRoute(
      path: '/signup',
      page: SignUpPage,
    ),
    AutoRoute(
      path: '/test/login',
      page: AuthSamplePage,
    ),
    AutoRoute(
      path: '/test/home',
      page: DefaultPage,
    ),
    AutoRoute(
      path: '/test/home/:id',
      page: HomeSamplePage,
    ),
    AutoRoute(
      path: '/test/mandala',
      page: MandalaChartPage,
    ),
    AutoRoute(
      path: '/test/infinity',
      page: InfinityScrollPage,
    ),
    AutoRoute(
      path: '/test/mandala_algorithm',
      page: MandalaAlgorithmPage,
    ),
    AutoRoute(
      path: '/test/home/:id',
      page: HomeSamplePage,
    ),
    AutoRoute(
      path: '/counter',
      page: CounterPage,
    ),
  ],
)
class $AppRouter {}
