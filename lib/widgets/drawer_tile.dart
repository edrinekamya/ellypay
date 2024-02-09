import 'package:ellypay/models/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DrawerTile extends StatelessWidget {
  const DrawerTile({
    required this.title,
    super.key,
    this.color,
    this.icon,
    this.onTap,
    this.faIcon,
  });

  final Color? color;
  final IconData? icon;
  final IconData? faIcon;
  final String title;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: faIcon != null
          ? FaIcon(
              faIcon,
              color: color,
            )
          : Icon(
              icon,
              color: color,
            ),
      title: Text(
        title,
        style: Styles.smallBoldText.copyWith(fontSize: 14),
      ),
      onTap: onTap,
    );
  }
}
