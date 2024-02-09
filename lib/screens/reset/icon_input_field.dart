import 'package:flutter/material.dart';

class IconInputField extends StatelessWidget {
  const IconInputField({
    super.key,
    required this.icon,
    this.prefix,
    this.labelText,
    this.controller,
  });

  final IconData icon;
  final String? prefix;
  final String? labelText;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        prefixIcon: Icon(icon),
        labelText: labelText,
        prefix: prefix != null ? Text(prefix!) : null,
      ),
      controller: controller,
    );
  }
}
