import 'dart:developer';

import 'package:flutter/material.dart';

import '../global/styles/app_colors.dart';

class CustomDateField extends StatelessWidget {
  const CustomDateField(
      {super.key,
        required this.hint,
        required this.iconName,
        required this.controller,
        this.obscureText = false,
        this.validator,
        this.keyboardType,
        this.inputFormatters
      });

  final String hint;
  final IconData iconName;
  final TextEditingController controller;
  final bool obscureText;
  final dynamic validator;
  final TextInputType? keyboardType;
  final dynamic inputFormatters;

  @override
  Widget build(BuildContext context) {
    DateTime? date = DateTime(1900);

    return TextFormField(
      style: const TextStyle(color: kGrayTextC),
      cursorColor: Theme.of(context).primaryColor,
      keyboardType: keyboardType,
      inputFormatters: inputFormatters,
      obscureText: obscureText,
      controller: controller,
      validator: validator,
      decoration: InputDecoration(
          prefixIcon: Icon(color: kGrayC, size: 18, iconName),
          hintText: hint,
          hintStyle: const TextStyle(fontSize: 16, color: kGrayC),
          filled: true,
          hoverColor: kGreenColor,
          focusColor: kTextFieldColor,
          focusedBorder: Theme.of(context).inputDecorationTheme.focusedBorder,
          enabledBorder: Theme.of(context).inputDecorationTheme.enabledBorder
      ),
      onTap: () async{
        log("CLICKEC BUTTON");
        FocusScope.of(context).requestFocus(FocusNode());
        date = await showDatePicker(
            context: context,
            initialDate:DateTime.now(),
            firstDate:DateTime(1900),
            lastDate: DateTime(2100));
      },
    );
  }
}
