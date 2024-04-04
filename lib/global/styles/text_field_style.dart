import 'package:flutter/material.dart';

import 'app_colors.dart';


InputDecoration textFieldDecoration(String labelText) {
  return InputDecoration(
    labelText: labelText,
    labelStyle: const TextStyle(
      color: primaryHighContrast,
      fontSize: 15,
      fontWeight: FontWeight.w600,
    ),
    enabledBorder: const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      borderSide: BorderSide(
        width: 1,
        color: primaryDark,
      ),
    ),
    focusedBorder: const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      borderSide: BorderSide(
        width: 1,
        color: primaryColor,
      ),
    ),
  );
}

textFieldTextStyle() {
  return const TextStyle(
    color: kTextFieldColor,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );
}
