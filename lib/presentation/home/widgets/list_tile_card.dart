import 'package:flutter/material.dart';

class ListTileCard extends StatelessWidget {
  final List<String> items;
  final int currentIndex;

  const ListTileCard(Key? key,
      {required this.items, required this.currentIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                  Radius.circular(30),
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
                    const SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Item ${items[currentIndex]}'),
                        Text('Item ${items[currentIndex]} description', style: const TextStyle(fontSize: 10),),
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
