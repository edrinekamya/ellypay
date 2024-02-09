import 'package:ellypay/models/styles.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({
    super.key,
    required this.title,
    this.onPressed,
  });

  final String title;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
            onPressed: onPressed,
            style: Styles.buttonStyle,
            child: Text(
              title,
              style: Styles.buttonText,
            ),
          ),
        ),
      ],
    );
  }
}
