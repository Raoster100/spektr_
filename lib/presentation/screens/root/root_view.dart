import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sbeu_reactive_pattern/reactive/reactive_builder.dart';
import 'package:spektr/app/app.dart';
import 'package:spektr/gen/assets.gen.dart';
import 'package:spektr/navigation/app_router.dart';
import 'package:spektr/presentation/screens/about/about_view.dart';
import 'package:spektr/presentation/screens/rent/rent_view.dart';
import 'package:spektr/presentation/screens/vacancy/vacancy_view.dart';
import 'package:spektr/presentation/theme/app_colors.dart';
import 'package:spektr/presentation/theme/app_typography.dart';
import '../work/work_view.dart';
import 'widget/contacts_widget.dart';
import 'widget/make_order_widget.dart';

@RoutePage(name: 'root')
class RootView extends StatefulWidget {
  const RootView({Key? key}) : super(key: key);

  @override
  State<RootView> createState() => _RootViewState();
}

class _RootViewState extends State<RootView> {
  final scrollController = ScrollController();
  final nameController = TextEditingController();
  final phoneController = TextEditingController();

  String get phone => '+7(900)-00-00-000';

  //TODO: Hive phone

  @override
  void initState() {
    super.initState();
    phoneController.addListener(() {
      if (phoneController.text.length == 2 && phoneController.text != '+7') {
        phoneController.text = '+7';
      }
      if (phoneController.text.length == 1 && phoneController.text != '8') {
        phoneController.text = '8';
      }
    });
  }

  @override
  void dispose() {
    scrollController.dispose();
    nameController.dispose();
    phoneController.dispose();
    super.dispose();
  }

  void goUp() {
    scrollController.animateTo(
      scrollController.position.minScrollExtent,
      duration: const Duration(milliseconds: 200),
      curve: Curves.easeIn,
    );
  }

  void goDown() {
    scrollController.animateTo(
      scrollController.position.maxScrollExtent,
      duration: const Duration(milliseconds: 200),
      curve: Curves.easeIn,
    );
  }

  void goToRent() {
    App.router.navigate(Rent());
    App.currentPage.update(AppPage.rent);
  }

  void goToVacancy() {
    App.router.navigate(Vacancy());
    App.currentPage.update(AppPage.vacancy);
  }

  void goToAbout() {
    App.router.navigate(About());
    App.currentPage.update(AppPage.about);
  }

  void goToWork() {
    App.router.navigate(Work());
    App.currentPage.update(AppPage.work);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Column(
        children: [
          SizedBox(
            height: 90,
            child: ColoredBox(
              color: AppColors.grey,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 46,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CupertinoButton(
                      onPressed: goUp,
                      padding: EdgeInsets.zero,
                      minSize: 0,
                      child: Assets.icons.logo.svg(),
                    ),
                    Row(
                      children: [
                        CupertinoButton(
                          child: Text(
                            'Аренда',
                            style: AppTypography.inter.s30.w500.white,
                          ),
                          padding: EdgeInsets.zero,
                          minSize: 0,
                          onPressed: goToRent,
                        ),
                        const SizedBox(width: 94),
                        CupertinoButton(
                          child: Text(
                            'Услуги',
                            style: AppTypography.inter.s30.w500.white,
                          ),
                          padding: EdgeInsets.zero,
                          minSize: 0,
                          onPressed: goToWork,
                        ),
                        const SizedBox(width: 94),
                        CupertinoButton(
                          child: Text(
                            'Вакансии',
                            style: AppTypography.inter.s30.w500.white,
                          ),
                          padding: EdgeInsets.zero,
                          minSize: 0,
                          onPressed: goToVacancy,
                        ),
                        const SizedBox(width: 94),
                        CupertinoButton(
                          child: Text(
                            'О нас',
                            style: AppTypography.inter.s30.w500.white,
                          ),
                          padding: EdgeInsets.zero,
                          minSize: 0,
                          onPressed: goToAbout,
                        ),
                        const SizedBox(width: 94),
                        CupertinoButton(
                          child: Text(
                            'Контакты',
                            style: AppTypography.inter.s30.w500.white,
                          ),
                          padding: EdgeInsets.zero,
                          minSize: 0,
                          onPressed: goDown,
                        ),
                      ],
                    ),
                    SelectableText(
                      phone,
                      style: AppTypography.inter.s30.blue.w600,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView(
              controller: scrollController,
              children: [
                ReactiveBuilderWidget<AppPage>(
                  container: App.currentPage,
                  builder: (context, value) {
                    switch (value.value ?? AppPage.about) {
                      case AppPage.about:
                        return AboutView();
                      case AppPage.rent:
                        return RentView();
                      case AppPage.work:
                        return WorkView();
                      case AppPage.vacancy:
                        return VacancyView();
                    }
                  },
                ),
                MakeOrderWidget(
                  nameController: nameController,
                  phoneController: phoneController,
                  phone: phone,
                ),
                ContactsWidget(phone: phone),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
