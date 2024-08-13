import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spektr/gen/assets.gen.dart';
import 'package:spektr/presentation/theme/app_colors.dart';
import 'package:spektr/presentation/theme/app_typography.dart';

class FloatingCardWidget extends StatelessWidget {
  const FloatingCardWidget({
    Key? key,
    this.title,
    this.lenght,
    this.maxLiftingCapacity,
    this.deep,
  }) : super(key: key);
  final String? title;
  final String? lenght;
  final String? maxLiftingCapacity;
  final String? deep;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: AppColors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title ?? 'Number one',
            style: AppTypography.inter.black.s20.w600,
          ),
          SizedBox(
            height: 18,
          ),
          Assets.images.rent.image(),
          Text(
            title ?? 'Number Two',
            style: AppTypography.inter.black.s20.w600,
          )
        ],
      ),
    );
  }
}
