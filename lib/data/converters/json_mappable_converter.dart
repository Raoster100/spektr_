import 'dart:async';
import 'dart:convert';
import 'package:chopper/chopper.dart';
import 'package:dart_mappable/dart_mappable.dart';

class JsonMappableConverter extends JsonConverter {
  @override
  FutureOr<Response> convertError<BodyType, InnerType>(
      Response response) async {
    final json = jsonDecode(utf8.decode(response.bodyBytes));
    return response.copyWith(body: body);
  }

  @override
  FutureOr<Response<BodyType>> convertResponse<BodyType, InnerType>(
      Response response) async {
    final json = jsonDecode(utf8.decode(response.bodyBytes));
    final BodyType body = MapperContainer.globals.fromValue(json);
    return response.copyWith(body: body);
  }
}
