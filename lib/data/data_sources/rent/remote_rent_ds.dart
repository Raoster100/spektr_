import 'package:chopper/chopper.dart';
import 'package:spektr/data/data_sources/core/app_remote_ds.dart';
import 'package:spektr/data/models/models.dart';
import '../../models/rent/rent_dto.dart';

/*part 'remote_rent_ds.chopper.dart';*/

@ChopperApi(baseUrl: 'Rent')
abstract class RemoteRentDataSource extends ChopperService
    implements AppRemoteDataSource {
/*  static RemoteRentDataSource create([ChopperClient? client]) =>
      _$RemoteRentDataSource(client);*/

  @Get()
  Future<Response<List<RentModel>>> fetch();

  @Get(path: r'/{id}')
  Future<Response<List<RentModel>>> getByRentId(@Path() final String id);

  @Post()
  Future<Response<dynamic>> add(@Body() final RentDto dto);

  @Patch()
  Future<Response<dynamic>> edit(@Body() final RentDto dto);

  @Delete()
  Future<Response<dynamic>> delete(@Path() final String id);
}
