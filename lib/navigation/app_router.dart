import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:spektr/domain/services/config_service.dart';
import 'package:spektr/domain/services/order_service.dart';
import 'package:spektr/domain/services/rent_service.dart';
import 'package:spektr/domain/services/work_service.dart';
import 'package:spektr/utils/auth_guard.dart';
import '../domain/services/vacancy_service.dart';
import '../presentation/screens/about/about_view.dart';
import '../presentation/screens/admin/admin_view.dart';
import '../presentation/screens/admin/login_view.dart';
import '../presentation/screens/root/root_view.dart';
import '../presentation/screens/rent/rent_view.dart';
import '../presentation/screens/vacancy/vacancy_view.dart';
import '../presentation/screens/work/work_view.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: Root.page,
          path: '/',
          initial: true,
          children: [
            AutoRoute(
              page: About.page,
              initial: true,
              path: 'about',
            ),
            AutoRoute(
              page: Rent.page,
              path: 'rent',
            ),
            AutoRoute(
              page: Vacancy.page,
              path: 'vacancy',
            ),
            AutoRoute(
                page: Work.page,
                path: 'work'
            ),
          ],
        ),
        AutoRoute(
          page: Login.page,
          path: '/login',
        ),
/*        AutoRoute(
          page: Admin.page,
          path: '/admin',
          guards: [AuthGuard()],
        )*/
      ];
}
