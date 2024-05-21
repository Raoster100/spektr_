import 'package:chopper/chopper.dart';
import 'package:spektr/data/data_sources/core/app_remote_ds.dart';
import 'package:spektr/data/models/models.dart';
import '../../models/order/order_dto.dart';

part 'remote_order_ds.chopper.dart';

@ChopperApi(baseUrl: 'Order')
abstract class RemoteOrderDataSource extends ChopperService
    implements AppRemoteDataSource {
  static RemoteOrderDataSource create([ChopperClient? client]) =>
      _$RemoteOrderDataSource(client);

  @Get()
  Future<Response<List<OrderModel>>> fetch();

  @Get(path: r'/{id}')
  Future<Response<List<OrderModel>>> getByOrderId(@Path() final String id);

  @Post()
  Future<Response<dynamic>> add(@Body() final OrderDto dto);

  @Patch()
  Future<Response<dynamic>> edit(@Body() final OrderDto dto);

  @Delete()
  Future<Response<dynamic>> delete(@Path() final String id);
}
