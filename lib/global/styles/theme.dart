import 'package:zawadi/global/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class ThemeSwitch extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.system;

  bool get isDarkMode {
    if (themeMode == ThemeMode.system) {
      final brightness = SchedulerBinding.instance.window.platformBrightness;
      return brightness == Brightness.dark;
    } else {
      return themeMode == ThemeMode.dark;
    }
  }

  void switchTheme(bool isOn) {
    themeMode = isOn ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}

class AppTheme {
  static final lightTheme = ThemeData(
    canvasColor: kCardColor,
    textTheme: const TextTheme(
      //display large
        displayLarge: TextStyle(
            letterSpacing: -.5,
            color: kFontBlackC,
            fontSize: 38,
            fontWeight: FontWeight.w600),

        //label large
        labelLarge: TextStyle(
            letterSpacing: -.5,
            color: Colors.white,
            fontSize: 32,
            fontWeight: FontWeight.w700),

        //label medium
        labelMedium: TextStyle(
            fontSize: 25, color: kFontBlackC, fontWeight: FontWeight.w700),

        //label small
        labelSmall: TextStyle(
            letterSpacing: -.1,
            color: Colors.white,
            fontSize: 15,
            fontWeight: FontWeight.w500),

        //display small
        displaySmall: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w300,
            height: 1.25,
            letterSpacing: .2),

        //display medium
        displayMedium: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          height: 1,
          overflow: TextOverflow.ellipsis,
        ),
        bodyLarge: TextStyle(color: kFontBlackC),
        bodyMedium: TextStyle(color: kFontBlackC),
        bodySmall: TextStyle(color: kFontBlackC)),
    fontFamily: 'Questrial',
    scaffoldBackgroundColor: Colors.white,
    colorScheme: const ColorScheme.light(),
    primaryColor: kGreenColor,
    cardColor: kCardColor,
    inputDecorationTheme: InputDecorationTheme(
      hoverColor: kGreenColor,
      focusColor: kTextFieldColor,
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: kTextFieldBorderC),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: kTextFieldBorderC),
        borderRadius: BorderRadius.circular(12),
      ),
    ),
  );

  static final darkTheme = ThemeData(
      canvasColor: kDarkCardC,
      datePickerTheme: const DatePickerThemeData(
          todayBorder: BorderSide(color: kDarkGreenColor),
          rangePickerSurfaceTintColor: kDarkGreenColor),
      fontFamily: 'Questrial',
      scaffoldBackgroundColor: kDarkScaffoldC,
      colorScheme: const ColorScheme.dark(),
      cardColor: kDarkCardC,
      primaryColor: kDarkGreenColor,
      textTheme: const TextTheme(
        //display large
        displayLarge: TextStyle(
            letterSpacing: -.5,
            color: kFontLightGrey,
            fontSize: 38,
            fontWeight: FontWeight.w600),

        //label large
        labelLarge: TextStyle(
            letterSpacing: -.5,
            color: kFontLightGrey,
            fontSize: 32,
            fontWeight: FontWeight.w700),

        //label medium
        labelMedium: TextStyle(
            fontSize: 25,
            color: kFontLightGrey,
            fontWeight:
            FontWeight.w700),

        //label small
        labelSmall: TextStyle(
            letterSpacing: -.1,
            color: kFontBlackC,
            fontSize: 15,
            fontWeight: FontWeight.w500),

        //display small
        displaySmall: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w300,
            height: 1.25,
            letterSpacing: .2),

        //display medium
        displayMedium: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          height: 1,
          overflow: TextOverflow.ellipsis,
        ),
        bodyLarge: TextStyle(color: kFontLightGrey),
        bodyMedium: TextStyle(color: kFontLightGrey),
        bodySmall: TextStyle(color: kFontLightGrey)),
      inputDecorationTheme: InputDecorationTheme(
          hoverColor: kDarkGreenColor,
          focusColor: kDarkGreenColor,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Colors.transparent),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.circular(12),
          )),
  );

  static bool isDarkMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }
}