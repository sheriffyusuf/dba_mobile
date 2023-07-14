import 'package:flutter/material.dart';

abstract class AppPalette {
  static const white = Color(0xffFFFFFF);
  static const black = Color(0xff000000);
  static const transparent = Colors.transparent;
  static const blue = Color.fromARGB(255, 41, 11, 177);

  // Grey
  static const primary = _PrimaryColor();
  static const grey = _GreyColors();
  static const red = _RedColors();
  static const dark = _DarkColors();
  static const yellow = _YellowColors();
  static const lime = _LimeColors();
}

/// Usage example: `AppPalette.grey.grey50`.
class _GreyColors {
  const _GreyColors();

  final grey50 = const Color(0xFFFAFAFA);
  final grey100 = const Color(0xFFF5F5F5);
  final gray50 = const Color(0xffFEFEFE);
  final gray100 = const Color(0xffF9FAFB);
  final gray150 = const Color(0xffE9ECF1);

  final gray200 = const Color(0xffF8F9FA);
  final gray250 = const Color(0xffefeff0);
  final gray300 = const Color(0xffC6C7C8);
  final gray350 = const Color(0xff7A7C7F);
  final gray360 = const Color(0xff6A707F);
  final gray400 = const Color(0xff959596);

  final grey500 = const Color(0xff7A7C7F);
  final gray600 = const Color(0xff899197);
}

class _PrimaryColor {
  const _PrimaryColor();
  final primary50 = const Color(0xffEEFFF9);
  final primary70 = const Color(0xff14A572);
  final primary80 = const Color(0xff2ECE96);
  final primary60 = const Color(0xffEAFFEA);
  final primary100 = const Color(0xff52F7BE);
  final primary200 = const Color(0xff2FCF97);
  final primary300 = const Color(0xff14A673);
  final primary350 = const Color(0xff2ECE96);
  final primary400 = const Color(0xff027D52);
}

class _DarkColors {
  const _DarkColors();
  //dark color
  final dark50 = const Color(0xff4D5154);
  final dark55 = const Color(0xff534F4F);
  final dark60 = const Color(0xff3B4250);

  final dark100 = const Color(0xff212529);
  final dark200 = const Color(0xff1A1E21);
  final dark300 = const Color(0xff141619);
  final dark350 = const Color(0xff151A26);

  final dark400 = const Color(0xff000000);
}

class _RedColors {
  const _RedColors();
  final red50 = const Color(0xffEA868F);
  final red60 = const Color(0xffFEEAEA);
  final red100 = const Color(0xffE35D6A);
  final red200 = const Color(0xffDC3545);
  final red300 = const Color(0xffB02A37);
  final red350 = const Color(0xffFF3131);
  final red400 = const Color(0xff842029);
}

class _YellowColors {
  const _YellowColors();
  final yellow50 = const Color(0xffFFDA6A);
  final yellow100 = const Color(0xffFFCD39);
  final yellow200 = const Color(0xffFFC107);
  final yellow300 = const Color(0xffCC9A06);

  final yellow400 = const Color(0xff997404);
}

class _LimeColors {
  const _LimeColors();
  final lime50 = const Color(0xffF8FFE6);
  final lime100 = const Color(0xffDEFF8D);
  final lime200 = const Color(0xffD1FF60);
  final lime300 = const Color(0xffC4FF34);
  final lime400 = const Color(0xffAEF207);
}
