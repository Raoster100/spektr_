/*


import 'package:chopper/chopper.dart';
import 'package:flutter/cupertino.dart';
import 'package:spektr/domain/di/core/app_async_dependency.dart';

class GlobalDependency extends AppAsyncDependency {
  GlobalDependency(super.context);

  @override
  Future<void> init(BuildContext context) async {
    final uploadWds = WebUploadDataSource();
    _errorService = ErrorService(context);
    _uploadService = UploadService(uploadWds, _errorService);
    _authService.init(context);
  }

  final ChopperClient _chopper = ChopperClient(
    baseUrl: 'https://spectre.sbeusilent.space/',
    converter: JsonMappableConverter(),
    errorConverter: JsonMappableConverter(),
  );

  late final ErrorService _errorService;
  late final UploadService _uploadService;

  ErrorService get errorService => _errorService;
  UploadService get uploadService => _uploadService;
  ChopperClient get chopper => _chopper;
  
}
*/
