import 'package:flutter/material.dart';
import 'package:task_todo_app/styles/app_dimensions.dart';

class AppBarIconsButtons extends StatelessWidget {
  final Icon optionIcon;
  final void Function()? onButtonPress;

  const AppBarIconsButtons({
    required this.optionIcon,
    this.onButtonPress,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onButtonPress,
      borderRadius: const BorderRadius.all(
        Radius.circular(AppDimensions.miniBorderCurve),
      ),
      child: Ink(
        height: 50,
        width: 50,
        decoration: const BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.all(
            Radius.circular(AppDimensions.miniBorderCurve),
          ),
        ),
        child: optionIcon,
      ),
    );
  }
}
