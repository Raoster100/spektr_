import 'package:flutter/src/widgets/framework.dart';
import 'package:spektr/data/data_sources/config/remote_config_ds.dart';
import 'package:spektr/data/models/models.dart';
import 'package:spektr/domain/services/core/app_service.dart';
import 'package:spektr/domain/services/core/repo_mixin.dart';
import '../../data/models/config/config_dto.dart';

class ConfigService extends AppService<RemoteConfigDataSource>
    with RepoStyleMixin<ConfigDto, ConfigModel> {
  ConfigService(super.rds);

  @override
  Future<void> add(ConfigDto dto) async {
    final res = await rds.add(dto);
  }

  @override
  Future<void> delete(ConfigDto dto) async {

  }

  @override
  void dispose() {
    // TODO: implement dispose
  }

  @override
  Future<List<ConfigModel>> fetch() {
    // TODO: implement fetch
    throw UnimplementedError();
  }

  @override
  Future<List<ConfigModel>> fetchById(String id) {
    // TODO: implement fetchById
    throw UnimplementedError();
  }

  @override
  Future<ConfigModel?> getById(String id) {
    // TODO: implement getById
    throw UnimplementedError();
  }

  @override
  Future<void> init(BuildContext context) {
    // TODO: implement init
    throw UnimplementedError();
  }

  @override
  Future<void> patch(ConfigDto dto) {
    // TODO: implement patch
    throw UnimplementedError();
  }
}
