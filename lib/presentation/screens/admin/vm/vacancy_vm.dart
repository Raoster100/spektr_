import 'package:flutter/cupertino.dart';
import 'package:spektr/data/models/models.dart';
import 'package:spektr/domain/services/vacancy_service.dart';
import 'package:stacked/stacked.dart';

import '../../../../data/models/vacancy/vacancy_dto.dart';

class VacancyViewModel extends BaseViewModel {
  VacancyViewModel(this.vacancyService);

  final nameController = TextEditingController();
  final descriptionController = TextEditingController();
  final priceController = TextEditingController();
  final VacancyService vacancyService;
  List<VacancyModel> vacancy = [];

  Future<void> addVacancy() async {
    await vacancyService.add(VacancyDto(
        name: nameController.text,
        price: int.tryParse(priceController.text) ?? 0));
  }

  Future<void> fetchOrder() async {
    vacancy = await vacancyService.fetch();
    notifyListeners();
  }

  void dispose() {
    super.dispose();
    nameController.dispose();
    descriptionController.dispose();
    priceController.dispose();
  }
}
