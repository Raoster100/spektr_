import 'dart:typed_data';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:file_picker/file_picker.dart';
import 'package:spektr/data/models/rent/rent_dto.dart';
import 'package:spektr/domain/services/rent_service.dart';
import 'package:spektr/navigation/app_router.dart';
import 'package:spektr/presentation/screens/admin/vm/rent_vm.dart';
import 'package:stacked/stacked.dart';

class RentDialog extends StackedView<RentViewModel> {
  const RentDialog(
    this.rentService, {
    super.key,
  });

  final RentService rentService;

  @override
  Widget builder(BuildContext context, RentViewModel viewModel, Widget? child) {
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
                  if (viewModel.pickedImage != null)
                    Image.memory(viewModel.pickedImage!),
                  SizedBox(
                    width: 300,
                    child: CupertinoButton(
                      child: Text('Фото'),
                      onPressed: () async {
                        final res = await FilePicker.platform
                            .pickFiles(type: FileType.image);
                        if (res == null) return;
                        if (res.files.isEmpty) return;
                        viewModel.pickedImage = res.files.first.bytes;
                      },
                    ),
                  ),
                  CupertinoButton(
                      child: Text('Добавить аренду'),
                      onPressed: viewModel.addRent),
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
  RentViewModel viewModelBuilder(BuildContext context) {
    return RentViewModel(rentService);
  }
}
