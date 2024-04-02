import 'dart:async';
import 'package:drift/wasm.dart';
import 'package:drift/drift.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqlite3/sqlite3.dart';

part 'sqlite_models.g.dart';

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

@DriftDatabase(tables: [RentVehicle, Work, Config, Vacancy, Order])
class Spectrdatabase extends _$Spectrdatabase {
  Spectrdatabase(QueryExecutor e) : super(e);

  int get schemaVersion => 1;

/*  static Future<QueryExecutor> _openConnection() async {
    final appDirectory = await getApplicationDocumentsDirectory();
    final databasePath = join(appDirectory.path, 'spectrdatabase.db');
    final executor = ;
    return executor;
  }*/

  /*factory Spectrdatabase() => Spectrdatabase._(_openConnection());*/

  @override
  MigrationStrategy get migration => MigrationStrategy(
    onCreate: (m) async {
      await m.createAll();
    },
    onUpgrade: (m, from, to) async {
      // Migration code goes here
    },
    beforeOpen: (details) async {
      // Opening logic goes here
    },
  );
}
