import 'package:chopper/chopper.dart';
import 'package:spektr/data/data_sources/core/app_remote_ds.dart';
import 'package:spektr/data/models/models.dart';
import '../../models/config/config_dto.dart';

part 'remote_config_ds.chopper.dart';

@ChopperApi(baseUrl: 'Config')
abstract class RemoteConfigDataSource extends ChopperService
    implements AppRemoteDataSource {
  static RemoteConfigDataSource create([ChopperClient? client]) =>
      _$RemoteConfigDataSource(client);

  @Get()
  Future<Response<List<ConfigModel>>> fetch();

  @Get(path: r'/{id}')
  Future<Response<ConfigModel>> getById(@Path() final String id);

  @Post()
  Future<Response<dynamic>> add(@Body() final ConfigDto dto);

  @Patch()
  Future<Response<dynamic>> edit(@Body() final ConfigDto dto);

  @Delete()
  Future<Response<dynamic>> delete(@Path() final String id);
}
