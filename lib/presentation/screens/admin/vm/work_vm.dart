import 'package:flutter/cupertino.dart';
import 'package:spektr/domain/services/work_service.dart';
import 'package:stacked/stacked.dart';
import '../../../../data/models/work/work_dto.dart';

class WorkViewModel extends BaseViewModel {
  WorkViewModel(this.workService);

  final nameController = TextEditingController();
  final descriptionController = TextEditingController();
  final priceController = TextEditingController();
  final WorkService workService;

  Future<void> addWork() async {
    await workService.add(WorkDto(
        name: nameController.text,
        price: int.tryParse(priceController.text) ?? 0));
  }

  void dispose() {
    super.dispose();
    nameController.dispose();
    descriptionController.dispose();
    priceController.dispose();
  }
}
