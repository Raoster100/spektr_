import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:spektr/domain/services/work_service.dart';
import 'package:spektr/presentation/screens/admin/vm/work_vm.dart';
import 'package:stacked/stacked.dart';

late final WorkService workService;

class WorkDialog extends StackedView<WorkViewModel> {
  const WorkDialog({
    super.key,
  });

  @override
  Widget builder(BuildContext context, WorkViewModel viewModel, Widget? child) {
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
                      child: Text('Добавить работу'),
                      onPressed: viewModel.addWork),
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
  WorkViewModel viewModelBuilder(BuildContext context) {
    return WorkViewModel(workService);
  }
}
