import 'dart:typed_data';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:file_picker/file_picker.dart';
import 'package:spektr/data/hive_service.dart';
import 'package:spektr/data/models/hive_models.dart';
import 'package:spektr/navigation/app_router.dart';

class RentDialog extends StatefulWidget {
  const RentDialog({
    super.key,
  });

  @override
  State<RentDialog> createState() => _RentDialogState();
}

class _RentDialogState extends State<RentDialog> {
  final nameController = TextEditingController();
  final descriptionController = TextEditingController();
  final priceController = TextEditingController();
  Uint8List? pickedImage;

  _addRent() async {
    HiveService().putRentVehicle(RentVehicle(
        name: nameController.text,
        price: priceController.text,
        description: descriptionController.text,
        image: pickedImage));
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
                  if (pickedImage != null) Image.memory(pickedImage!),
                  SizedBox(
                    width: 300,
                    child: CupertinoButton(
                      child: Text('Фото'),
                      onPressed: () async {
                        final res = await FilePicker.platform
                            .pickFiles(type: FileType.image);
                        if (res == null) return;
                        if (res.files.isEmpty) return;
                        pickedImage = res.files.first.bytes;
                        setState(() {});
                      },
                    ),
                  ),
                  CupertinoButton(
                      child: Text('Добавить аренду'), onPressed: _addRent),
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
