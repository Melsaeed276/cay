import 'package:flutter/material.dart';

import 'text_theme.dart';

class AppThemeStyle {
  TextThemeStyle textThemeStyle = TextThemeStyle();
  Color pColor = const Color.fromRGBO(40, 157, 210, 1);
  Color sColor = const Color.fromRGBO(202, 232, 255, 1);
  Color tColor = const Color.fromRGBO(5, 10, 48, 1);
  ThemeData lightThemeData() {
    return ThemeData(
      backgroundColor: Colors.white,
      scaffoldBackgroundColor: sColor,
      appBarTheme: AppBarTheme(
        backgroundColor: pColor,
      ),
      primaryColor: pColor,
      errorColor: Colors.red,
      //cardColor: Colors.white,
      shadowColor: Colors.blue,
      canvasColor: Colors.white,
      textTheme: textThemeStyle.textTheme(false),
    );
  }

  ThemeData darkThemeData() {
    return ThemeData(
      backgroundColor: sColor,
      scaffoldBackgroundColor: tColor,
      primaryColor: tColor,
      primarySwatch: Colors.blue,
      errorColor: Colors.red,
      //cardColor: Colors.white,
      shadowColor: sColor,
      canvasColor: Colors.white,
      textTheme: textThemeStyle.textTheme(true),
    );
  }
}
