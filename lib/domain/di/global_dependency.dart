import 'package:chopper/chopper.dart';
import 'package:flutter/cupertino.dart';
import 'package:spektr/domain/di/core/app_async_dependency.dart';
import '../../data/converters/json_mappable_converter.dart';
import '../../data/data_sources/upload/web_upload_ds.dart';
import '../services/upload_service.dart';

class GlobalDependency extends AppAsyncDependency {
  GlobalDependency(super.context);

  late final UploadService _uploadService;
  late final ChopperClient _chopper;

  @override
  Future<void> init(BuildContext context) async {
    final uploadWds = WebUploadDataSource();
    _uploadService = UploadService(uploadWds);
    _chopper = ChopperClient(
      baseUrl: Uri.parse('https://spectre.sbeusilent.space/'),
      converter: JsonMappableConverter(),
      errorConverter: JsonMappableConverter(),
    );
  }

  UploadService get uploadService => _uploadService;
  ChopperClient get chopper => _chopper;

  @override
  void dispose() {
    _chopper.dispose();
  }
}
