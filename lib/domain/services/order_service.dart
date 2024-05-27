import 'package:flutter/src/widgets/framework.dart';
import 'package:spektr/data/data_sources/order/remote_order_ds.dart';
import 'package:spektr/data/models/models.dart';
import 'package:spektr/domain/services/core/app_service.dart';
import 'package:spektr/domain/services/core/repo_mixin.dart';
import '../../data/models/order/order_dto.dart';

class OrderService extends AppService<RemoteOrderDataSource>
    with RepoStyleMixin<OrderDto, OrderModel> {
  OrderService(super.rds);

  @override
  Future<void> add(OrderDto dto) async {
    final res = await rds.add(dto);
  }

  @override
  Future<void> delete(OrderDto dto) async {

  }

  @override
  void dispose() {
    // TODO: implement dispose
  }

  @override
  Future<List<OrderModel>> fetch() {
    // TODO: implement fetch
    throw UnimplementedError();
  }

  @override
  Future<List<OrderModel>> fetchById(String id) {
    // TODO: implement fetchById
    throw UnimplementedError();
  }

  @override
  Future<OrderModel?> getById(String id) {
    // TODO: implement getById
    throw UnimplementedError();
  }

  @override
  Future<void> init(BuildContext context) {
    // TODO: implement init
    throw UnimplementedError();
  }

  @override
  Future<void> patch(OrderDto dto) {
    // TODO: implement patch
    throw UnimplementedError();
  }
}
