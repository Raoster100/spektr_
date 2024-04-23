import 'package:dart_mappable/dart_mappable.dart';
part 'work_model.mapper.dart';

@MappableClass()
class WorkModel with WorkModelMappable {
  WorkModel({
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