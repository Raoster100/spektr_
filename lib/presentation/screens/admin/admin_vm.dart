import 'package:spektr/domain/services/order_service.dart';
import 'package:spektr/domain/services/rent_service.dart';
import 'package:spektr/domain/services/vacancy_service.dart';
import 'package:spektr/domain/services/work_service.dart';
import 'package:stacked/stacked.dart';

class AdminViewModel extends BaseViewModel {
  AdminViewModel(this.rentService, this.orderService, this.workService, this.vacancyService);
  final RentService rentService;
  final OrderService orderService;
  final WorkService workService;
  final VacancyService vacancyService;
}

