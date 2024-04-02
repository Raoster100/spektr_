import 'dart:typed_data';
import 'package:hive/hive.dart';
part 'hive_models.g.dart';

@HiveType(typeId: 1)
class RentVehicle {
  RentVehicle({
    required this.name,
    required this.price,
    required this.description,
    required this.image,
  });

  @HiveField(1)
  String name;
  @HiveField(2)
  String price;
  @HiveField(3)
  String description;
  @HiveField(4)
  Uint8List? image;
}

@HiveType(typeId: 2)
class Work {
  Work({
    required this.name,
    required this.price,
    required this.description,
  });

  @HiveField(1)
  String name;
  @HiveField(2)
  String price;
  @HiveField(3)
  String description;
}

@HiveType(typeId: 3)
class Config {
  Config({
    required this.phone,
    required this.address,
    required this.coordinates,
  });


  @HiveField(1)
  String phone;
  @HiveField(2)
  String address;
  @HiveField(3)
  double coordinates;
}

@HiveType(typeId: 4)
class Order {
  Order({
    required this.name,
    required this.phone,
    required this.type,
    required this.hours
  });

  @HiveField(1)
  String phone;
  @HiveField(2)
  String name;
  @HiveField(3)
  String type;
  @HiveField(4)
  String hours;
}

@HiveType(typeId: 5)
class Vacancy {
  Vacancy({
    required this.name,
    required this.price,
    required this.description
});
  @HiveField(1)
  String name;
  @HiveField(2)
  String price;
  @HiveField(3)
  String description;
}