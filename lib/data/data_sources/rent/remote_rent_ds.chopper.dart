// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remote_rent_ds.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$RemoteRentDataSource extends RemoteRentDataSource {
  _$RemoteRentDataSource([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = RemoteRentDataSource;

  @override
  Future<Response<List<RentModel>>> fetch() {
    final Uri $url = Uri.parse('Rent');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<RentModel>, RentModel>($request);
  }

  @override
  Future<Response<RentModel>> getById(String id) {
    final Uri $url = Uri.parse('Rent/${id}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<RentModel, RentModel>($request);
  }

  @override
  Future<Response<dynamic>> add(RentDto dto) {
    final Uri $url = Uri.parse('Rent');
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
  Future<Response<dynamic>> edit(RentDto dto) {
    final Uri $url = Uri.parse('Rent');
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
  Future<Response<dynamic>> delete(int id) {
    final Uri $url = Uri.parse('Rent');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }
}
