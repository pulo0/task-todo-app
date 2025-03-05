import 'package:flutter/material.dart';
import 'package:task_todo_app/styles/app_dimensions.dart';
import 'package:task_todo_app/presentation/tab/widgets/app_bar_icons_buttons.dart';
import 'package:task_todo_app/presentation/home/widgets/bottom_drawer.dart';
import 'package:task_todo_app/presentation/home/widgets/image_panel.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: <Widget>[
        SliverAppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              AppBarIconsButtons(
                optionIcon: const Icon(Icons.menu_outlined),
                onButtonPress: () {},
              ),
              const Text('Home'),
              AppBarIconsButtons(
                optionIcon: const Icon(Icons.notifications),
                onButtonPress: () {},
              ),
            ],
          ),
        ),
        const SliverToBoxAdapter(child: SizedBox(height: AppDimensions.l)),
        const SliverToBoxAdapter(child: ImagePanel()),
        const SliverToBoxAdapter(child: SizedBox(height: AppDimensions.m)),
        const BottomDrawer(),
      ],
    );
  }
}
