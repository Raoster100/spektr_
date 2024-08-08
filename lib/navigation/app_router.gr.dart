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
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AdminView(),
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
class Admin extends PageRouteInfo<void> {
  const Admin({List<PageRouteInfo>? children})
      : super(
          Admin.name,
          initialChildren: children,
        );

  static const String name = 'Admin';

  static const PageInfo<void> page = PageInfo<void>(name);
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
