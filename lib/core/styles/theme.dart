import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

import 'app_colors.dart';

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
    primaryColor: themePrimaryColor,
    primaryColorLight: themePrimaryLightColor,
    primaryColorDark: themePrimaryDarkColor,
    hintColor: themeAlmostBlackColor,
    textTheme: _buildTextTheme(isDarkMode: false),
    canvasColor: themeLightGreyColor,
    scaffoldBackgroundColor: themeLightGreyColor,
    colorScheme: const ColorScheme.light(
      background: themeLightGreyColor,
    ),
    inputDecorationTheme: InputDecorationTheme(
      hoverColor: themePrimaryColor,
      focusColor: themeSecondaryColor,
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: kTextFieldBorderC),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: kTextFieldBorderC),
        borderRadius: BorderRadius.circular(12),
      ),
      hintStyle: TextStyle(
        fontFamily: 'QrooFont',
        fontSize: 16.sp,
        color: themeGreyColor,
        fontWeight: FontWeight.w400,
      ),
    ),
    cardColor: themeDarkGreyColor,
    dividerColor: const Color(0xFF591F27),
    brightness: Brightness.light,
  );



  static final darkTheme = ThemeData(
    primaryColor: themePrimaryColor,
    primaryColorLight: themePrimaryLightColor,
    primaryColorDark: themePrimaryDarkColor,
    hintColor: themeLightGreyColor,
    textTheme: _buildTextTheme(isDarkMode: true),
    canvasColor: themeDarkScaffold,
    scaffoldBackgroundColor: themeDarkScaffold,
    colorScheme: const ColorScheme.dark(
      background: themeDarkScaffold,
    ),
    inputDecorationTheme: InputDecorationTheme(
      hoverColor: themePrimaryColor,
      focusColor: themeSecondaryColor,
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: kTextFieldBorderC),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: kTextFieldBorderC),
        borderRadius: BorderRadius.circular(12),
      ),
      hintStyle: TextStyle(
        fontFamily: 'QrooFont',
        fontSize: 16.sp,
        color: themeGreyColor,
        fontWeight: FontWeight.w400,
      ),
    ),
    cardColor: themeDarkGreyColor,
    dividerColor: const Color(0xFFF4F5F4),
    brightness: Brightness.dark,
  );




  static TextTheme _buildTextTheme({bool isDarkMode = false}) {
    return TextTheme(
      displayLarge: TextStyle(
        fontSize: 96.sp,
        fontWeight: FontWeight.bold,
        fontFamily: 'QrooFont',
        color: isDarkMode ? themeAlmostWhiteColor : themeAlmostBlackColor,
      ),
      displayMedium: TextStyle(
        fontSize: 60.sp,
        fontWeight: FontWeight.bold,
        fontFamily: 'QrooFont',
        color: isDarkMode ? themeAlmostWhiteColor : themeAlmostBlackColor,
      ),
      displaySmall: TextStyle(
        fontSize: 48.sp,
        fontWeight: FontWeight.bold,
        fontFamily: 'QrooFont',
        color: isDarkMode ? themeAlmostWhiteColor : themeAlmostBlackColor,
      ),
      headlineMedium: TextStyle(
        fontSize: 34.sp,
        fontWeight: FontWeight.bold,
        fontFamily: 'QrooFont',
        color: isDarkMode ? themeAlmostWhiteColor : themeAlmostBlackColor,
      ),
      headlineSmall: TextStyle(
        fontSize: 24.sp,
        fontWeight: FontWeight.bold,
        fontFamily: 'QrooFont',
        color: isDarkMode ? themeAlmostWhiteColor : themeAlmostBlackColor,
      ),

      titleLarge: TextStyle(
        fontSize: 20.sp,
        fontWeight: FontWeight.bold,
        fontFamily: 'QrooFont',
        color: isDarkMode ? themeAlmostWhiteColor : themeAlmostBlackColor,
      ),
      titleMedium: TextStyle(
        fontSize: 18.sp,
        fontWeight: FontWeight.bold,
        fontFamily: 'QrooFont',
        color: isDarkMode ? themeAlmostWhiteColor : themeAlmostBlackColor,
      ),
      titleSmall: TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.bold,
        fontFamily: 'QrooFont',
        color: isDarkMode ? themeAlmostWhiteColor : themeAlmostBlackColor,
      ),

      bodyLarge: TextStyle(
        fontSize: 16.sp,
        color: isDarkMode ? themeAlmostWhiteColor : themeAlmostBlackColor,
        fontFamily: 'QrooFont',
      ),
      bodyMedium: TextStyle(
        fontSize: 14.sp,
        color: isDarkMode ? themeAlmostWhiteColor : themeAlmostBlackColor,
        fontFamily: 'QrooFont',
      ),
      bodySmall: TextStyle(
        fontSize: 12.sp,
        color: isDarkMode ? themeAlmostWhiteColor : themeAlmostBlackColor,
        fontFamily: 'QrooFont',
      ),

      labelLarge: TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.bold,
        color: isDarkMode ? themeAlmostWhiteColor : themeAlmostBlackColor,
        fontFamily: 'QrooFont',
      ),

      labelSmall: TextStyle(
        fontSize: 10.sp,
        color: isDarkMode ? themeAlmostWhiteColor : themeAlmostBlackColor,
        fontFamily: 'QrooFont',
        fontWeight: FontWeight.bold
      ),

      labelMedium: TextStyle(
          fontSize: 13.sp,
          color: isDarkMode ? themeAlmostWhiteColor : themeAlmostBlackColor,
          fontFamily: 'QrooFont',
          fontWeight: FontWeight.bold
      ),
    );
  }
}