import 'package:alexander/view_model/common/auth_state_notifier.dart';
import 'package:auto_route/auto_route.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    final context = router.navigatorKey.currentContext;

    final user = context?.read(authStateProvider).authUser;

    resolver.next();

    // if (user != null) {
    //   resolver.next();
    // } else {
    //   router.pushNamed('/login');
    // }
  }
}
