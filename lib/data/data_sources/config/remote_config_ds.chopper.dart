// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remote_config_ds.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$RemoteConfigDataSource extends RemoteConfigDataSource {
  _$RemoteConfigDataSource([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = RemoteConfigDataSource;

  @override
  Future<Response<List<ConfigModel>>> fetch() {
    final Uri $url = Uri.parse('Config');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<ConfigModel>, ConfigModel>($request);
  }

  @override
  Future<Response<ConfigModel>> getById(String id) {
    final Uri $url = Uri.parse('Config/${id}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<ConfigModel, ConfigModel>($request);
  }

  @override
  Future<Response<dynamic>> add(ConfigDto dto) {
    final Uri $url = Uri.parse('Config');
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
  Future<Response<dynamic>> edit(ConfigDto dto) {
    final Uri $url = Uri.parse('Config');
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
    final Uri $url = Uri.parse('Config');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }
}
