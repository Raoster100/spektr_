import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class WorkDialog extends StatefulWidget {
  const WorkDialog({
    super.key,
  });

  @override
  State<WorkDialog> createState() => _WorkDialogState();
}

class _WorkDialogState extends State<WorkDialog> {
  final nameController = TextEditingController();
  final descriptionController = TextEditingController();
  final priceController = TextEditingController();

 /* _addWork() async {
    HiveService().putWork(Work(
        name: nameController.text,
        price: priceController.text,
        description: descriptionController.text));
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
                      decoration: InputDecoration(hintText: 'Название'),
                      controller: nameController,
                    ),
                  ),
                  SizedBox(
                    width: 300,
                    child: TextFormField(
                      decoration: InputDecoration(hintText: 'Описание'),
                      controller: descriptionController,
                    ),
                  ),
                  SizedBox(
                    width: 300,
                    child: TextFormField(
                      decoration: InputDecoration(hintText: 'Цена'),
                      controller: priceController,
                    ),
                  ),
                  CupertinoButton(
                      child: Text('Добавить работу'), onPressed: /*_addWork*/null),
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
