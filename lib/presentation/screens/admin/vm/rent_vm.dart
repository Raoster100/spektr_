import 'package:stacked/stacked.dart';

class RentViewModel extends BaseViewModel {
  RentViewModel( {
    required this.id,
    required this.name,
    required this.phone,
  });

  final String id;
  final String name;
  final String phone;
}