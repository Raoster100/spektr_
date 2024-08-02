import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:spektr/presentation/screens/work/work_card.dart';
import 'package:spektr/presentation/theme/app_typography.dart';

@RoutePage(name: 'work')
class WorkView extends StatelessWidget {
  const WorkView({Key? key}) : super(key: key);

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
                'Услуги',
                style: AppTypography.inter.black.s40.w600,
              ),
            ],
          ),
        ),
        Wrap(
          children: [
            WorkCardWidget(),
            WorkCardWidget(),
            WorkCardWidget(),
            WorkCardWidget(),
            WorkCardWidget(),
            WorkCardWidget(),
            WorkCardWidget(),
          ],
          runSpacing: 30,
          spacing: 30,
        ),
        SizedBox(height: 100),
      ],
    );
  }
}
