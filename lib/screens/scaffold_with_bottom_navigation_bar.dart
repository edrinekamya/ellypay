import 'package:ellypay/models/styles.dart';
import 'package:ellypay/widgets/app_drawer.dart';
import 'package:flutter/material.dart';

class ScaffoldWithBottomNavigationBar extends StatelessWidget {
  const ScaffoldWithBottomNavigationBar({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
      drawer: const AppDrawer(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: IconButton.filled(
        icon: const Icon(
          Icons.refresh,
          size: 32.0,
        ),
        onPressed: () {},
        style: ButtonStyle(
          backgroundColor: const MaterialStatePropertyAll(Colors.red),
          elevation: const MaterialStatePropertyAll(3.0),
          shadowColor: MaterialStatePropertyAll(Colors.grey[400]),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 8.0,
        notchMargin: 3.0,
        padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
        height: 48,
        color: Colors.white,
        surfaceTintColor: Colors.white,
        shadowColor: Colors.grey[400],
        shape: const CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.add_circle),
              style: Styles.tabBarButton,
              label: const Text('Load Float'),
            ),
            ElevatedButton.icon(
              onPressed: () {},
              style: Styles.tabBarButton,
              icon: const Icon(Icons.remove_circle_rounded),
              label: const Text('Redeem'),
            ),
          ],
        ),
      ),
    );
  }
}
