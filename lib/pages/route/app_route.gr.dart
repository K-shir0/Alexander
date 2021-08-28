// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:alexander/pages/counter_page.dart' as _i12;
import 'package:alexander/pages/default_page.dart' as _i7;
import 'package:alexander/pages/home_menu.dart' as _i4;
import 'package:alexander/pages/home_sample_page.dart' as _i8;
import 'package:alexander/pages/index_page.dart' as _i3;
import 'package:alexander/pages/infinity_scroll_page.dart' as _i10;
import 'package:alexander/pages/login_page.dart' as _i5;
import 'package:alexander/pages/mandala_algorithm_page.dart' as _i11;
import 'package:alexander/pages/mandala_chart_page.dart' as _i9;
import 'package:alexander/pages/sign_up_page.dart' as _i6;
import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    IndexRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i3.IndexPage();
        }),
    HomeRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i4.HomePage();
        }),
    LoginRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i5.LoginPage();
        }),
    SignUpRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i6.SignUpPage();
        }),
    DefaultRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i7.DefaultPage();
        }),
    HomeSampleRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final pathParams = data.pathParams;
          final args = data.argsAs<HomeSampleRouteArgs>(
              orElse: () =>
                  HomeSampleRouteArgs(id: pathParams.getString('id')));
          return _i8.HomeSamplePage(id: args.id);
        }),
    MandalaChartRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i9.MandalaChartPage();
        }),
    InfinityScrollRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i10.InfinityScrollPage();
        }),
    MandalaAlgorithmRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i11.MandalaAlgorithmPage();
        }),
    CounterRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<CounterRouteArgs>();
          return _i12.CounterPage(key: args.key, title: args.title);
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(IndexRoute.name, path: '/'),
        _i1.RouteConfig(HomeRoute.name, path: '/home'),
        _i1.RouteConfig(LoginRoute.name, path: '/login'),
        _i1.RouteConfig(SignUpRoute.name, path: '/signup'),
        _i1.RouteConfig(DefaultRoute.name, path: '/test/home'),
        _i1.RouteConfig(HomeSampleRoute.name, path: '/test/home/:id'),
        _i1.RouteConfig(MandalaChartRoute.name, path: '/test/mandala'),
        _i1.RouteConfig(InfinityScrollRoute.name, path: '/test/infinity'),
        _i1.RouteConfig(MandalaAlgorithmRoute.name,
            path: '/test/mandala_algorithm'),
        _i1.RouteConfig(HomeSampleRoute.name, path: '/test/home/:id'),
        _i1.RouteConfig(CounterRoute.name, path: '/counter')
      ];
}

class IndexRoute extends _i1.PageRouteInfo {
  const IndexRoute() : super(name, path: '/');

  static const String name = 'IndexRoute';
}

class HomeRoute extends _i1.PageRouteInfo {
  const HomeRoute() : super(name, path: '/home');

  static const String name = 'HomeRoute';
}

class LoginRoute extends _i1.PageRouteInfo {
  const LoginRoute() : super(name, path: '/login');

  static const String name = 'LoginRoute';
}

class SignUpRoute extends _i1.PageRouteInfo {
  const SignUpRoute() : super(name, path: '/signup');

  static const String name = 'SignUpRoute';
}

class DefaultRoute extends _i1.PageRouteInfo {
  const DefaultRoute() : super(name, path: '/test/home');

  static const String name = 'DefaultRoute';
}

class HomeSampleRoute extends _i1.PageRouteInfo<HomeSampleRouteArgs> {
  HomeSampleRoute({required String id})
      : super(name,
            path: '/test/home/:id',
            args: HomeSampleRouteArgs(id: id),
            rawPathParams: {'id': id});

  static const String name = 'HomeSampleRoute';
}

class HomeSampleRouteArgs {
  const HomeSampleRouteArgs({required this.id});

  final String id;
}

class MandalaChartRoute extends _i1.PageRouteInfo {
  const MandalaChartRoute() : super(name, path: '/test/mandala');

  static const String name = 'MandalaChartRoute';
}

class InfinityScrollRoute extends _i1.PageRouteInfo {
  const InfinityScrollRoute() : super(name, path: '/test/infinity');

  static const String name = 'InfinityScrollRoute';
}

class MandalaAlgorithmRoute extends _i1.PageRouteInfo {
  const MandalaAlgorithmRoute() : super(name, path: '/test/mandala_algorithm');

  static const String name = 'MandalaAlgorithmRoute';
}

class CounterRoute extends _i1.PageRouteInfo<CounterRouteArgs> {
  CounterRoute({_i2.Key? key, required String title})
      : super(name,
            path: '/counter', args: CounterRouteArgs(key: key, title: title));

  static const String name = 'CounterRoute';
}

class CounterRouteArgs {
  const CounterRouteArgs({this.key, required this.title});

  final _i2.Key? key;

  final String title;
}
