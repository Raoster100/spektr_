import 'package:stacked/stacked.dart';

class WorkViewModel extends BaseViewModel {
  WorkViewModel( {
    required this.id,
    required this.name,
    required this.phone,
  });

  final String id;
  final String name;
  final String phone;
}