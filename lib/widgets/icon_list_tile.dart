import 'package:ellypay/models/styles.dart';
import 'package:flutter/material.dart';

class IconListTile extends StatelessWidget {
  const IconListTile(
      {super.key, required this.icon, required this.title, this.subtitle});

  final IconData icon;
  final String title;
  final String? subtitle;

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.white,
        surfaceTintColor: Colors.white,
        shape: Styles.cardShape,
        child: ListTile(
          leading: Icon(
            icon,
            color: Styles.brandColor,
          ),
          title: Text(
            title,
            style: Styles.primaryText,
          ),
          subtitle: subtitle != null
              ? Text(
                  subtitle!,
                  style: Styles.greyText,
                )
              : null,
          trailing: const Icon(
            Icons.arrow_forward_rounded,
            color: Styles.brandColor,
          ),
        ));
  }
}
