import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spektr/gen/assets.gen.dart';
import 'package:spektr/presentation/screens/about/rectangle_painter.dart';
import 'package:spektr/presentation/screens/root/widget/map_widget.dart';
import 'package:spektr/presentation/theme/app_colors.dart';
import 'package:spektr/presentation/theme/app_typography.dart';

class ContactsWidget extends StatelessWidget {
  const ContactsWidget({
    super.key,
    required this.phone,
  });

  final String phone;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 690,
      child: Stack(
        alignment: Alignment.centerRight,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width / 2 + 200,
            child: MapWidget(),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: SizedBox(
              width: MediaQuery.of(context).size.width / 2 - 100,
              child: CustomPaint(
                painter: RectanglePainter(
                  color: AppColors.grey,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 118),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(height: 44),
                      Text(
                        'Контакты',
                        style: AppTypography.inter.w900.s64.white,
                      ),
                      const SizedBox(height: 44),
                      Text(
                        'Мы ответим на все Ваши вопросы, просто оставьте заявку',
                        style: AppTypography.inter.s24.w500.white,
                      ),
                      const SizedBox(height: 59),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Assets.icons.location.svg(),
                          const SizedBox(width: 17),
                          Text(
                            //TODO: Hive address
                            'Новороссийск\nул. Осавиахима, 27',
                            style: AppTypography.inter.s24.w500.white,
                          ),
                          const SizedBox(width: 36),
                          Assets.icons.phone.svg(),
                          const SizedBox(width: 17),
                          Text(
                            phone,
                            style: AppTypography.inter.s24.w500.white,
                          ),
                        ],
                      ),
                      const SizedBox(height: 59),
                      Text(
                        'Работаем по всему Краснодарскому краю и другим регионам',
                        style: AppTypography.inter.s24.w400.white,
                      ),
                      const SizedBox(height: 62),
/*                      Row(
                        children: [
                          Assets.icons.inst.svg(),
                          const SizedBox(width: 22),
                          Assets.icons.tg.svg(),
                          const SizedBox(width: 22),
                          Assets.icons.whatsapp.svg(),
                          const SizedBox(width: 22),
                          Assets.icons.vk.svg(),
                          const SizedBox(width: 22),
                          Assets.icons.google.svg(),
                        ],
                      ),*/
                      const SizedBox(height: 63),
                      Assets.icons.logo.svg(),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
