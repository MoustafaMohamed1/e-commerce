import 'package:ecommerceapp/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key,
      required this.hintText,
      required this.textInputType,
      this.suffixIcon});
  final String hintText;
  final TextInputType textInputType;
  final Widget? suffixIcon;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        keyboardType: textInputType,
        decoration: InputDecoration(
          suffixIcon: suffixIcon,
          hintText: hintText,
          hintStyle: TextStyles.bold13.copyWith(
            color: const Color(0xFF949D9E),
          ),
          filled: true,
          fillColor: const Color(0xFFF9FAFA),
          border: buildBorder(),
          focusedBorder: buildBorder(),
        ));
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(4),
        borderSide: const BorderSide(
          width: .3,
          color: Color(0xFFE6E9E9),
        ));
  }
}
