import 'package:flutter/material.dart';
import 'package:task_todo_app/presentation/home/widgets/bottom_drawer.dart';
import 'package:task_todo_app/presentation/home/widgets/image_panel.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: <Widget>[
        SliverToBoxAdapter(child: SizedBox(height: 16)),
        SliverToBoxAdapter(child: ImagePanel()),
        SliverToBoxAdapter(child: SizedBox(height: 16)),
        BottomDrawer(),
      ],
    );
  }
}
