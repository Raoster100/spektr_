import 'package:dart_mappable/dart_mappable.dart';
part 'vacancy_dto.mapper.dart';

@MappableClass()
class VacancyDto with VacancyDtoMappable {
  VacancyDto({
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