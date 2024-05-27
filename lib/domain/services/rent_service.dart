import 'package:flutter/src/widgets/framework.dart';
import 'package:spektr/data/data_sources/rent/remote_rent_ds.dart';
import 'package:spektr/data/models/models.dart';
import 'package:spektr/domain/services/core/app_service.dart';
import 'package:spektr/domain/services/core/repo_mixin.dart';
import '../../data/models/rent/rent_dto.dart';

class RentService extends AppService<RemoteRentDataSource>
    with RepoStyleMixin<RentDto, RentModel> {
  RentService(super.rds);

  @override
  Future<void> add(RentDto dto) async {
    final res = await rds.add(dto);
  }

  @override
  Future<void> delete(RentDto dto) async {

  }

  @override
  void dispose() {
    // TODO: implement dispose
  }

  @override
  Future<List<RentModel>> fetch() {
    // TODO: implement fetch
    throw UnimplementedError();
  }

  @override
  Future<List<RentModel>> fetchById(String id) {
    // TODO: implement fetchById
    throw UnimplementedError();
  }

  @override
  Future<RentModel?> getById(String id) {
    // TODO: implement getById
    throw UnimplementedError();
  }

  @override
  Future<void> init(BuildContext context) {
    // TODO: implement init
    throw UnimplementedError();
  }

  @override
  Future<void> patch(RentDto dto) {
    // TODO: implement patch
    throw UnimplementedError();
  }
}
