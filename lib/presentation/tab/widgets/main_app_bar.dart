import 'package:flutter/material.dart';
import 'package:task_todo_app/presentation/tab/widgets/app_bar_icons_buttons.dart';
import 'package:task_todo_app/styles/app_padding.dart';
import 'package:task_todo_app/styles/app_text_styles.dart';

class MainAppBar extends StatelessWidget {
  final String pageName;

  const MainAppBar(this.pageName, {super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      stretch: true,
      toolbarHeight: 100,
      flexibleSpace: FlexibleSpaceBar(
        background: Padding(
          padding: AppPadding.small,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              AppBarIconsButtons(
                optionIcon: const Icon(Icons.menu_outlined),
                onButtonPress: () {},
              ),
              Text(pageName, style: AppTextStyles.heading),
              AppBarIconsButtons(
                optionIcon: const Icon(Icons.notifications),
                onButtonPress: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
