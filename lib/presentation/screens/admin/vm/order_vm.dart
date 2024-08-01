import 'package:flutter/cupertino.dart';
import 'package:spektr/data/models/order/order_dto.dart';
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

  Future<void> fetchOrder() async {
    orders = await orderService.fetch();
    notifyListeners();
  }
  Future<void> addOrder() async {
    await orderService.add(OrderDto(name: nameController.text, phone: phoneController.text));
  }
  void selectItem(String? item) {
    selectedItem = item;
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
