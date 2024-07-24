import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:spektr/domain/services/order_service.dart';
import 'package:spektr/presentation/screens/admin/vm/order_vm.dart';
import 'package:stacked/stacked.dart';

class OrderDialog extends StackedView<OrderViewModel> {
  const OrderDialog(
    this.orderService, {
    super.key,
  });

  final OrderService orderService;

  @override
  Widget builder(
      BuildContext context, OrderViewModel viewModel, Widget? child) {
    return Dialog(
      child: SizedBox(
        width: 900,
        height: 500,
        child: Row(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 300,
                    child: TextFormField(
                      decoration: InputDecoration(hintText: 'Имя'),
                      controller: viewModel.nameController,
                    ),
                  ),
                  SizedBox(
                    width: 300,
                    child: TextFormField(
                      decoration: InputDecoration(hintText: 'Телефон'),
                      controller: viewModel.phoneController,
                    ),
                  ),
                  SizedBox(
                    width: 300,
                    child: TextFormField(
                      decoration: InputDecoration(hintText: 'Часы заказа'),
                      controller: viewModel.hoursController,
                    ),
                  ),
/*                  SizedBox(
                    width: 300,
                    child: DropdownButton<String>(
                      value: selectedItem,
                      items: items
                          .map((item) => DropdownMenuItem<String>(
                          child: Text(item), value: item))
                          .toList(),
                      onChanged: (item) => setState(() => selectedItem = item),
                    ),
                  ),*/
                  /*         CupertinoButton(
                      child: Text('Добавить заказ'), onPressed:
_addOrder
null),*/
                  CupertinoButton(
                      child: Text('Отменить'),
                      onPressed: Navigator.of(context).pop)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  OrderViewModel viewModelBuilder(BuildContext context) {
    return OrderViewModel(orderService);
  }
}
