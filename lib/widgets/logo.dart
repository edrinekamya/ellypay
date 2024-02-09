import 'package:ellypay/models/styles.dart';
import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Theme.of(context).colorScheme.primary,
      radius: 48.0,
      child: Text(
        'ELLY PAY',
        style: Styles.boldText.copyWith(color: Colors.white),
      ),
    );
  }
}
