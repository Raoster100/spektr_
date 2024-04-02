import 'dart:io';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:spektr/app/app.dart';
import 'package:spektr/data/hive_service.dart';
import 'data/models/hive_models.dart';

void main() async {
  await Hive.initFlutter();
  HiveService().init();
  runApp(const App());
}
