import 'package:chopper/chopper.dart';
import 'package:spektr/data/data_sources/core/app_remote_ds.dart';
import 'package:spektr/data/models/models.dart';

/*
part 'remote_work_ds.chopper.dart';*/

@ChopperApi(baseUrl: 'Work')
abstract class RemoteWorkDataSource extends ChopperService
implements AppRemoteDataSource {/*
  static RemoteWorkDataSource create([ChopperClient? client]) =>
      _$RemoteWorkDataSource(client);*/

  @Get()
  Future<Response<List<WorkModel>>> fetch();

  @Get(path: r'/{id}')
  Future<Response<List<WorkModel>>> getByWorkId(
      @Path() final String id
      );

/*  @Post()
  Future<Response<dynamic>> add(@Body() final)*/











}