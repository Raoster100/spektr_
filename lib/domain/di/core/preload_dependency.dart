/*
import 'package:flutter/cupertino.dart';

import 'app_async_dependency.dart';

class PreloadDependency extends AppAsyncDependency {
  PreloadDependency(super.context);

  late final LocalAuthDataSource _authLds;

  LocalAuthDataSource get authLds => _authLds;

  @override
  Future<void> init(BuildContext context) async {
    _authLds = LocalAuthDataSource();
    await _authLds.readToken();
  }

  @override
  void dispose() {}
}*/
