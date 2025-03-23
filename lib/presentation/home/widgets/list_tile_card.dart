import 'package:flutter/material.dart';
import 'package:task_todo_app/styles/app_dimensions.dart';
import 'package:task_todo_app/styles/app_padding.dart';
import 'package:task_todo_app/styles/app_themes.dart';

class ListTileCard extends StatefulWidget {
  final List<int> items;
  final int currentIndex;

  const ListTileCard({
    required this.items,
    required this.currentIndex,
    super.key,
  });

  @override
  State<ListTileCard> createState() => _ListTileCardState();
}

class _ListTileCardState extends State<ListTileCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPadding.smallVertical,
      child: Row(
        children: <Widget>[
          CircleAvatar(
            child: IconButton(
              onPressed: () {
                setState(() => widget.items.removeAt(widget.currentIndex));
              },
              icon: const Icon(Icons.check_circle_outline),
            ),
          ),
          const SizedBox(width: AppDimensions.m),
          Expanded(
            child: Card(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(AppDimensions.smallBorderCurve),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(AppDimensions.m),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    const CircleAvatar(
                      child: Icon(Icons.laptop_chromebook_outlined),
                    ),
                    const SizedBox(width: AppDimensions.s),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                            width: 125,
                            child: Text(
                              'Item ${widget.items[widget.currentIndex]}',
                              overflow: TextOverflow.fade,
                              softWrap: false,
                              maxLines: 1,
                            )),
                        SizedBox(
                          width: 100,
                          child: Text(
                            'Item ${widget.items[widget.currentIndex]} description',
                            style: universalTextTheme.bodySmall,
                            overflow: TextOverflow.fade,
                            maxLines: 1,
                            softWrap: false,
                          ),
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
