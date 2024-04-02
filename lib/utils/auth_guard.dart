import 'package:auto_route/auto_route.dart';
import 'package:spektr/navigation/app_router.dart';

import '../app/app.dart';

class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    if (App.isAuthorized) {
      resolver.next(true);
    } else {
      resolver.redirect(const Login());
    }
  }
}