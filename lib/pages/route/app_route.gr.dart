// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:alexander/pages/default_page.dart' as _i4;
import 'package:alexander/pages/home_menu_page.dart' as _i5;
import 'package:alexander/pages/login_page.dart' as _i6;
import 'package:alexander/pages/route/guard/auth_route_guard.dart' as _i3;
import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

class AppRouter extends _i1.RootStackRouter {
  AppRouter(
      {_i2.GlobalKey<_i2.NavigatorState>? navigatorKey,
      required this.authGuard})
      : super(navigatorKey);

  final _i3.AuthGuard authGuard;

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    DefaultRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i4.DefaultPage();
        }),
    HomeRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final pathParams = data.pathParams;
          final args = data.argsAs<HomeRouteArgs>(
              orElse: () => HomeRouteArgs(id: pathParams.getString('id')));
          return _i5.HomePage(id: args.id);
        }),
    LoginRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i6.LoginPage();
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(DefaultRoute.name, path: '/home', guards: [authGuard]),
        _i1.RouteConfig(HomeRoute.name, path: '/home/:id', guards: [authGuard]),
        _i1.RouteConfig(LoginRoute.name, path: '/login'),
        _i1.RouteConfig('*#redirect',
            path: '*', redirectTo: '/home', fullMatch: true)
      ];
}

class DefaultRoute extends _i1.PageRouteInfo {
  const DefaultRoute() : super(name, path: '/home');

  static const String name = 'DefaultRoute';
}

class HomeRoute extends _i1.PageRouteInfo<HomeRouteArgs> {
  HomeRoute({required String id})
      : super(name,
            path: '/home/:id',
            args: HomeRouteArgs(id: id),
            rawPathParams: {'id': id});

  static const String name = 'HomeRoute';
}

class HomeRouteArgs {
  const HomeRouteArgs({required this.id});

  final String id;
}

class LoginRoute extends _i1.PageRouteInfo {
  const LoginRoute() : super(name, path: '/login');

  static const String name = 'LoginRoute';
}
