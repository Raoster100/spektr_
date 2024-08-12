import 'dart:typed_data';
import 'package:dart_mappable/dart_mappable.dart';

part 'rent_model.mapper.dart';

@MappableClass()
class RentModel with RentModelMappable {
  RentModel({
    required this.id,
    required this.name,
    required this.price,
    required this.description,
    required this.image,
  });

  final int id;
  final String name;
  final int price;
  final String description;
  final Uint8List image;
}
