import 'dart:typed_data';

import 'package:dart_mappable/dart_mappable.dart';
part 'order_model.mapper.dart';

@MappableClass()
class OrderModel with OrderModelMappable {
  OrderModel({
    required this.id,
    required this.name,
    required this.phone,
    required this.type,
    required this.hours
  });
  final int id;
  final String name;
  final String phone;
  final String type;
  final int hours;
}