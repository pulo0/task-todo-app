import 'dart:ui';

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
          width: 360,
          height: 160,
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
            child: Stack(
              alignment: Alignment.center,
              fit: StackFit.expand,
              children: <Widget>[
                Card(
                  color: Colors.transparent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: ImageFiltered(
                    imageFilter: ImageFilter.blur(
                      sigmaX: 1.0,
                      sigmaY: 1.0,
                      tileMode: TileMode.decal,
                    ),
                    child: Image.asset(
                      Assets.images.cardSunrise.keyName,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
