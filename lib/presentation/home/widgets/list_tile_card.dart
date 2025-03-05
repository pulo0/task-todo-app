import 'package:flutter/material.dart';
import 'package:task_todo_app/styles/app_dimensions.dart';
import 'package:task_todo_app/styles/app_padding.dart';

class ListTileCard extends StatelessWidget {
  final List<String> items;
  final int currentIndex;

  const ListTileCard(Key? key,
      {required this.items, required this.currentIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPadding.smallVertical,
      child: Row(
        children: <Widget>[
          CircleAvatar(
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.check_circle_outline),
            ),
          ),
          const SizedBox(width: AppDimensions.m),
          Expanded(
            child: Card(
              elevation: 1,
              shadowColor: Colors.white,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(AppDimensions.smallBorderCurve),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    const CircleAvatar(
                      backgroundColor: Colors.blue,
                      child: Icon(Icons.laptop_chromebook_outlined),
                    ),
                    const SizedBox(width: AppDimensions.s),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Item ${items[currentIndex]}'),
                        Text(
                          'Item ${items[currentIndex]} description',
                          style: const TextStyle(fontSize: 10),
                        ),
                      ],
                    ),
                    const Spacer(),
                    const Text('due 05.21'),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
