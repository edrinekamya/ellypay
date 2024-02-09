import 'package:ellypay/extensions.dart';
import 'package:ellypay/models/styles.dart';
import 'package:flutter/material.dart';

class CashBalance extends StatelessWidget {
  const CashBalance({
    super.key,
    required this.title,
    required this.amount, this.right,
  });

  final String title;
  final double amount;
  final bool? right;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: right != null ? CrossAxisAlignment.end : CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Styles.smallBoldText,
        ),
        Text(
          'UGX. ${amount.formattedWithCommas}',
          style: Styles.primaryText,
        ),
      ],
    );
  }
}
