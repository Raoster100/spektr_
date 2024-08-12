import 'package:flutter/cupertino.dart';
import '../../../data/data_sources/core/app_remote_ds.dart';

abstract class AppService<Remote extends AppRemoteDataSource> {
  AppService(this.rds);

  final Remote rds;

  Future<void> init(BuildContext context);

  void dispose();
}
