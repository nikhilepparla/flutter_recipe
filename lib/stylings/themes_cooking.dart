import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Food {
  static TextTheme lightTexTheme = TextTheme(
    bodyText1: GoogleFonts.openSans(
        fontSize: 20, fontWeight: FontWeight.w700, color: Colors.white),
    headline1: GoogleFonts.openSans(
      fontSize: 32,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    headline2: GoogleFonts.openSans(
        fontSize: 21, fontWeight: FontWeight.w700, color: Colors.white),
    headline5: GoogleFonts.openSans(
        fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white),
    headline6: GoogleFonts.openSans(
        fontSize: 20, fontWeight: FontWeight.w600, color: Colors.white),
  );
  static TextTheme darkTextTheme = TextTheme(
    bodyText1: GoogleFonts.openSans(
        fontSize: 20, fontWeight: FontWeight.w700, color: Colors.black),
    headline1: GoogleFonts.openSans(
      fontSize: 32,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    headline2: GoogleFonts.openSans(
        fontSize: 21, fontWeight: FontWeight.w700, color: Colors.black),
    headline5: GoogleFonts.openSans(
        fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black),
    headline6: GoogleFonts.openSans(
        fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black),
  );
  static ThemeData light() {
    return ThemeData(
      brightness: Brightness.light,
      primaryColor: Colors.white,
      accentColor: Colors.black,
      textSelectionTheme:
          const TextSelectionThemeData(selectionColor: Colors.green),
      textTheme: lightTexTheme,
    );
  }
  static ThemeData dark() {
    return ThemeData(
      brightness: Brightness.dark,
      primaryColor: Colors.black,
      accentColor: Colors.white,
      textSelectionTheme:
      const TextSelectionThemeData(selectionColor: Colors.green),
      textTheme: lightTexTheme,
    );
  }
}
