import 'package:flutter/material.dart';
import 'package:task_todo_app/presentation/tab/widgets/app_bar_icons_buttons.dart';
import 'package:task_todo_app/presentation/tab/widgets/custom_navigation_bar.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({super.key});

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  int _currentIndex = 0;
  String _currentPageName = '';
  Widget _activeContent = const Center(
    child: Text('current page'),
  );

  void setPage(int index) {
    setState(() => _currentIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    switch (_currentIndex) {
      case 1:
        _currentPageName = 'Search';
        _activeContent = const Center(child: Text('Search'));
        break;
      case 2:
        _currentPageName = 'Calendar';
        _activeContent = const Center(child: Text('Calendar'));
        break;
      case 3:
        _currentPageName = 'Settings';
        _activeContent = const Center(child: Text('Settings'));
        break;
      default:
        _currentPageName = 'Home';
        _activeContent = const Center(child: Text('Home'));
        break;
    }

    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          leading: AppBarIconsButtons(
            optionIcon: const Icon(Icons.menu_outlined),
            onButtonPress: () {},
            paddingOptionToLeft: 16,
          ),
          leadingWidth: 66,
          title: Text(_currentPageName),
          centerTitle: true,
          actions: [
            AppBarIconsButtons(
              optionIcon: const Icon(Icons.notifications),
              onButtonPress: () {},
              paddingOptionToRight: 16,
            )
          ]),
      extendBody: true,
      resizeToAvoidBottomInset: false,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        foregroundColor: Colors.grey.shade800,
        backgroundColor: Colors.grey.shade300,
        elevation: 4,
        onPressed: () {},
        shape: const CircleBorder(),
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: CustomNavigationBar(_currentIndex, setPage),
      body: _activeContent,
    );
  }
}
