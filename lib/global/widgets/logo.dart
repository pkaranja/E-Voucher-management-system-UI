import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LogoWidget extends StatelessWidget {
  final double size;

const LogoWidget(
    {super.key, required this.size,
});

@override
Widget build(BuildContext context) {
  return Theme.of(context).brightness == Brightness.light
    ? Image.asset(
        'assets/images/logo.png',
        width: size,
        height: size,
      )
    : Image.asset(
        'assets/images/logo_white.png',
        width: size,
        height: size,
    );
  }
}