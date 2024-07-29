// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:spektr/data/models/rent/rent_dto.dart';
// import 'package:spektr/domain/services/config_service.dart';
// import 'package:spektr/domain/services/order_service.dart';
// import 'package:spektr/domain/services/rent_service.dart';
// import 'package:spektr/domain/services/vacancy_service.dart';
// import 'package:spektr/domain/services/work_service.dart';
// import 'package:spektr/presentation/screens/admin/widget/order_dialog.dart';
// import 'package:spektr/presentation/screens/admin/widget/rent_dialog.dart';
// import 'package:spektr/presentation/screens/admin/widget/vacancy_dialog.dart';
// import 'package:spektr/presentation/screens/admin/widget/work_dialog.dart';
// import 'package:spektr/presentation/theme/app_typography.dart';
// import 'package:auto_route/auto_route.dart';
//
// @RoutePage(name: 'admin')
// class AdminView extends StatefulWidget {
//   const AdminView({Key? key, required this.rentService, required this.orderService, required this.workService, required this.vacancyService}) : super(key: key);
//   final RentService rentService;
//   final OrderService orderService;
//   final WorkService workService;
//   final VacancyService vacancyService;
//
//   @override
//   State<AdminView> createState() => _AdminViewState();
// }
//
// class _AdminViewState extends State<AdminView> {
//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       alignment: Alignment.topRight,
//       children: [
//         PageView(
//           children: [
//             SingleChildScrollView(
//               child: Center(
//                 child: FutureBuilder<List<RentDto>>(
//                   future: RentService().fetch(),
//                   builder: (context, snapshot) {
//                     return DataTable(
//                       columns: [
//                         DataColumn(label: Text('Имя')),
//                         DataColumn(label: Text('Описание')),
//                         DataColumn(label: Text('Цена')),
//                         DataColumn(label: Text('Фото')),
//                       ],
//                       rows: (snapshot.data ?? [])
//                           .map(
//                             (e) => DataRow(
//                               cells: [
//                                 DataCell(Text(e.name)),
//                                 DataCell(Text(e.description)),
//                                 DataCell(Text(e.price.toString())),
//                                 DataCell(Image.memory(e.image!))
//                                 //TODO:Поменять нахуй
//                               ],
//                             ),
//                           )
//                           .toList(),
//                       border: TableBorder.all(color: Colors.black),
//                     );
//                   },
//                 ),
//               ),
//             ),
//             SingleChildScrollView(
//               child: Center(
//                 child: FutureBuilder<List<Work>>(
//                   future: WorkService().getWork(),
//                   builder: (context, snapshot) {
//                     return DataTable(
//                       columns: [
//                         DataColumn(label: Text('Имя')),
//                         DataColumn(label: Text('Описание')),
//                         DataColumn(label: Text('Цена')),
//                       ],
//                       rows: (snapshot.data ?? [])
//                           .map(
//                             (e) => DataRow(
//                               cells: [
//                                 DataCell(Text(e.name)),
//                                 DataCell(Text(e.description)),
//                                 DataCell(Text(e.price.toString())),
//                               ],
//                             ),
//                           )
//                           .toList(),
//                       border: TableBorder.all(color: Colors.black),
//                     );
//                   },
//                 ),
//               ),
//             ),
//             SingleChildScrollView(
//               child: Center(
//                 child: FutureBuilder<List<Config>>(
//                   future: ConfigService().getConfig(),
//                   builder: (context, snapshot) {
//                     return DataTable(
//                       columns: [
//                         DataColumn(label: Text('Телефон')),
//                         DataColumn(label: Text('Адрес')),
//                         DataColumn(label: Text('Координаты')),
//                       ],
//                       rows: (snapshot.data ?? [])
//                           .map(
//                             (e) => DataRow(
//                               cells: [
//                                 DataCell(Text(e.phone)),
//                                 DataCell(Text(e.address)),
//                                 DataCell(Text(e.coordinates.toString())),
//                               ],
//                             ),
//                           )
//                           .toList(),
//                       border: TableBorder.all(color: Colors.black),
//                     );
//                   },
//                 ),
//               ),
//             ),
//             SingleChildScrollView(
//               child: Center(
//                 child: FutureBuilder<List<Order>>(
//                   future: OrderService().getOrder(),
//                   builder: (context, snapshot) {
//                     return DataTable(
//                       columns: [
//                         DataColumn(label: Text('Телефон')),
//                         DataColumn(label: Text('Имя')),
//                         DataColumn(label: Text('Тип')),
//                         DataColumn(label: Text('Часы')),
//                       ],
//                       rows: (snapshot.data ?? [])
//                           .map(
//                             (e) => DataRow(
//                               cells: [
//                                 DataCell(Text(e.phone)),
//                                 DataCell(Text(e.name)),
//                                 DataCell(Text(e.type)),
//                                 DataCell(Text(e.hours)),
//                               ],
//                             ),
//                           )
//                           .toList(),
//                       border: TableBorder.all(color: Colors.black),
//                     );
//                   },
//                 ),
//               ),
//             ),
//             SingleChildScrollView(
//               child: Center(
//                 child: FutureBuilder<List<Vacancy>>(
//                   future: VacancyService().getVacancy(),
//                   builder: (context, snapshot) {
//                     return DataTable(
//                       columns: [
//                         DataColumn(label: Text('Название')),
//                         DataColumn(label: Text('Описание')),
//                         DataColumn(label: Text('Цена')),
//                       ],
//                       rows: (snapshot.data ?? [])
//                           .map(
//                             (e) => DataRow(
//                           cells: [
//                             DataCell(Text(e.name)),
//                             DataCell(Text(e.description)),
//                             DataCell(Text(e.price.toString())),
//                           ],
//                         ),
//                       )
//                           .toList(),
//                       border: TableBorder.all(color: Colors.black),
//                     );
//                   },
//                 ),
//               ),
//             ),
//           ],
//         ),
//         Column(
//           children: [
//             CupertinoButton(
//               child: Text('Добавить аренду'),
//               onPressed: () => showDialog(
//                 builder: (context) => RentDialog(),
//                 context: context,
//               ),
//             ),
//             CupertinoButton(
//               child: Text('Добавить услуги'),
//               onPressed: () => showDialog(
//                 builder: (context) => WorkDialog(),
//                 context: context,
//               ),
//             ),
//             CupertinoButton(
//               child: Text('Добавить заказ'),
//               onPressed: () => showDialog(
//                 builder: (context) => OrderDialog(),
//                 context: context,
//               ),
//             ),
//             CupertinoButton(
//               child: Text('Добавить вакансию'),
//               onPressed: () => showDialog(
//                 builder: (context) => VacancyDialog(),
//                 context: context,
//               ),
//             ),
//           ],
//         ),
//       ],
//     );
//   }
// }
