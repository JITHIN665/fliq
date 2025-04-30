import 'package:fliq/theme/colors.dart';
import 'package:flutter/material.dart';

AppColors appColor(context) => Theme.of(context).extension<AppColors>()!;

ThemeData getAppTheme(BuildContext context) {
  return ThemeData(
    extensions: const <ThemeExtension<AppColors>>[
      AppColors(
        background: Color(0xffD5CFD0),
        primary: Color(0xffE6446E),
        primaryText: Color(0xff583E45),
        secondaryText: Color(0xff4A90E2),
        ternaryText: Color(0xffFFFFFF),
        text: Color(0xff3B5998),
        gridColor: Color(0xff2E0E16),
        primaryGradient: [Color(0xffFF80A1), Color(0xffE6446E)],
      ),
    ],
    fontFamily: 'Manrope',
  );
}
