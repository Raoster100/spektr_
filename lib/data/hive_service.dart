import 'dart:async';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:spektr/data/models/hive_models.dart';

class HiveService {
  final _orderKey = 'orderKey';
  final _rentKey = 'rentKey';
  final _workKey = 'workKey';
  final _configKey = 'configKey';
  final _vacancyKey = 'vacancyKey';

  static final HiveService _instance = HiveService._internal();

  factory HiveService() {
    return _instance;
  }

  Future<Box<T>> openBox<T>(String boxName) async {
    return await Hive.openBox<T>(boxName);
  }

  HiveService._internal();

  Future<void> init() async {
    await Hive.initFlutter();
    Hive.registerAdapter(RentVehicleAdapter());
    Hive.registerAdapter(WorkAdapter());
    Hive.registerAdapter(ConfigAdapter());
    Hive.registerAdapter(OrderAdapter());
    Hive.registerAdapter(VacancyAdapter());
  }

  Future<List<Work>> getWork() async {
    final res = await HiveService().openBox<Work>(_workKey);
    return res.values.toList();
  }

  Future<List<RentVehicle>> getRentVehicle() async {
    final res = await HiveService().openBox<RentVehicle>(_rentKey);
    return res.values.toList();
  }

  Future<List<Config>> getConfig() async {
    final res = await HiveService().openBox<Config>(_configKey);
    return res.values.toList();
  }

  Future<List<Order>> getOrder() async {
    final res = await HiveService().openBox<Order>(_orderKey);
    return res.values.toList();
  }

  Future<List<Vacancy>> getVacancy() async {
    final res = await HiveService().openBox<Vacancy>(_vacancyKey);
    return res.values.toList();
  }

  Future<void> putData<T>(String boxKey, T data) async {
    final box = await HiveService().openBox<T>(boxKey);
    await box.put(data.hashCode, data);
  }

  Future<void> putRentVehicle(RentVehicle rentVehicle) async {
    await putData(_rentKey, rentVehicle);
  }

  Future<void> putWork(Work work) async {
    await putData(_workKey, work);
  }

  Future<void> putConfig(Config config) async {
    await putData(_configKey, config);
  }

  Future<void> putOrder(Order order) async {
    await putData(_orderKey, order);
  }

  Future<void> putVacancy(Vacancy vacancy) async {
    await putData(_vacancyKey, vacancy);
  }
}
