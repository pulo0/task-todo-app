import 'package:flutter/material.dart';
import 'package:task_todo_app/styles/app_dimensions.dart';
import 'package:task_todo_app/presentation/tab/widgets/main_app_bar.dart';
import 'package:task_todo_app/presentation/home/widgets/bottom_drawer.dart';
import 'package:task_todo_app/presentation/home/widgets/image_panel.dart';

class HomeScreen extends StatelessWidget {
  final String currentPageName;

  const HomeScreen(this.currentPageName, {super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: <Widget>[
        MainAppBar(currentPageName),
        const SliverToBoxAdapter(child: SizedBox(height: AppDimensions.l)),
        const SliverToBoxAdapter(child: ImagePanel()),
        const SliverToBoxAdapter(child: SizedBox(height: AppDimensions.m)),
        const BottomDrawer(),
      ],
    );
  }
}
