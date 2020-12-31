import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

ThemeMode getThemeMode(
  String themeMode,
) {
  switch (themeMode) {
    case 'ThemeMode.dark':
      return ThemeMode.dark;

    case 'ThemeMode.light':
    default:
      return ThemeMode.light;
  }
}

ThemeData appLightThemeData = ThemeData(
  scaffoldBackgroundColor: Colors.white,
  unselectedWidgetColor: Colors.grey[300],
  appBarTheme: AppBarTheme(
    brightness: Brightness.light,
    color: Colors.white,
    elevation: 0.0,
    textTheme: TextTheme(
      headline6: TextStyle(
        color: Colors.grey[900],
        fontSize: 20.0,
      ),
    ),
    iconTheme: IconThemeData(color: Colors.grey[900]),
  ),
  iconTheme: IconThemeData(
    color: Colors.grey[900],
  ),
  pageTransitionsTheme: const PageTransitionsTheme(
    builders: {
      TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
      TargetPlatform.android: CupertinoPageTransitionsBuilder(),
    },
  ),
  textTheme: TextTheme(
    headline1: TextStyle(
      color: Colors.grey[900],
    ),
    headline3: TextStyle(
      color: Colors.grey[900],
      fontFamily: 'gilroy',
      fontWeight: FontWeight.w700,
      fontSize: 40.0,
      letterSpacing: -1.0,
      height: 0.75,
    ),
    headline5: TextStyle(
      color: Colors.grey[900].withOpacity(0.3),
      fontWeight: FontWeight.w500,
      fontSize: 16.0,
      letterSpacing: -0.5,
      height: 0.75,
    ),
    headline6: TextStyle(
      color: Colors.grey[900],
      fontWeight: FontWeight.w700,
      fontSize: 16.0,
    ),
    subtitle2: TextStyle(
      color: Colors.grey[900].withOpacity(0.3),
      fontSize: 12.0,
    ),
  ),
);

ThemeData appDarkThemeData = appLightThemeData.copyWith(
  scaffoldBackgroundColor: Colors.grey[900],
  unselectedWidgetColor: Colors.grey[800],
  appBarTheme: AppBarTheme(
    brightness: Brightness.dark,
    color: Colors.grey[900],
    elevation: 0.0,
    textTheme: TextTheme(
      headline6: TextStyle(
        color: Colors.white,
        fontSize: 32.0,
      ),
    ),
    iconTheme: IconThemeData(color: Colors.white),
  ),
  dividerColor: Colors.black,
  iconTheme: IconThemeData(
    color: Colors.white,
  ),
  textTheme: TextTheme(
    headline1: TextStyle(
      color: Colors.white,
    ),
    headline3: TextStyle(
      color: Colors.white,
      fontFamily: 'gilroy',
      fontWeight: FontWeight.w900,
      fontSize: 40.0,
      letterSpacing: -1.0,
      height: 0.75,
    ),
    headline5: TextStyle(
      color: Colors.white.withOpacity(0.3),
      fontWeight: FontWeight.w500,
      fontSize: 16.0,
      letterSpacing: -0.5,
      height: 0.75,
    ),
    headline6: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w700,
      fontSize: 16.0,
    ),
    subtitle2: TextStyle(
      color: Colors.white.withOpacity(0.3),
      fontSize: 12.0,
    ),
  ),
);
