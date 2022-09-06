import 'package:flutter/material.dart';
import 'package:tailwind_colors/tailwind_colors.dart';

Color kbodyBackgroundColor = TWColors.gray.shade200;
Color kTypographyColor = TWColors.gray.shade700;

//----------------------------------------
// Text Styles
//----------------------------------------
final kTextTheme__title_medium = TextStyle(
  fontSize: 22,
  fontWeight: FontWeight.w700,
  color: kTypographyColor,
);

final kTextThemeHeading3 = TextStyle(
  fontSize: 32,
  fontWeight: FontWeight.w700,
  color: kTypographyColor,
);

final kAppBarTheme = AppBarTheme(
  elevation: 0,
  backgroundColor: Colors.transparent,
  titleTextStyle: kTextTheme__title_medium,
);

final kAppTheme = ThemeData(
  appBarTheme: kAppBarTheme,
  scaffoldBackgroundColor: kbodyBackgroundColor,
  textTheme: TextTheme(headline3: kTextTheme__title_medium),
);
