import 'package:flutter/material.dart';

class ContentSwitcherState {
  final String pageName;
  final int index;
  final Widget activeContent;

  ContentSwitcherState({
    required this.pageName,
    required this.index,
    required this.activeContent,
  });
}
