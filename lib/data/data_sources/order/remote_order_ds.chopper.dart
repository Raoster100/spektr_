// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remote_order_ds.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$RemoteOrderDataSource extends RemoteOrderDataSource {
  _$RemoteOrderDataSource([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = RemoteOrderDataSource;

  @override
  Future<Response<List<OrderModel>>> fetch() {
    final Uri $url = Uri.parse('Order');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<OrderModel>, OrderModel>($request);
  }

  @override
  Future<Response<OrderModel>> getById(String id) {
    final Uri $url = Uri.parse('Order/${id}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<OrderModel, OrderModel>($request);
  }

  @override
  Future<Response<dynamic>> add(OrderDto dto) {
    final Uri $url = Uri.parse('Order');
    final $body = dto;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> edit(OrderDto dto) {
    final Uri $url = Uri.parse('Order');
    final $body = dto;
    final Request $request = Request(
      'PATCH',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> delete(String id) {
    final Uri $url = Uri.parse('Order');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }
}
