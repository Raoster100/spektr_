import 'package:flutter/cupertino.dart';
import 'package:spektr/gen/assets.gen.dart';
import 'package:spektr/presentation/theme/app_colors.dart';
import 'package:spektr/presentation/theme/app_typography.dart';

class RentCardWidget extends StatelessWidget {
  const RentCardWidget({
    Key? key,
    this.title,
    this.length,
    this.maxLiftingCapacity,
    this.deep,
  }) : super(key: key);
  final String? title;
  final String? length;
  final String? maxLiftingCapacity;
  final String? deep;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: AppColors.greyLight,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 36,
          vertical: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              title ?? 'Экскаваторы',
              style: AppTypography.inter.black.s20.w500,
            ),
            SizedBox(height: 18),
            Assets.images.rent.image(),
            SizedBox(height: 30),
            SizedBox(
              width: 300,
              height: 100,
              child: Text(
                length ?? 'Описание экскаватора в котором будет что то написано',
                style: AppTypography.inter.black.s16.w600,
              ),
            ),
            /*SizedBox(height: 22),
            Text(
              maxLiftingCapacity ?? 'Максимальная грузоподьемность........',
              style: AppTypography.inter.black.s20.w600,
            ),
            SizedBox(height: 22),
            Text(
              deep ?? 'Глубина копания......................................',
              style: AppTypography.inter.black.s20.w600,
            ),*/
            SizedBox(height: 22),
            SizedBox(
              width: 260,
              height: 60,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 4,
                    color: AppColors.blue,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: CupertinoButton(
                  child: Text(
                    'Арендовать',
                    style: AppTypography.inter.black.s20.w600,
                  ),
                  onPressed: () {},
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
