import 'package:spektr/domain/services/order_service.dart';
import 'package:stacked/stacked.dart';

class OrderViewModel extends BaseViewModel {
  OrderViewModel(this.orderService, {
    required this.id,
    required this.name,
    required this.phone,
});

  final OrderService orderService;
  final String id;
  final String name;
  final String phone;
}
