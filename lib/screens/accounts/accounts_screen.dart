import 'package:ellypay/models/styles.dart';
import 'package:flutter/material.dart';

import 'account_info.dart';

class AccountsScreen extends StatelessWidget {
  const AccountsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Accounts'),
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AccountInfo(
            title: 'Float',
            totalIn: 717000,
            totalOut: 7143700,
            balance: 3399,
          ),
          Styles.gapY,
          Styles.gapY,
          AccountInfo(
            title: 'Commission',
            totalIn: 15395.47,
            totalOut: 10000,
            balance: 6413.38,
          ),
        ],
      ),
    );
  }
}
