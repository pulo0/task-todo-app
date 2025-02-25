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
        const SliverToBoxAdapter(child: SizedBox(height: 16)),
        const SliverToBoxAdapter(child: ImagePanel()),
        const SliverToBoxAdapter(child: SizedBox(height: 16)),
        SliverToBoxAdapter(
          child: Stack(
            children: <Widget>[
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  constraints: const BoxConstraints(
                    maxHeight: double.infinity,
                  ),
                  decoration: BoxDecoration(
                      color: Colors.black38,
                      borderRadius: const BorderRadius.vertical(
                        top: Radius.circular(70),
                      ),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                            color: Colors.white10.withValues(alpha: .1),
                            blurRadius: 15,
                            offset: const Offset(0, -1),
                            blurStyle: BlurStyle.outer),
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.all(35),
                    child: ListView.builder(
                      itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          children: <Widget>[
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.add_circle),
                            ),
                            Expanded(
                              child: Card(
                                elevation: 1,
                                shadowColor: Colors.white,
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.elliptical(20, 30),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      const CircleAvatar(
                                        child: Icon(
                                            Icons.laptop_chromebook_outlined),
                                      ),
                                      Text('Item ${tempCount[index]}'),
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: tempCount.length,
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
