import 'package:flutter/material.dart';
import 'package:task_todo_app/styles/app_dimensions.dart';
import 'package:task_todo_app/presentation/home/widgets/task_list.dart';
import 'package:task_todo_app/presentation/home/widgets/bottom_drawer_setting.dart';

class BottomDrawer extends StatelessWidget {
  const BottomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Stack(
        children: <Widget>[
          const BottomDrawerSetting(3),
          Container(
            constraints: const BoxConstraints(
              maxHeight: double.infinity,
            ),
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(AppDimensions.mediumBorderCurve),
                ),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      color: Colors.black45.withOpacity(.1),
                      blurRadius: 15,
                      offset: const Offset(0, -1),
                      blurStyle: BlurStyle.outer),
                ]),
            child: const TaskList(),
          ),
        ],
      ),
    );
  }
}
