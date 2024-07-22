import 'package:chopper/chopper.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:spektr/domain/di/core/app_async_dependency.dart';
import 'package:spektr/domain/services/order_service.dart';
import 'package:spektr/domain/services/rent_service.dart';
import 'package:spektr/domain/services/vacancy_service.dart';
import 'package:spektr/domain/services/work_service.dart';
import '../../data/converters/json_mappable_converter.dart';
import '../../data/data_sources/upload/web_upload_ds.dart';
import '../services/upload_service.dart';

class GlobalDependency extends AppAsyncDependency {
  GlobalDependency(super.context);

  late final UploadService _uploadService;
  late final ChopperClient _chopper;
  late final OrderService _orderService;
  late final RentService _rentService;
  late final WorkService _workService;
  late final VacancyService _vacancyService;

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
  OrderService get orderService => _orderService;
  RentService get rentService => _rentService;
  WorkService get workService => _workService;
  VacancyService get vacancyService => _vacancyService;

  @override
  void dispose() {
    _chopper.dispose();
  }
}

extension GlobalReader on BuildContext {
  GlobalDependency get global => read<GlobalDependency>();
}
