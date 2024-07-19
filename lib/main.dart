import 'dart:io';
import 'package:chopper/chopper.dart';
import 'package:flutter/material.dart';
import 'package:spektr/app/app.dart';
import 'package:spektr/data/data_sources/config/remote_config_ds.dart';
import 'package:spektr/data/data_sources/core/app_remote_ds.dart';
import 'package:spektr/data/data_sources/order/remote_order_ds.dart';
import 'package:spektr/domain/services/core/app_service.dart';
import 'package:spektr/domain/services/order_service.dart';


void main() async {
  runApp(const App());

}