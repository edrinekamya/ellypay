import 'package:ellypay/models/styles.dart';
import 'package:ellypay/widgets/icon_list_tile.dart';
import 'package:flutter/material.dart';

class AirtimeScreen extends StatelessWidget {
  const AirtimeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Airtime'),
      ),
      body: const Padding(
        padding: Styles.padding,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconListTile(
              icon: Icons.call,
              title: 'MTN Airtime',
            ),
            IconListTile(
              icon: Icons.call,
              title: 'MTN Voice Bundles',
            ),
          ],
        ),
      ),
    );
  }
}
