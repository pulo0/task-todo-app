import 'package:flutter/material.dart';

class CustomNavigationBar extends StatelessWidget {
  final int index;
  final void Function(int)? destinationSelectedFunc;

  const CustomNavigationBar(this.index, this.destinationSelectedFunc,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      notchMargin: 6.0,
      child: NavigationBar(
        selectedIndex: index,
        backgroundColor: Colors.transparent,
        onDestinationSelected: destinationSelectedFunc,
        labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
        destinations: const <NavigationDestination>[
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            selectedIcon: Icon(Icons.home),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          NavigationDestination(
            icon: Icon(Icons.calendar_month_outlined),
            selectedIcon: Icon(Icons.calendar_month),
            label: 'Calendar',
          ),
          NavigationDestination(
            icon: Icon(Icons.settings_outlined),
            selectedIcon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
