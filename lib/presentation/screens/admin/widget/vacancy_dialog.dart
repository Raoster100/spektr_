import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:spektr/data/models/vacancy/vacancy_dto.dart';
import 'package:spektr/domain/services/vacancy_service.dart';

late final VacancyService vacancyService;

class VacancyDialog extends StatefulWidget {
  const VacancyDialog({
    super.key,
  });

  @override
  State<VacancyDialog> createState() => _VacancyDialogState();
}

class _VacancyDialogState extends State<VacancyDialog> {
  final nameController = TextEditingController();
  final descriptionController = TextEditingController();
  final priceController = TextEditingController();

  Future<void> addVacancy() async {
    await vacancyService.add(VacancyDto(
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
                      child: Text('Добавить вакансию'), onPressed: addVacancy),
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
