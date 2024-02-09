import 'package:ellypay/models/styles.dart';
import 'package:flutter/material.dart';

class CardTile extends StatelessWidget {
  const CardTile({
    super.key,
    this.child,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: Styles.cardShape,
      color: Colors.white,
      surfaceTintColor: Colors.white,
      child: Padding(
        padding: Styles.padding,
        child: child,
      ),
    );
  }
}
