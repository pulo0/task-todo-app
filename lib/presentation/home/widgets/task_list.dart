import 'package:flutter/material.dart';
import 'package:task_todo_app/presentation/home/widgets/list_tile_card.dart';
import 'package:task_todo_app/styles/app_padding.dart';

class TaskList extends StatelessWidget {
  const TaskList({super.key});

  @override
  Widget build(BuildContext context) {
    final tempCount = List<String>.generate(100, (i) => 'Item $i');
    return Padding(
      padding: AppPadding.medium,
      child: ListView.builder(
        itemBuilder: (context, index) => ListTileCard(
          key,
          items: tempCount,
          currentIndex: index,
        ),
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: tempCount.length,
      ),
    );
  }
}
