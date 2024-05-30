// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remote_work_ds.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$RemoteWorkDataSource extends RemoteWorkDataSource {
  _$RemoteWorkDataSource([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = RemoteWorkDataSource;

  @override
  Future<Response<List<WorkModel>>> fetch() {
    final Uri $url = Uri.parse('Work');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<WorkModel>, WorkModel>($request);
  }

  @override
  Future<Response<List<WorkModel>>> getById(int id) {
    final Uri $url = Uri.parse('Work/${id}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<WorkModel>, WorkModel>($request);
  }

  @override
  Future<Response<dynamic>> add(WorkDto dto) {
    final Uri $url = Uri.parse('Work');
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
  Future<Response<dynamic>> edit(WorkDto dto) {
    final Uri $url = Uri.parse('Work');
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
    final Uri $url = Uri.parse('Work');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }
}
