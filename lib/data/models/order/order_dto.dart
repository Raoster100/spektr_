import 'package:dart_mappable/dart_mappable.dart';

part 'order_dto.mapper.dart';

@MappableClass()
class OrderDto with OrderDtoMappable {
  OrderDto({
    this.id,
    required this.name,
    required this.phone,
    this.type,
    this.hours,
  });

  final int? id;
  final String name;
  final String phone;
  final String? type;
  final int? hours;
}
