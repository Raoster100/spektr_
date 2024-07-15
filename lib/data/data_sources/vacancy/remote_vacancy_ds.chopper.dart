// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remote_vacancy_ds.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$RemoteVacancyDataSource extends RemoteVacancyDataSource {
  _$RemoteVacancyDataSource([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = RemoteVacancyDataSource;

  @override
  Future<Response<List<VacancyModel>>> fetch() {
    final Uri $url = Uri.parse('Vacancy');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<VacancyModel>, VacancyModel>($request);
  }

  @override
  Future<Response<VacancyModel>> getById(String id) {
    final Uri $url = Uri.parse('Vacancy/${id}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<VacancyModel, VacancyModel>($request);
  }

  @override
  Future<Response<dynamic>> add(VacancyDto dto) {
    final Uri $url = Uri.parse('Vacancy');
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
  Future<Response<dynamic>> edit(VacancyDto dto) {
    final Uri $url = Uri.parse('Vacancy');
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
    final Uri $url = Uri.parse('Vacancy');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }
}
