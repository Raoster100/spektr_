import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:spektr/presentation/theme/app_typography.dart';
import 'card_widget.dart';

@RoutePage(name: 'rent')
class RentView extends StatelessWidget {
  const RentView({Key? key}) : super(key: key);

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
                'Аренда техники',
                style: AppTypography.inter.black.s40.w600,
              ),
            ],
          ),
        ),
        Wrap(
          children: [
            RentCardWidget(),
            RentCardWidget(),
            RentCardWidget(),
            RentCardWidget(),
            RentCardWidget(),
            RentCardWidget(),
            RentCardWidget(),
          ],
          runSpacing: 30,
          spacing: 30,
        ),
        SizedBox(height: 100),
      ],
    );
  }
}
