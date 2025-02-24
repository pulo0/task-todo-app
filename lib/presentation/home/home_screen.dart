import 'package:flutter/material.dart';
import 'package:task_todo_app/presentation/home/widgets/image_panel.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final tempCount = List<String>.generate(100, (i) => 'Item $i');

    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: <Widget>[
        SliverToBoxAdapter(child: SizedBox(height: 16)),
        SliverToBoxAdapter(child: ImagePanel()),
        SliverToBoxAdapter(child: SizedBox(height: 16)),
        SliverToBoxAdapter(child: Divider(endIndent: 16, indent: 16)),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 36),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                const Text('Today Tasks'),
                ElevatedButton(onPressed: () {}, child: const Text('See All')),
              ],
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Card(
                elevation: 10,
                child: Text('Item ${tempCount[index]}'),
              ),
            ),
            childCount: tempCount.length,
          ),
        )
      ],
    );
  }
}
