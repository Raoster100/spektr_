import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ru_phone_formatter/ru_phone_formatter.dart';
import 'package:spektr/presentation/theme/app_colors.dart';
import 'package:spektr/presentation/theme/app_typography.dart';

class MakeOrderWidget extends StatelessWidget {
  MakeOrderWidget({
    super.key,
    required this.nameController,
    required this.phoneController,
    required this.phone,
  });

  final TextEditingController nameController;
  final TextEditingController phoneController;
  final String phone;
  final ruFormatter = RuPhoneInputFormatter();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 652,
      child: ColoredBox(
        color: AppColors.lightBlue,
        child: Padding(
          padding: const EdgeInsets.only(left: 118),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 63),
              Text(
                'Заказать технику',
                style: AppTypography.inter.s64.w900.black,
              ),
              const SizedBox(height: 26),
              Text(
                'После оформления заявки, в течении нескольких минут с Вами свяжется \nнаш администратор для уточнения всех деталей',
                style: AppTypography.inter.w500.s24.black,
              ),
              const SizedBox(height: 61),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 400,
                    child: TextField(
                      controller: nameController,
                      style: AppTypography.inter.s24.w400.black,
                      decoration: InputDecoration(
                        fillColor: AppColors.white,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide.none,
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide.none,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide.none,
                        ),
                        disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide.none,
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide.none,
                        ),
                        hintText: 'Ваше имя',
                        hintStyle: AppTypography.inter.s24.w400.black,
                      ),
                    ),
                  ),
                  const SizedBox(width: 100),
                  SizedBox(
                    width: 400,
                    child: TextFormField(
                      controller: phoneController,
                      style: AppTypography.inter.s24.w400.black,
                      inputFormatters: [ruFormatter],
                      decoration: InputDecoration(
                        fillColor: AppColors.white,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide.none,
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide.none,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide.none,
                        ),
                        disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide.none,
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide.none,
                        ),
                        hintText: '+7(___)-__-__-___',
                        hintStyle: AppTypography.inter.s24.w400.black,
                      ),
                    ),
                  ),
                  const SizedBox(width: 100),
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
              const SizedBox(height: 60),
              SelectableText(
                'Или звоните по телефону ${phone}',
                style: AppTypography.inter.s32.w500.black,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
