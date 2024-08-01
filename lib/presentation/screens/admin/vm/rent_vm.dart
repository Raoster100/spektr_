import 'dart:typed_data';
import 'package:flutter/cupertino.dart';
import 'package:spektr/domain/services/rent_service.dart';
import 'package:stacked/stacked.dart';
import '../../../../data/models/rent/rent_dto.dart';


class RentViewModel extends BaseViewModel {
  RentViewModel(this.rentService);

  final nameController = TextEditingController();
  final descriptionController = TextEditingController();
  final priceController = TextEditingController();
  Uint8List? pickedImage;
  final RentService rentService;
  String? selectedItem = 'Аренда';


  Future<void> fetchRent() async {
    await rentService.fetch();
    notifyListeners();
  }

  void selectItem(String? item) {
    selectedItem = item;
    notifyListeners();
  }

  Future<void> addRent() async {
    await rentService.add(RentDto(name: nameController.text, price: int.tryParse(priceController.text) ?? 0));
  }
  void dispose() {
    super.dispose();
    nameController.dispose();
    descriptionController.dispose();
    priceController.dispose();
  }
}