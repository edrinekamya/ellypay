import 'package:ellypay/models/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class NavAction extends StatelessWidget {
  const NavAction({
    super.key,
    required this.title,
    this.icon,
    this.route,
    this.faIcon,
  });

  final String title;
  final IconData? icon;
  final IconData? faIcon;
  final String? route;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton.filled(
          alignment: Alignment.center,
          color: Theme.of(context).colorScheme.error,
          onPressed: () => route != null ? context.push(route!) : null,
          iconSize: 18,
          icon: faIcon != null
              ? FaIcon(
                  faIcon,
                  color: Colors.red,
                )
              : Icon(
                  icon,
                  color: Colors.red,
                ),
          style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.white)),
        ),
        Text(
          title,
          style: Styles.buttonText,
        )
      ],
    );
  }
}
