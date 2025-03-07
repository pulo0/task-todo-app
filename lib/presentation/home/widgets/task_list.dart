import 'package:flutter/material.dart';
import 'package:task_todo_app/presentation/home/widgets/list_tile_card.dart';
import 'package:task_todo_app/styles/app_padding.dart';

class TaskList extends StatefulWidget {
  const TaskList({super.key});

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    final tempCount = List<String>.generate(100, (i) => 'Item $i');
    return Padding(
      padding: AppPadding.medium,
      child: ListView.builder(
        itemBuilder: (context, index) => Dismissible(
          background: Container(color: Colors.red.shade800),
          key: ValueKey<String>(tempCount[index]),
          onDismissed: (DismissDirection direction) {
            setState(() => tempCount.removeAt(index));
          },
          child: ListTileCard(
            widget.key,
            items: tempCount,
            currentIndex: index,
          ),
        ),
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: tempCount.length,
      ),
    );
  }
}
