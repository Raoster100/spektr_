import 'package:flutter/material.dart';
import 'app_colors.dart';

extension AppTextExtensions on TextStyle {
  //Colors
  TextStyle get white => copyWith(color: AppColors.white);
  TextStyle get black => copyWith(color: AppColors.black);
  TextStyle get pink => copyWith(color: AppColors.pink);
  TextStyle get blue => copyWith(color: AppColors.blue);
  TextStyle get lightBlue => copyWith(color: AppColors.lightBlue);
  TextStyle get txt => copyWith(color: AppColors.txt);
  TextStyle get numTXTtr => copyWith(color: const Color.fromRGBO(255, 255, 255, 0.4));

  //Weights
  TextStyle get w100 => copyWith(fontWeight: FontWeight.w100);
  TextStyle get w200 => copyWith(fontWeight: FontWeight.w200);
  TextStyle get w300 => copyWith(fontWeight: FontWeight.w300);
  TextStyle get w400 => copyWith(fontWeight: FontWeight.w400);
  TextStyle get w500 => copyWith(fontWeight: FontWeight.w500);
  TextStyle get w600 => copyWith(fontWeight: FontWeight.w600);
  TextStyle get w800 => copyWith(fontWeight: FontWeight.w800);
  TextStyle get w900 => copyWith(fontWeight: FontWeight.w900);

  //Sizes
  TextStyle get s10 => copyWith(fontSize: 10);
  TextStyle get s12 => copyWith(fontSize: 12);
  TextStyle get s14 => copyWith(fontSize: 14);
  TextStyle get s15 => copyWith(fontSize: 15);
  TextStyle get s16 => copyWith(fontSize: 16);
  TextStyle get s18 => copyWith(fontSize: 18);
  TextStyle get s19 => copyWith(fontSize: 19);
  TextStyle get s20 => copyWith(fontSize: 20);
  TextStyle get s22 => copyWith(fontSize: 22);
  TextStyle get s24 => copyWith(fontSize: 24);
  TextStyle get s26 => copyWith(fontSize: 26);
  TextStyle get s28 => copyWith(fontSize: 28);
  TextStyle get s30 => copyWith(fontSize: 30);
  TextStyle get s32 => copyWith(fontSize: 32);
  TextStyle get s34 => copyWith(fontSize: 34);
  TextStyle get s36 => copyWith(fontSize: 36);
  TextStyle get s38 => copyWith(fontSize: 38);
  TextStyle get s40 => copyWith(fontSize: 38);
  TextStyle get s42 => copyWith(fontSize: 40);
  TextStyle get s44 => copyWith(fontSize: 44);
  TextStyle get s46 => copyWith(fontSize: 46);
  TextStyle get s48 => copyWith(fontSize: 48);
  TextStyle get s50 => copyWith(fontSize: 50);
  TextStyle get s52 => copyWith(fontSize: 52);
  TextStyle get s54 => copyWith(fontSize: 54);
  TextStyle get s64 => copyWith(fontSize: 64);
  TextStyle get s94_84 => copyWith(fontSize: 94.84);
  TextStyle get s99_25 => copyWith(fontSize: 99.25);
  TextStyle get s118 => copyWith(fontSize: 118);
  TextStyle get s260 => copyWith(fontSize: 260);
  TextStyle sizebleHuge(double screenSize) => _sizebale(screenSize, 14.5);
  TextStyle sizebleHigh(double screenSize) => _sizebale(screenSize, 15.2);
  TextStyle sizeble64(double screenSize) => _sizebale(screenSize, 22.5);
  TextStyle sizeble24(double screenSize) => _sizebale(screenSize, 60);
  TextStyle sizeble18(double screenSize) => _sizebale(screenSize, 80);

  TextStyle _sizebale(double screenSize, double c) {
    double fSize = screenSize / c;
    if (fSize < 14) fSize = 14;
    return copyWith(fontSize: fSize);
  }

  //Decorations
  TextStyle get underlined => copyWith(decoration: TextDecoration.underline);
  TextStyle get italic => copyWith(decoration: TextDecoration.underline);
  TextStyle get overline => copyWith(decoration: TextDecoration.overline);
  TextStyle get lineThrough => copyWith(decoration: TextDecoration.lineThrough);
}
