import 'package:flutter/src/widgets/framework.dart';
import 'package:spektr/data/data_sources/work/remote_work_ds.dart';
import 'package:spektr/data/models/models.dart';
import 'package:spektr/data/models/work/work_dto.dart';
import 'package:spektr/domain/services/core/app_service.dart';
import 'package:spektr/domain/services/core/repo_mixin.dart';

class WorkService extends AppService<RemoteWorkDataSource>
    with RepoStyleMixin<WorkDto, WorkModel> {
  WorkService(super.rds);

  @override
  Future<void> add(WorkDto dto) async {
    await rds.add(dto);
  }

  @override
  Future<void> delete(WorkDto dto) async {
    final res = dto.id;
    if (res == null) return;
    rds.delete(res);
  }

  @override
  void dispose() {
    // TODO: implement dispose
  }

  @override
  Future<List<WorkModel>> fetch() async {
    final res = await rds.fetch();
    return res.body ?? [];
  }

  @override
  Future<List<WorkModel>> fetchById(String id) {
    // TODO: implement fetchById
    throw UnimplementedError();
  }

  @override
  Future<WorkModel?> getById(String id) async {
    final res = await rds.getById(id as int);
    return res.body;
  }

  @override
  Future<void> init(BuildContext context) {
    // TODO: implement init
    throw UnimplementedError();
  }

  @override
  Future<void> patch(WorkDto dto) async {
    await rds.edit(dto);
  }
}
