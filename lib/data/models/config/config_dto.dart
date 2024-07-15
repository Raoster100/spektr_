import 'package:dart_mappable/dart_mappable.dart';
part 'config_dto.mapper.dart';

@MappableClass()
class ConfigDto with ConfigDtoMappable {
  ConfigDto({
    required this.id,
    this.address,
    this.phone,
    this.longitude,
    this.latitude
  });
  final int id;
  final String? address;
  final String? phone;
  final double? longitude;
  final double? latitude;
}