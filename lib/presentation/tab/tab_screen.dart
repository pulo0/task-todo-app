import 'package:flutter/material.dart';
import 'package:task_todo_app/presentation/home/home_screen.dart';
import 'package:task_todo_app/presentation/tab/widgets/drawer_list.dart';
import 'package:task_todo_app/presentation/tab/widgets/custom_navigation_bar.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({super.key});

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  int _currentPageIndex = 0;
  String _currentPageName = '';
  Widget _activePageContent = const Center(
    child: Text('temporary page name'),
  );

  void setPage(int index) => setState(() => _currentPageIndex = index);

  @override
  Widget build(BuildContext context) {
    switch (_currentPageIndex) {
      case 1:
        _currentPageName = 'Search';
        // temp widget
        _activePageContent = HomeScreen(_currentPageName);
        break;
      case 2:
        _currentPageName = 'Calendar';
        // temp widget for calendar screen...
        _activePageContent = HomeScreen(_currentPageName);
        break;
      case 3:
        _currentPageName = 'Settings';
        _activePageContent = HomeScreen(_currentPageName);
        break;
      default:
        _currentPageName = 'Home';
        _activePageContent = HomeScreen(_currentPageName);
    }

    return Scaffold(
      extendBody: true,
      resizeToAvoidBottomInset: false,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        elevation: 4,
        onPressed: () {},
        shape: const CircleBorder(),
        child: const Icon(Icons.add),
      ),
      // wip
      drawer: const DrawerList(),
      bottomNavigationBar: CustomNavigationBar(
        _currentPageIndex,
        setPage,
      ),
      body: _activePageContent,
    );
  }
}
