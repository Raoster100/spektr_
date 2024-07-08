import 'package:chopper/chopper.dart';
import 'package:spektr/data/data_sources/core/app_remote_ds.dart';
import 'package:spektr/data/models/models.dart';
import 'package:spektr/data/models/work/work_dto.dart';

part 'remote_work_ds.chopper.dart';

@ChopperApi(baseUrl: 'Work')
abstract class RemoteWorkDataSource extends ChopperService
    implements AppRemoteDataSource {
  static RemoteWorkDataSource create([ChopperClient? client]) =>
      _$RemoteWorkDataSource(client);

  @Get()
  Future<Response<List<WorkModel>>> fetch();

  @Get(path: r'/{id}')
  Future<Response<WorkModel>> getById(@Path('id') final int id);

  @Post()
  Future<Response<dynamic>> add(@Body() final WorkDto dto);

  @Patch()
  Future<Response<dynamic>> edit(@Body() final WorkDto dto);

  @Delete()
  Future<Response<dynamic>> delete(@Path() final int id);
}
