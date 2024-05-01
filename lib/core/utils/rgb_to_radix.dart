import 'dart:ui';

import 'package:flutter/material.dart';

Color parseColor(String? colorCode) {
  if (colorCode != null && colorCode.isNotEmpty) {
    return Color(int.parse(colorCode, radix: 16) | 0xFF000000);
  } else {
    // Default to black if color is not provided
    return Colors.black;
  }
}