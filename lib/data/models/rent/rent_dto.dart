import 'dart:typed_data';
import 'package:dart_mappable/dart_mappable.dart';
part 'rent_dto.mapper.dart';

@MappableClass()
class RentDto with RentDtoMappable {
  RentDto({
    this.id,
    required this.name,
    required this.price,
    this.description,
    this.imageUrl
  });
  final int? id;
  final String name;
  final int price;
  final String? description;
  final Uint8List? imageUrl;
}