import 'package:chopper/chopper.dart';
import 'package:spektr/data/data_sources/core/app_remote_ds.dart';
import 'package:spektr/data/models/models.dart';
import '../../models/vacancy/vacancy_dto.dart';

part 'remote_vacancy_ds.chopper.dart';

@ChopperApi(baseUrl: 'Vacancy')
abstract class RemoteVacancyDataSource extends ChopperService
    implements AppRemoteDataSource {
  static RemoteVacancyDataSource create([ChopperClient? client]) =>
      _$RemoteVacancyDataSource(client);

  @Get()
  Future<Response<List<VacancyModel>>> fetch();

  @Get(path: r'/{id}')
  Future<Response<List<VacancyModel>>> getByVacancyId(@Path() final String id);

  @Post()
  Future<Response<dynamic>> add(@Body() final VacancyDto dto);

  @Patch()
  Future<Response<dynamic>> edit(@Body() final VacancyDto dto);

  @Delete()
  Future<Response<dynamic>> delete(@Path() final String id);
}
