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
    primaryColor: themePrimaryColor,
    primaryColorLight: themePrimaryLightColor,
    primaryColorDark: themePrimaryDarkColor,
    hintColor: themeAlmostBlackColor,
    textTheme: const TextTheme(
      bodyMedium: TextStyle(
        fontSize: 16,
        color: themeAlmostBlackColor,
        fontWeight: FontWeight.w400,
        fontFamily: 'QrooFont'
      )
    ),
    canvasColor: const Color(0xFFF4F5F4),
    scaffoldBackgroundColor: themeLightGreyColor,
    colorScheme: const ColorScheme.light(
      background: themeLightGreyColor,
    ),
    inputDecorationTheme: const InputDecorationTheme(
      focusColor: themeSecondaryColor,
      hintStyle: TextStyle(
        fontSize: 16,
        color: themeGreyColor,
        fontWeight: FontWeight.w400,
      ),
    ),
    cardColor: themeDarkGreyColor,
    dividerColor: const Color(0xFF591F27),
    brightness: Brightness.light,
  );






  static final darkTheme = ThemeData(
    primaryColor: const Color(0xFFDA5726),
    primaryColorLight: const Color(0xFFE17A51),
    primaryColorDark: const Color(0xFFAE471E),
    hintColor: themeLightGreyColor,
    textTheme: const TextTheme(
        bodyMedium: TextStyle(
            fontSize: 16,
            color: themeLightGreyColor
        )
    ),
    canvasColor: const Color(0xFF591F27),
    scaffoldBackgroundColor: themeAlmostBlackColor,
    colorScheme: const ColorScheme.dark(
      background: themeAlmostBlackColor,
    ),
    cardColor: themeDarkGreyColor,
    dividerColor: const Color(0xFFF4F5F4),
    brightness: Brightness.dark,
  );

  static bool isDarkMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }
}