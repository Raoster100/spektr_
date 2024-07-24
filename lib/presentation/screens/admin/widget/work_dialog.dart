import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:spektr/data/models/work/work_dto.dart';
import 'package:spektr/domain/services/work_service.dart';

late final WorkService workService;

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

  Future<void> addWork() async {
    await workService.add(WorkDto(
        name: nameController.text,
        price: int.tryParse(priceController.text) ?? 0));
  }

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
                      child: Text('Добавить работу'), onPressed: addWork),
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
