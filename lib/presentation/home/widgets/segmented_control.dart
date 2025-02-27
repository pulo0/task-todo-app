import 'package:flutter/material.dart';

class SegmentedControl extends StatefulWidget {
  const SegmentedControl({super.key});

  @override
  State<StatefulWidget> createState() => _SegmentedControlState();
}

class _SegmentedControlState extends State<SegmentedControl> {
  int _selectedIndex = 0;
  final List<String> _optionNames = [
    'Today\'s Tasks',
    'Tomorrow Tasks',
    'Other Tasks'
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: ToggleButtons(
          borderColor: Colors.deepPurple,
          selectedBorderColor: Colors.deepPurpleAccent,
          borderWidth: 2,
          selectedColor: Colors.white,
          color: Colors.deepPurple,
          fillColor: Colors.deepPurple.shade100,
          borderRadius: BorderRadius.circular(20),
          isSelected: List.generate(
            _optionNames.length,
            (index) => index == _selectedIndex,
          ),
          onPressed: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          children: _optionNames
              .map((String label) => Padding(
                    padding: const EdgeInsets.all(5),
                    child: Text(label),
                  ))
              .toList(),
        ),
      ),
    );
  }
}
