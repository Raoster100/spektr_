import 'package:auto_route/annotations.dart';
import 'package:flutter/cupertino.dart';
import 'package:spektr/gen/assets.gen.dart';
import 'package:spektr/presentation/screens/about/rectangle_painter.dart';
import 'package:spektr/presentation/theme/app_colors.dart';
import 'package:spektr/presentation/theme/app_typography.dart';

@RoutePage(name: 'about')
class AboutView extends StatelessWidget {
  const AboutView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 872,
          child: Stack(
            children: [
              SizedBox(
                height: 872,
                child: Assets.images.bg1.image(
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                left: 15,
                top: 106,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Специальная техника\nдля любых задач',
                      style: AppTypography.inter.s48.w900.black,
                    ),
                    const SizedBox(height: 39),
                    CupertinoButton(
                      onPressed: () {
                        //TODO: mock
                      },
                      padding: EdgeInsets.symmetric(
                        vertical: 25,
                        horizontal: 140,
                      ),
                      color: AppColors.blue,
                      minSize: 0,
                      child: Text(
                        'Заказать',
                        style: AppTypography.inter.s24.w900.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 800,
          child: Stack(
            children: [
              SizedBox(
                height: 800,
                child: Assets.images.bg2.image(
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 0,
                left: 0,
                child: CustomPaint(
                  painter: RectanglePainter(color: AppColors.white),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 120,
                      top: 71,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Услуги',
                          style: AppTypography.inter.s48.w600.black,
                        ),
                        const SizedBox(height: 42),
                        Text(
                          'Мы предоставляем широкий спектр услуг в области\nстроительных работ',
                          style: AppTypography.inter.s24.w600.black,
                        ),
                        const SizedBox(height: 41),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: 46,
                                      height: 46,
                                      child: Assets.images.pipeline.image(),
                                    ),
                                    const SizedBox(width: 35),
                                    Text(
                                      'Прокладка коммуникаций',
                                      style: AppTypography.inter.s20.w600.black,
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 23),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    const SizedBox(width: 35),
                                  ],
                                ),
                                const SizedBox(height: 23),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: 46,
                                      height: 46,
                                      child: Assets.images.demolish.image(),
                                    ),
                                    const SizedBox(width: 35),
                                    Text(
                                      'Демонтаж строений',
                                      style: AppTypography.inter.s20.w600.black,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(width: 85),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: 46,
                                      height: 46,
                                      child: Assets.images.esk.image(),
                                    ),
                                    const SizedBox(width: 35),
                                    Text(
                                      'Рытье траншей',
                                      style: AppTypography.inter.s20.w600.black,
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 23),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: 46,
                                      height: 46,
                                      child: Assets.images.jackhammer.image(),
                                    ),
                                    const SizedBox(width: 35),
                                    Text(
                                      'Бурение грунта',
                                      style: AppTypography.inter.s20.w600.black,
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 23),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: 46,
                                      height: 46,
                                      child: Assets.images.bulldozer.image(),
                                    ),
                                    const SizedBox(width: 35),
                                    Text(
                                      'Уборка территории',
                                      style: AppTypography.inter.s20.w600.black,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        ColoredBox(
          color: AppColors.grey,
          child: Padding(
            padding: const EdgeInsets.only(left: 117),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 61),
                    Text(
                      'О НАС',
                      style: AppTypography.inter.s64.w900.lightBlue,
                    ),
                    const SizedBox(height: 42),
                    SizedBox(
                      width: 1107,
                      child: Text(
                        'Но активно развивающиеся страны третьего мира набирают популярность среди определенных слоев населения, а значит, должны быть подвергнуты целой серии независимых исследований.\nБанальные, но неопровержимые выводы, а также базовые сценарии поведения пользователей формируют глобальную экономическую сеть и при этом —  обнародованы. Разнообразный и богатый опыт говорит нам, что реализация намеченных плановых заданий в значительной степени обусловливает важность поставленных обществом задач.\nВот вам яркий пример современных тенденций — глубокий уровень погружения говорит о возможностях соответствующих условий активизации. Как уже неоднократно упомянуто, предприниматели в сети интернет освещают чрезвычайно интересные особенности картины в целом, однако конкретные выводы, разумеется, объединены в целые кластеры себе подобных.\nНо сторонники тоталитаризма в науке являются только методом политического участия и объективно рассмотрены соответствующими инстанциями! Прежде всего, сложившаяся структура организации создаёт предпосылки для соответствующих условий активизации.',
                        style: AppTypography.inter.s24.w600.white,
                      ),
                    ),
                    const SizedBox(height: 56),
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
