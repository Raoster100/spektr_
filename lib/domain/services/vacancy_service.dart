import 'package:flutter/src/widgets/framework.dart';
import 'package:spektr/data/data_sources/vacancy/remote_vacancy_ds.dart';
import 'package:spektr/data/models/models.dart';
import 'package:spektr/data/models/vacancy/vacancy_dto.dart';
import 'package:spektr/domain/services/core/app_service.dart';
import 'package:spektr/domain/services/core/repo_mixin.dart';

class VacancyService extends AppService<RemoteVacancyDataSource>
    with RepoStyleMixin<VacancyDto, VacancyModel> {
  VacancyService(super.rds);

  @override
  Future<void> add(VacancyDto dto) async {
    final res = await rds.add(dto);
  }

  @override
  Future<void> delete(VacancyDto dto) async {

  }

  @override
  void dispose() {
    // TODO: implement dispose
  }

  @override
  Future<List<VacancyModel>> fetch() {
    // TODO: implement fetch
    throw UnimplementedError();
  }

  @override
  Future<List<VacancyModel>> fetchById(String id) {
    // TODO: implement fetchById
    throw UnimplementedError();
  }

  @override
  Future<VacancyModel?> getById(String id) {
    // TODO: implement getById
    throw UnimplementedError();
  }

  @override
  Future<void> init(BuildContext context) {
    // TODO: implement init
    throw UnimplementedError();
  }

  @override
  Future<void> patch(VacancyDto dto) {
    // TODO: implement patch
    throw UnimplementedError();
  }
}
