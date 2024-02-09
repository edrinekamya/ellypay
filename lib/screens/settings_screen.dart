import 'package:ellypay/models/styles.dart';
import 'package:ellypay/widgets/icon_list_tile.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: const Padding(
        padding: Styles.padding,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconListTile(
              icon: Icons.vpn_key,
              title: 'PIN Set or Change',
              subtitle: 'Set a transaction PIN or Change the current one',
            ),
            Styles.gapY,
            IconListTile(
              icon: Icons.lock,
              title: 'Change Password',
              subtitle: 'Set a new password for you agent account',
            ),
            Styles.gapY,
            IconListTile(
              icon: Icons.print,
              title: 'Printer Settings',
              subtitle:
                  'Test print and select your preferred POS Receipt Printer',
            )
          ],
        ),
      ),
    );
  }
}
