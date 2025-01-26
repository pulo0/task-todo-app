import 'package:flutter/material.dart';

class AppBarIconsButtons extends StatelessWidget {
  final Icon optionIcon;
  final void Function()? onButtonPress;
  final double? paddingOptionToLeft;
  final double? paddingOptionToRight;

  const AppBarIconsButtons({
    required this.optionIcon,
    this.onButtonPress,
    this.paddingOptionToLeft,
    this.paddingOptionToRight,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: paddingOptionToLeft != null
            ? EdgeInsets.only(left: paddingOptionToLeft!)
            : EdgeInsets.only(
                right: paddingOptionToRight!,
              ),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
            shape: BoxShape.rectangle,
            border: Border.all(color: Colors.grey.shade300),
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: IconButton(
            icon: optionIcon,
            onPressed: onButtonPress,
          ),
        ));
  }
}
