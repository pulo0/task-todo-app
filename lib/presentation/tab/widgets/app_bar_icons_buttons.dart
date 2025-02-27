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
    return InkWell(
      onTap: onButtonPress,
      borderRadius: const BorderRadius.all(Radius.circular(10)),
      splashColor: Colors.black12,
      child: Ink(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          border: Border.all(color: Colors.grey.shade300),
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: optionIcon,
      ),
    );
  }
}
