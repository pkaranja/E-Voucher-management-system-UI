import 'package:flutter/material.dart';

import '../styles/app_colors.dart';
import '../styles/text_field_style.dart';

class DynamicInputWidget extends StatelessWidget {
  const DynamicInputWidget(
      {required this.controller,
      required this.obscureText,
      required this.focusNode,
      required this.toggleObscureText,
      required this.validator,
      required this.prefIcon,
      required this.textInputAction,
      required this.isNonPasswordField,
      required this.hint,
      this.keyboardType,
      Key? key})
      : super(key: key);

  // bool to check if the text field is for password or not
  final bool isNonPasswordField;
  // Controller for the text field
  final TextEditingController controller;
  // Function to toggle Text obscuractio on password text field
  final VoidCallback? toggleObscureText;
  // to obscure text or not bool
  final bool obscureText;
  // FocusNode for input
  final FocusNode focusNode;
  // Validator function
  final String? Function(String?)? validator;
  // Prefix icon for input form
  final Icon prefIcon;
  // The keyword action to display
  final TextInputAction textInputAction;
  final String hint;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    DateTime? date = DateTime(1900);

    return TextFormField(
      style: textFieldTextStyle(),
      controller: controller,
      decoration: InputDecoration(
          hintText: hint,
          prefixIcon: prefIcon,
          suffixIcon: IconButton(
            onPressed: toggleObscureText,
            // If is non-password filed like email the suffix icon will be null
            icon: isNonPasswordField
                ? const Icon(null)
                : obscureText
                ? const Icon(Icons.visibility)
                : const Icon(Icons.visibility_off),
          ),
          //hintText: hint,
          hintStyle: const TextStyle(fontSize: 14, color: kGrayC),
          filled: true,
          hoverColor: kGreenColor,
          focusColor: kGrayC,
          focusedBorder: Theme.of(context).inputDecorationTheme.focusedBorder,
          enabledBorder: Theme.of(context).inputDecorationTheme.enabledBorder,
      ),
      focusNode: focusNode,
      textInputAction: textInputAction,
      obscureText: obscureText,
      validator: validator,
      keyboardType: keyboardType,
      onTap: () async{
        FocusScope.of(context).requestFocus(FocusNode());
        date = await showDatePicker(
            context: context,
            initialDate:DateTime.now(),
            firstDate:DateTime(1900),
            lastDate: DateTime(2100));
      }
    );
  }
}
