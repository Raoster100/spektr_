import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class OrderDialog extends StatefulWidget {
  const OrderDialog({
    super.key,
  });

  @override
  State<OrderDialog> createState() => _OrderDialogState();
}

class _OrderDialogState extends State<OrderDialog> {
  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  final typeController = TextEditingController();
  final hoursController = TextEditingController();
  List<String> items = ['Аренда', 'Услуга'];
  String? selectedItem = 'Аренда';

  /*_addOrder() async {
    HiveService().putOrder(Order(
        name: nameController.text,
        phone: phoneController.text,
        type: selectedItem.toString(),
        hours: hoursController.text));
  }*/

  @override
  Widget build(BuildContext context) {
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
                      controller: nameController,
                    ),
                  ),
                  SizedBox(
                    width: 300,
                    child: TextFormField(
                      decoration: InputDecoration(hintText: 'Телефон'),
                      controller: phoneController,
                    ),
                  ),
                  SizedBox(
                    width: 300,
                    child: TextFormField(
                      decoration: InputDecoration(hintText: 'Часы заказа'),
                      controller: hoursController,
                    ),
                  ),
                  SizedBox(
                    width: 300,
                    child: DropdownButton<String>(
                      value: selectedItem,
                      items: items
                          .map((item) => DropdownMenuItem<String>(
                              child: Text(item), value: item))
                          .toList(),
                      onChanged: (item) => setState(() => selectedItem = item),
                    ),
                  ),
                  CupertinoButton(
                      child: Text('Добавить заказ'), onPressed: /*_addOrder*/null),
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
}
