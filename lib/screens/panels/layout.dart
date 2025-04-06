import 'package:famarar/screens/panels/admin/dashboard.dart';
import 'package:famarar/screens/panels/admin/user_management.dart';
import 'package:flutter/material.dart';

class Layout extends StatefulWidget {
  const Layout({super.key});

  @override
  State<Layout> createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        backgroundColor: Colors.white,
        selectedIndex: currentPageIndex,
        onDestinationSelected: (int idx) {
          setState(() {
            currentPageIndex = idx;
          });
        },
        destinations: <NavigationDestination>[
          NavigationDestination(icon: Icon(Icons.home_outlined), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.group_outlined), label: 'Users'),
          NavigationDestination(icon: Icon(Icons.shield_outlined), label: 'Security'),
          NavigationDestination(icon: Icon(Icons.cached), label: 'Updates'),
          NavigationDestination(icon: Icon(Icons.signal_cellular_alt), label: 'Reports'),
        ]
      ),
      body: <Widget> [
        const Dashboard(),
        const UserManagement()
      ] [currentPageIndex],
    );
  }
}
