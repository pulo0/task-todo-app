import 'package:flutter/material.dart';
import 'package:task_todo_app/styles/app_padding.dart';
import 'package:task_todo_app/styles/app_text_styles.dart';

class BottomDrawerSetting extends StatelessWidget {
  const BottomDrawerSetting({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPadding.small,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          const Text('Today\'s tasks', style: AppTextStyles.heading),
          TextButton(
            onPressed: () {},
            child: const Text('See All'),
          ),
        ],
      ),
    );
  }
}
