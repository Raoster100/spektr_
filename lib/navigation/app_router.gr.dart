// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    About.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AboutView(),
      );
    },
    Admin.name: (routeData) {
      final args = routeData.argsAs<AdminArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: AdminView(
          args.rentService,
          args.orderService,
          args.workService,
          args.vacancyService,
          args.configService,
          key: args.key,
        ),
      );
    },
    Login.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LoginView(),
      );
    },
    Rent.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const RentView(),
      );
    },
    Root.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const RootView(),
      );
    },
    Vacancy.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const VacancyView(),
      );
    },
    Work.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const WorkView(),
      );
    },
  };
}

/// generated route for
/// [AboutView]
class About extends PageRouteInfo<void> {
  const About({List<PageRouteInfo>? children})
      : super(
          About.name,
          initialChildren: children,
        );

  static const String name = 'About';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [AdminView]
class Admin extends PageRouteInfo<AdminArgs> {
  Admin({
    required RentService rentService,
    required OrderService orderService,
    required WorkService workService,
    required VacancyService vacancyService,
    required ConfigService configService,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          Admin.name,
          args: AdminArgs(
            rentService: rentService,
            orderService: orderService,
            workService: workService,
            vacancyService: vacancyService,
            configService: configService,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'Admin';

  static const PageInfo<AdminArgs> page = PageInfo<AdminArgs>(name);
}

class AdminArgs {
  const AdminArgs({
    required this.rentService,
    required this.orderService,
    required this.workService,
    required this.vacancyService,
    required this.configService,
    this.key,
  });

  final RentService rentService;

  final OrderService orderService;

  final WorkService workService;

  final VacancyService vacancyService;

  final ConfigService configService;

  final Key? key;

  @override
  String toString() {
    return 'AdminArgs{rentService: $rentService, orderService: $orderService, workService: $workService, vacancyService: $vacancyService, configService: $configService, key: $key}';
  }
}

/// generated route for
/// [LoginView]
class Login extends PageRouteInfo<void> {
  const Login({List<PageRouteInfo>? children})
      : super(
          Login.name,
          initialChildren: children,
        );

  static const String name = 'Login';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [RentView]
class Rent extends PageRouteInfo<void> {
  const Rent({List<PageRouteInfo>? children})
      : super(
          Rent.name,
          initialChildren: children,
        );

  static const String name = 'Rent';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [RootView]
class Root extends PageRouteInfo<void> {
  const Root({List<PageRouteInfo>? children})
      : super(
          Root.name,
          initialChildren: children,
        );

  static const String name = 'Root';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [VacancyView]
class Vacancy extends PageRouteInfo<void> {
  const Vacancy({List<PageRouteInfo>? children})
      : super(
          Vacancy.name,
          initialChildren: children,
        );

  static const String name = 'Vacancy';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [WorkView]
class Work extends PageRouteInfo<void> {
  const Work({List<PageRouteInfo>? children})
      : super(
          Work.name,
          initialChildren: children,
        );

  static const String name = 'Work';

  static const PageInfo<void> page = PageInfo<void>(name);
}
