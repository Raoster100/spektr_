import 'package:flutter/cupertino.dart';
import '../../../data/data_sources/core/app_local_ds.dart';
import '../../../data/data_sources/core/app_remote_ds.dart';

abstract class AppService<Local extends AppLocalDataSource,
Remote extends AppRemoteDataSource> {
  AppService(this.lds, this.rds, );

  final Local lds;
  final Remote rds;


  Future<void> init(BuildContext context);
  void dispose();
}