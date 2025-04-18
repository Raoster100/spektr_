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
    await rds.add(dto);
  }

  @override
  Future<void> delete(VacancyDto dto) async {
    final res = dto.id;
    if (res == null) return;
    rds.delete(res);
  }

  @override
  void dispose() {
    // TODO: implement dispose
  }

  @override
  Future<List<VacancyModel>> fetch() async {
    final res = await rds.fetch();
    return res.body ?? [];
  }

  @override
  Future<List<VacancyModel>> fetchById(String id) {
    // TODO: implement fetchById
    throw UnimplementedError();
  }

  @override
  Future<VacancyModel?> getById(String id) async {
    final res = await rds.getById(id);
    return res.body;
  }

  @override
  Future<void> init(BuildContext context) {
    // TODO: implement init
    throw UnimplementedError();
  }

  @override
  Future<void> patch(VacancyDto dto) async {
    await rds.edit(dto);
  }
}
