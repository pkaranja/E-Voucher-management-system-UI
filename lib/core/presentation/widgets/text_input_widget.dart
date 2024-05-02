import 'package:flutter/material.dart';
import 'package:flutter/src/services/text_formatter.dart';

import '../../styles/app_colors.dart';

class DynamicInputWidget extends StatelessWidget {
  const DynamicInputWidget(
      {required this.controller,
      required this.obscureText,
      required this.focusNode,
      required this.validator,
      required this.textInputAction,
      required this.isNonPasswordField,
      required this.hint,
      this.prefIcon,
      this.prefix,
      this.keyboardType,
      this.maxLines,
      this.onChanged,
      this.onTapped,
      this.inputFormatters,
      this.suffixIcon,
      this.suffixClickAction,
      Key? key})
      : super(key: key);

  // bool to check if the text field is for password or not
  final bool isNonPasswordField;
  // Controller for the text field
  final TextEditingController controller;
  // Function to toggle Text obscuraction on password text field
  final VoidCallback? suffixClickAction;
  // to obscure text or not bool
  final bool obscureText;
  // FocusNode for input
  final FocusNode focusNode;
  // Validator function
  final String? Function(String?)? validator;
  // Prefix icon for input form
  final Widget? prefIcon;
  final Widget? prefix;
  // The keyword action to display
  final TextInputAction textInputAction;
  final String hint;
  final TextInputType? keyboardType;
  final int? maxLines;

  //handle on input value changed
  final void Function(String)? onChanged;
  //handle on tapped value changed
  final void Function()? onTapped;
  // Suffix icon for input form
  final Widget? suffixIcon;

  //handle input formatters limits
  final List<TextInputFormatter>? inputFormatters;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: Theme.of(context).textTheme.bodyMedium,
      controller: controller,
      decoration: InputDecoration(
          hintText: hint,
          prefixIcon: prefIcon,
          prefix: prefix,
          suffixIcon: IconButton(
            onPressed: suffixClickAction,
            // If is non-password filed like email the suffix icon will be null
            icon: isNonPasswordField
                ? suffixIcon ?? const Icon(null)
                : obscureText
                ? const Icon(Icons.visibility)
                : const Icon(Icons.visibility_off),
          ),
          //hintText: hint,
          hintStyle: Theme.of(context).textTheme.bodyMedium,
          filled: true,
          hoverColor: themeSecondaryColor,
          focusColor: themeGreyColor,
          focusedBorder: Theme.of(context).inputDecorationTheme.focusedBorder,
          enabledBorder: Theme.of(context).inputDecorationTheme.enabledBorder,
      ),
      focusNode: focusNode,
      textInputAction: textInputAction,
      obscureText: obscureText,
      validator: validator,
      keyboardType: keyboardType,
      maxLines: maxLines ?? 1,
      onChanged: onChanged,
      onTap: onTapped,
      inputFormatters: inputFormatters,
    );
  }
}
