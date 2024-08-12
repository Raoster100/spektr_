import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spektr/data/models/models.dart';
import 'package:spektr/domain/di/global_dependency.dart';
import 'package:spektr/presentation/screens/admin/admin_vm.dart';
import 'package:spektr/presentation/screens/admin/widget/order_dialog.dart';
import 'package:spektr/presentation/screens/admin/widget/rent_dialog.dart';
import 'package:spektr/presentation/screens/admin/widget/vacancy_dialog.dart';
import 'package:spektr/presentation/screens/admin/widget/work_dialog.dart';
import 'package:auto_route/auto_route.dart';
import 'package:stacked/stacked.dart';

@RoutePage(name: 'admin')
class AdminView extends StackedView<AdminViewModel> {
  const AdminView( {Key? key}) : super(key: key);

  @override
  Widget builder(BuildContext context, AdminViewModel viewModel, Widget? child) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        PageView(
          children: [
            SingleChildScrollView(
              child: Center(
                child: FutureBuilder<List<RentModel>>(
                  future: viewModel.rentService.fetch(),
                  builder: (context, snapshot) {
                    return DataTable(
                      columns: [
                        DataColumn(label: Text('Имя')),
                        DataColumn(label: Text('Описание')),
                        DataColumn(label: Text('Цена')),
                        DataColumn(label: Text('Фото')),
                      ],
                      rows: (snapshot.data ?? [])
                          .map(
                            (e) => DataRow(
                              cells: [
                                DataCell(Text(e.name)),
                                DataCell(Text(e.description)),
                                DataCell(Text(e.price.toString())),
                                DataCell(Image.memory(e.image!))
                                //TODO:Поменять нахуй
                              ],
                            ),
                          )
                          .toList(),
                      border: TableBorder.all(color: Colors.black),
                    );
                  },
                ),
              ),
            ),
            SingleChildScrollView(
              child: Center(
                child: FutureBuilder<List<WorkModel>>(
                  future: viewModel.workService.fetch(),
                  builder: (context, snapshot) {
                    return DataTable(
                      columns: [
                        DataColumn(label: Text('Имя')),
                        DataColumn(label: Text('Описание')),
                        DataColumn(label: Text('Цена')),
                      ],
                      rows: (snapshot.data ?? [])
                          .map(
                            (e) => DataRow(
                              cells: [
                                DataCell(Text(e.name)),
                                DataCell(Text(e.description)),
                                DataCell(Text(e.price.toString())),
                              ],
                            ),
                          )
                          .toList(),
                      border: TableBorder.all(color: Colors.black),
                    );
                  },
                ),
              ),
            ),
            SingleChildScrollView(
              child: Center(
                child: FutureBuilder<List<ConfigModel>>(
                  future: viewModel.configService.fetch(),
                  builder: (context, snapshot) {
                    return DataTable(
                      columns: [
                        DataColumn(label: Text('Телефон')),
                        DataColumn(label: Text('Адрес')),
                        DataColumn(label: Text('Координаты')),
                      ],
                      rows: (snapshot.data ?? [])
                          .map(
                            (e) => DataRow(
                              cells: [
                                DataCell(Text(e.phone)),
                                DataCell(Text(e.address)),
                                DataCell(Text(e.longitude.toString())),
                                DataCell(Text(e.latitude.toString())),
                              ],
                            ),
                          )
                          .toList(),
                      border: TableBorder.all(color: Colors.black),
                    );
                  },
                ),
              ),
            ),
            SingleChildScrollView(
              child: Center(
                child: FutureBuilder<List<OrderModel>>(
                  future: viewModel.orderService.fetch(),
                  builder: (context, snapshot) {
                    return DataTable(
                      columns: [
                        DataColumn(label: Text('Телефон')),
                        DataColumn(label: Text('Имя')),
                        DataColumn(label: Text('Тип')),
                        DataColumn(label: Text('Часы')),
                      ],
                      rows: (snapshot.data ?? [])
                          .map(
                            (e) => DataRow(
                              cells: [
                                DataCell(Text(e.phone)),
                                DataCell(Text(e.name)),
                                DataCell(Text(e.type)),
                                DataCell(Text(e.hours.toString())),
                              ],
                            ),
                          )
                          .toList(),
                      border: TableBorder.all(color: Colors.black),
                    );
                  },
                ),
              ),
            ),
            SingleChildScrollView(
              child: Center(
                child: FutureBuilder<List<VacancyModel>>(
                  future: viewModel.vacancyService.fetch(),
                  builder: (context, snapshot) {
                    return DataTable(
                      columns: [
                        DataColumn(label: Text('Название')),
                        DataColumn(label: Text('Описание')),
                        DataColumn(label: Text('Цена')),
                      ],
                      rows: (snapshot.data ?? [])
                          .map(
                            (e) => DataRow(
                          cells: [
                            DataCell(Text(e.name)),
                            DataCell(Text(e.description)),
                            DataCell(Text(e.price.toString())),
                          ],
                        ),
                      )
                          .toList(),
                      border: TableBorder.all(color: Colors.black),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
        Column(
          children: [
            CupertinoButton(
              child: Text('Добавить аренду'),
              onPressed: () => showDialog(
                builder: (context) => RentDialog(context.global.rentService),
                context: context,
              ),
            ),
            CupertinoButton(
              child: Text('Добавить услуги'),
              onPressed: () => showDialog(
                builder: (context) => WorkDialog(context.global.workService),
                context: context,
              ),
            ),
            CupertinoButton(
              child: Text('Добавить заказ'),
              onPressed: () => showDialog(
                builder: (context) => OrderDialog(context.global.orderService),
                context: context,
              ),
            ),
            CupertinoButton(
              child: Text('Добавить вакансию'),
              onPressed: () => showDialog(
                builder: (context) => VacancyDialog(context.global.vacancyService),
                context: context,
              ),
            ),
          ],
        ),
      ],
    );
  }

  @override
  AdminViewModel viewModelBuilder(BuildContext context) {
    return AdminViewModel(context.global.rentService, context.global.orderService, context.global.workService, context.global.vacancyService, context.global.configService);
  }
}

