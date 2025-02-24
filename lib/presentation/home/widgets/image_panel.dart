import 'package:task_todo_app/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class ImagePanel extends StatelessWidget {
  const ImagePanel({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 325,
          height: 200,
          child: ShaderMask(
            shaderCallback: (rect) {
              return const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.black, Colors.transparent],
              ).createShader(
                Rect.fromLTRB(0, 0, rect.width, rect.height + 25),
              );
            },
            blendMode: BlendMode.dstIn,
            child: Card(
              color: Colors.transparent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Image.asset(
                Assets.images.cardSunrise.keyName,
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
      ],
    );
  }
}