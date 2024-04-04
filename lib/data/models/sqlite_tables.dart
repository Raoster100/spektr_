import 'package:drift/drift.dart';

class RentVehicle extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text()();
  IntColumn get price => integer()();
  TextColumn get description => text()();
  BlobColumn get image => blob()();
}

class Work extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text()();
  IntColumn get price => integer()();
  TextColumn get description => text()();
}

class Config extends Table {
  TextColumn get phone => text()();
  TextColumn get address => text()(); // Fixed a typo here
  ColumnBuilder<double> get coordinates => real(); // Changed to RealColumn
}

class Order extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text()();
  TextColumn get phone => text()();
  TextColumn get type => text()();
  TextColumn get hours => text()();
}

class Vacancy extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text()();
  IntColumn get price => integer()();
  TextColumn get description => text()();
}