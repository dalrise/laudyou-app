import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'constants.dart';

class Themes {
  static final light = ThemeData(
    primaryColor: kPrimaryColor,
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
    textTheme: textTheme(),
    appBarTheme: appTheme(),
    textSelectionTheme:
        const TextSelectionThemeData(cursorColor: kPrimaryColor),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );

  static final dark =
      ThemeData(primaryColor: Colors.yellow, brightness: Brightness.light);
}

TextTheme textTheme() {
  return TextTheme(
    headline1: GoogleFonts.openSans(fontSize: 18.0, color: Colors.black),
    headline2: GoogleFonts.openSans(
        fontSize: 16.0, color: Colors.black, fontWeight: FontWeight.bold),
    bodyText1: GoogleFonts.openSans(fontSize: 16.0, color: Colors.black),
    bodyText2: GoogleFonts.openSans(fontSize: 14.0, color: Colors.grey),
    subtitle1: GoogleFonts.openSans(fontSize: 15.0, color: Colors.black),
  );
}

AppBarTheme appTheme() {
  return AppBarTheme(
    centerTitle: false,
    color: kPrimaryColor,
    elevation: 0.0,
    toolbarTextStyle: TextTheme(
      headline6: GoogleFonts.nanumGothic(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    ).bodyText2,
    titleTextStyle: TextTheme(
      headline6: GoogleFonts.nanumGothic(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    ).headline6,
    iconTheme: const IconThemeData(color: Colors.black),
    actionsIconTheme: const IconThemeData(color: Colors.black),
  );
}

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    textTheme: textTheme(),
    appBarTheme: appTheme(),
    primaryColor: kPrimaryColor,
    textSelectionTheme:
        const TextSelectionThemeData(cursorColor: kPrimaryColor),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}
