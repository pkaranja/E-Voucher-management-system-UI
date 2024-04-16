import 'package:flutter/material.dart';

import 'app_colors.dart';


InputDecoration textFieldDecoration(String labelText) {
  return InputDecoration(
    labelText: labelText,
    labelStyle: const TextStyle(
      color: themePrimaryColor,
      fontSize: 16,
      fontWeight: FontWeight.w600,
    ),
    enabledBorder: const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(15)),
      borderSide: BorderSide(
        width: 1,
        color: themeSecondaryColor,
      ),
    ),
    focusedBorder: const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(15)),
      borderSide: BorderSide(
        width: 1,
        color: themePrimaryColor,
      ),
    ),
  );
}
