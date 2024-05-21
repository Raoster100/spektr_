import 'package:dart_mappable/dart_mappable.dart';
part 'config_model.mapper.dart';

@MappableClass()
class ConfigModel with ConfigModelMappable {
  ConfigModel({
    required this.id,
    required this.address,
    required this.phone,
    required this.longitude,
    required this.latitude
  });
  final int id;
  final String address;
  final String phone;
  final double longitude;
  final double latitude;
}