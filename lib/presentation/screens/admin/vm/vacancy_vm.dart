import 'package:stacked/stacked.dart';

class VacancyViewModel extends BaseViewModel {
  VacancyViewModel( {
    required this.id,
    required this.name,
    required this.phone,
  });

  final String id;
  final String name;
  final String phone;
}