import 'package:ellypay/models/auth_provider.dart';
import 'package:ellypay/models/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import 'cash_balance.dart';
import 'nav_action.dart';
import 'service_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final agent = context.watch<AuthProvider>().agent;
    return Scaffold(
      appBar: AppBar(
        title: Text('Hi, ${agent?.name}'),
        leading: IconButton(
            onPressed: () => Scaffold.of(context).openDrawer(),
            icon: const Icon(Icons.menu)),
        actions: [
          IconButton(
            onPressed: () {
              context.go('/login');
              context.read<AuthProvider>().signOut();
            },
            icon: const Icon(Icons.input),
          )
        ],
      ),
      body: Padding(
        padding: Styles.padding,
        child: Column(
          children: [
            Card(
              color: Colors.red,
              shape: Styles.cardShape,
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    NavAction(
                      faIcon: FontAwesomeIcons.database,
                      title: 'Accounts',
                      route: '/accounts',
                    ),
                    NavAction(
                      icon: Icons.history,
                      title: 'History',
                      route: '/history',
                    ),
                    NavAction(
                      faIcon: FontAwesomeIcons.chartLine,
                      title: 'Reports',
                    ),
                    NavAction(
                      icon: Icons.settings,
                      title: 'Settings',
                      route: '/settings',
                    )
                  ],
                ),
              ),
            ),
            Styles.gapY,
            Card(
              shape: Styles.cardShape,
              color: Colors.white,
              surfaceTintColor: Colors.white,
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CashBalance(
                      title: 'Float Balance',
                      amount: 3399,
                    ),
                    CashBalance(
                      title: 'Commission Bal.',
                      amount: 6413.38,
                      right: true,
                    ),
                  ],
                ),
              ),
            ),
            Styles.gapY,
            Text(
              'Select a service to continue',
              style: Styles.boldText,
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 3,
                padding: Styles.padding,
                mainAxisSpacing: 4.0,
                crossAxisSpacing: 4.0,
                children: const [
                  ServiceCard(
                    title: 'Airtime',
                    faIcon: FontAwesomeIcons.phoneFlip,
                    route: '/airtime',
                  ),
                  ServiceCard(
                    title: 'Water Bills',
                    faIcon: FontAwesomeIcons.faucet,
                  ),
                  ServiceCard(
                    title: 'Fees & Taxes',
                    icon: Icons.receipt,
                  ),
                  ServiceCard(
                    title: 'Data',
                    faIcon: FontAwesomeIcons.chrome,
                  ),
                  ServiceCard(
                    title: 'M-Money',
                    faIcon: FontAwesomeIcons.mobileButton,
                  ),
                  ServiceCard(
                    title: 'Electricity',
                    faIcon: FontAwesomeIcons.lightbulb,
                  ),
                  ServiceCard(
                    title: 'Pay TV',
                    icon: Icons.tv_rounded,
                  ),
                  ServiceCard(
                    title: 'Agency Banking',
                    faIcon: FontAwesomeIcons.moneyBill,
                  ),
                  ServiceCard(
                    title: 'Float Share',
                    faIcon: FontAwesomeIcons.rightLeft,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
