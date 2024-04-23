import 'package:dart_mappable/dart_mappable.dart';
part 'vacancy_model.mapper.dart';

@MappableClass()
class VacancyModel with VacancyModelMappable {
  VacancyModel({
    required this.id,
    required this.name,
    required this.price,
    required this.description
  });
  final int id;
  final String name;
  final int price;
  final String description;
}