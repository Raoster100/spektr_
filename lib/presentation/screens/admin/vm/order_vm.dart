import 'package:flutter/cupertino.dart';
import 'package:spektr/domain/services/order_service.dart';
import 'package:stacked/stacked.dart';
import '../../../../data/models/order/order_model.dart';

class OrderViewModel extends BaseViewModel {
  OrderViewModel(this.orderService);

  final OrderService orderService;
  List<OrderModel> orders = [];
  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  final typeController = TextEditingController();
  final hoursController = TextEditingController();
  List<String> items = ['Аренда', 'Услуга'];
  String? selectedItem = 'Аренда';

  Future<void> fetch() async {
    orders = await orderService.fetch();
    notifyListeners();
  }

  void dispose() {
    super.dispose();
    nameController.dispose();
    phoneController.dispose();
    typeController.dispose();
    hoursController.dispose();
  }
}
