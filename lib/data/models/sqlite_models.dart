import 'dart:async';
import 'dart:io';
import 'package:path/path.dart' as p;
import 'dart:ui';
import 'package:drift/native.dart';
import 'package:drift/wasm.dart';
import 'package:drift/drift.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:spektr/data/models/sqlite_tables.dart';
import 'package:sqlite3/sqlite3.dart';

part 'sqlite_models.g.dart';

@DriftDatabase(tables: [RentVehicle, Work, Config, Vacancy, Order])
class Spectrdatabase extends _$Spectrdatabase {
  Spectrdatabase() : super(_openConnection());

  int get schemaVersion => 1;
  }

LazyDatabase _openConnection() {
  // the LazyDatabase util lets us find the right location for the file async.
  return LazyDatabase(() async {
    // put the database file, called db.sqlite here, into the documents folder
    // for your app.
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'spectrdatabase.sqlite'));
    final cachebase = (await getTemporaryDirectory()).path;
    sqlite3.tempDirectory = cachebase;
    return NativeDatabase.createInBackground(file);
  });
}
