import 'package:ellypay/models/auth_provider.dart';
import 'package:ellypay/models/styles.dart';
import 'package:ellypay/widgets/drawer_tile.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final agent = context.watch<AuthProvider>().agent;
    return Drawer(
      backgroundColor: Colors.white,
      surfaceTintColor: Colors.white,
      shape: Styles.noShape,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
              decoration: const BoxDecoration(
                color: Styles.brandColor,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CircleAvatar(
                    radius: 32.0,
                    backgroundColor: Colors.red,
                  ),
                  Styles.gapY,
                  Text(
                    '${agent?.name}',
                    style: Styles.whiteText,
                  ),
                  Text(
                    '${agent?.company.toUpperCase()}',
                    style: Styles.whiteText,
                  )
                ],
              )),
          DrawerTile(
            color: Colors.red,
            icon: Icons.dashboard,
            title: 'Dashboard',
            onTap: () => Navigator.pop(context),
          ),
          DrawerTile(
            color: Colors.green,
            icon: Icons.history,
            title: 'Transaction History',
            onTap: () {
              context.push('/history');
              Navigator.pop(context);
            },
          ),
          DrawerTile(
            color: Colors.purple,
            icon: Icons.timeline,
            title: 'Reports',
            onTap: () {},
          ),
          DrawerTile(
            color: Colors.blue,
            faIcon: FontAwesomeIcons.database,
            title: 'My Accounts',
            onTap: () {
              context.push('/accounts');
              Navigator.pop(context);
            },
          ),
          DrawerTile(
            color: Colors.amber,
            icon: Icons.headset_mic,
            title: 'Customer care',
            onTap: () {},
          ),
          DrawerTile(
            color: Styles.brandColor,
            icon: Icons.settings,
            title: 'Settings',
            onTap: () {
              context.push('/settings');
              Navigator.pop(context);
            },
          ),
          const Divider(),
          DrawerTile(
            icon: Icons.person,
            title: 'Agent No: ${agent?.number}',
            onTap: () {},
          ),
          const Divider(),
        ],
      ),
    );
  }
}
