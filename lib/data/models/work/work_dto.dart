import 'package:dart_mappable/dart_mappable.dart';
part 'work_dto.mapper.dart';
@MappableClass()
class WorkDto with WorkDtoMappable {
  WorkDto({
    required this.id,
    required this.name,
    required this.price,
    this.description
  });
  final int id;
  final String name;
  final int price;
  final String? description;
}