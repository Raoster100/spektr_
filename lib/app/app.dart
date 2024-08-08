import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:spektr/domain/di/core/app_async_dependency_widget.dart';
import 'package:spektr/domain/di/global_dependency.dart';
import 'package:spektr/navigation/app_router.dart';
import 'package:sbeu_reactive_pattern/sbeu_reactive_pattern.dart';

enum AppPage {
  about,
  rent,
  work,
  vacancy;
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);
  static bool isAuthorized = false;
  static final router = AppRouter();

  static ReactiveContainer<AppPage> currentPage = ReactiveContainer(
    initialValue: AppPage.about,
  );

  @override
  Widget build(BuildContext context) {
    return AppAsyncDependencyWidget<GlobalDependency>(
      child: MaterialApp.router(
        scrollBehavior: const MaterialScrollBehavior().copyWith(
          dragDevices: {
            PointerDeviceKind.mouse,
            PointerDeviceKind.touch,
            PointerDeviceKind.stylus,
            PointerDeviceKind.unknown
          },
        ),
        title: 'СпектрСвязьСтрой',
        routerConfig: router.config(),
      ),
      create: GlobalDependency.new,
      dispose: (context, data) => data.dispose(),
      loadingBuilder: (context) => CircularProgressIndicator(),
    );
  }
}
