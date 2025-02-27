import 'package:flutter/material.dart';
import 'package:task_todo_app/presentation/home/widgets/list_tile_card.dart';
import 'package:task_todo_app/presentation/home/widgets/segmented_control.dart';

class BottomDrawer extends StatelessWidget {
  const BottomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final tempCount = List<String>.generate(100, (i) => 'Item $i');
    return SliverToBoxAdapter(
      child: Stack(
        children: <Widget>[
          const SegmentedControl(),
          Container(
            constraints: const BoxConstraints(
              maxHeight: double.infinity,
            ),
            decoration: BoxDecoration(
                color: Colors.black38,
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(40),
                ),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      color: Colors.white10.withValues(alpha: .1),
                      blurRadius: 15,
                      offset: const Offset(0, -1),
                      blurStyle: BlurStyle.outer),
                ]),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 64, horizontal: 35),
              child: ListView.builder(
                itemBuilder: (context, index) => ListTileCard(
                  key,
                  items: tempCount,
                  currentIndex: index,
                ),
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: tempCount.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
