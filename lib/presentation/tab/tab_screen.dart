import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_todo_app/presentation/tab/cubit/content_switcher_cubit.dart';
import 'package:task_todo_app/presentation/tab/cubit/content_switcher_state.dart';
import 'package:task_todo_app/presentation/tab/widgets/app_bar_icons_buttons.dart';
import 'package:task_todo_app/presentation/tab/widgets/custom_navigation_bar.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({super.key});

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ContentSwitcherCubit, ContentSwitcherState>(
      builder: (context, state) => Scaffold(
        appBar: AppBar(
            automaticallyImplyLeading: false,
            leading: AppBarIconsButtons(
              optionIcon: const Icon(Icons.menu_outlined),
              onButtonPress: () {},
              paddingOptionToLeft: 16,
            ),
            leadingWidth: 66,
            title: Text(state.pageName),
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
        bottomNavigationBar: CustomNavigationBar(
          state.index,
          context.read<ContentSwitcherCubit>().setPage,
        ),
        body: state.activeContent,
      ),
    );
  }
}
