import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:spektr/presentation/screens/vacancy/vacancy_card.dart';
import 'package:spektr/presentation/theme/app_typography.dart';

@RoutePage(name: 'vacancy')
class VacancyView extends StatelessWidget {
  const VacancyView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 110,
            horizontal: 135,
          ),
          child: Row(
            children: [
              Text(
                'Вакансии',
                style: AppTypography.inter.black.s40.w600,
              ),
            ],
          ),
        ),
        Wrap(
          children: [
            VacancyCardWidget(),
            VacancyCardWidget(),
            VacancyCardWidget(),
            VacancyCardWidget(),
            VacancyCardWidget(),
            VacancyCardWidget(),
            VacancyCardWidget(),
          ],
          runSpacing: 30,
          spacing: 30,
        ),
        SizedBox(height: 100),
      ],
    );
  }
}
