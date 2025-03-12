import 'package:flutter/material.dart';
import 'package:task_todo_app/presentation/home/widgets/list_tile_card.dart';
import 'package:task_todo_app/styles/app_dimensions.dart';
import 'package:task_todo_app/styles/app_padding.dart';

class TaskList extends StatefulWidget {
  const TaskList({super.key});

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  List<int> tempCount = List<int>.generate(100, (i) => i);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPadding.medium,
      child: ListView.builder(
        itemBuilder: (context, index) => Dismissible(
          background: Container(color: Colors.red.shade800),
          key: ValueKey<int>(tempCount[index]),
          onDismissed: (DismissDirection direction) {
            setState(() {
              tempCount.removeAt(index);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Deleted Item ${tempCount[index] - 1}'),
                  behavior: SnackBarBehavior.floating,
                  padding: AppPadding.mediumHorizontal,
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(AppDimensions.miniBorderCurve),
                  ),
                  showCloseIcon: true,
                ),
              );
            });
          },
          child: ListTileCard(
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
