import 'package:ellypay/models/styles.dart';
import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  const InputField({
    super.key,
    required this.labelText,
    this.maxLength,
    this.helperText,
    this.controller,
  });

  final String labelText;
  final int? maxLength;
  final String? helperText;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          labelText: labelText,
          helperText: helperText,
          labelStyle: Styles.greyText),
      maxLength: maxLength,
      controller: controller,
    );
  }
}
