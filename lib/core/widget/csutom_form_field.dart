import 'package:flutter/material.dart';
import 'package:mentortask/core/widget/constants.dart';

class CustomFormField extends StatelessWidget {
  final String labelText;
  final String hintText;
  final bool obscureText;
  final TextInputType keyboardType;
  final FormFieldValidator<String>? validator;

  const CustomFormField({
    super.key,
    required this.labelText,
    required this.hintText,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      keyboardType: keyboardType,
      validator: validator,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        enabledBorder: outlineInputBorder(),
        focusedBorder: outlineInputBorder(),
      ),
    );
  }

  OutlineInputBorder outlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(28),
      borderSide: const BorderSide(color: kTextColor),
      gapPadding: 10,
    );
  }
}
