import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextThemeStyle {
  Color darkColor = const Color.fromRGBO(5, 10, 48, 1);
  Color lightColor = const Color.fromRGBO(5, 10, 48, 1);
  TextTheme textTheme(bool isDark) {
    return TextTheme(
      headline1: GoogleFonts.montserrat(
          fontSize: 97,
          fontWeight: FontWeight.w300,
          letterSpacing: -1.5,
          color: isDark ? lightColor : darkColor),
      headline2: GoogleFonts.montserrat(
        fontSize: 61,
        fontWeight: FontWeight.w300,
        letterSpacing: -0.5,
        color: isDark ? lightColor : darkColor,
      ),
      headline3:
          GoogleFonts.montserrat(fontSize: 48, fontWeight: FontWeight.w400),
      headline4: GoogleFonts.montserrat(
        fontSize: 34,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.25,
        color: isDark ? lightColor : darkColor,
      ),
      headline5:
          GoogleFonts.montserrat(fontSize: 24, fontWeight: FontWeight.w400),
      headline6: GoogleFonts.montserrat(
        fontSize: 20,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.15,
        color: isDark ? lightColor : darkColor,
      ),
      subtitle1: GoogleFonts.montserrat(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.15,
        color: isDark ? lightColor : darkColor,
      ),
      subtitle2: GoogleFonts.montserrat(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.1,
        color: isDark ? lightColor : darkColor,
      ),
      bodyText1: GoogleFonts.roboto(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.5,
        color: isDark ? lightColor : darkColor,
      ),
      bodyText2: GoogleFonts.roboto(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.25,
        color: isDark ? lightColor : darkColor,
      ),
      button: GoogleFonts.roboto(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        letterSpacing: 1.25,
        color: Colors.white,
      ),
      caption: GoogleFonts.roboto(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.4,
        color: isDark ? lightColor : darkColor,
      ),
      overline: GoogleFonts.roboto(
        fontSize: 10,
        fontWeight: FontWeight.w400,
        letterSpacing: 1.5,
        color: isDark ? lightColor : darkColor,
      ),
    );
  }
}
