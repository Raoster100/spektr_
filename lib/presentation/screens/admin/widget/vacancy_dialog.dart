import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:spektr/domain/services/vacancy_service.dart';
import 'package:spektr/presentation/screens/admin/vm/vacancy_vm.dart';
import 'package:stacked/stacked.dart';


class VacancyDialog extends StackedView<VacancyViewModel> {
  const VacancyDialog(this.vacancyService, {
    super.key,
  });

  final VacancyService vacancyService;

  @override
  Widget builder(
      BuildContext context, VacancyViewModel viewModel, Widget? child) {
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
                      controller: viewModel.nameController,
                    ),
                  ),
                  SizedBox(
                    width: 300,
                    child: TextFormField(
                      decoration: InputDecoration(hintText: 'Описание'),
                      controller: viewModel.descriptionController,
                    ),
                  ),
                  SizedBox(
                    width: 300,
                    child: TextFormField(
                      decoration: InputDecoration(hintText: 'Цена'),
                      controller: viewModel.priceController,
                    ),
                  ),
                  CupertinoButton(
                      child: Text('Добавить вакансию'),
                      onPressed: viewModel.addVacancy),
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
  VacancyViewModel viewModelBuilder(BuildContext context) {
    return VacancyViewModel(vacancyService);
  }
}
