import 'package:ellypay/models/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ServiceCard extends StatelessWidget {
  const ServiceCard(
      {super.key, required this.title, this.icon, this.route, this.faIcon});

  final String title;
  final IconData? icon;
  final IconData? faIcon;
  final String? route;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: Styles.cardShape,
      color: Theme.of(context).colorScheme.primary,
      child: InkWell(
        onTap: () => route != null ? context.push(route!) : null,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            faIcon != null
                ? FaIcon(
                    faIcon,
                    color: Colors.white,
                    size: 20,
                  )
                : Icon(
                    icon,
                    color: Colors.white,
                    size: 20,
                  ),
            Styles.gapY,
            Text(
              title,
              style: Styles.buttonText,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
