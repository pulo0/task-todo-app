import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_todo_app/presentation/tab/cubit/content_switcher_state.dart';

class ContentSwitcherCubit extends Cubit<ContentSwitcherState> {
  ContentSwitcherCubit()
      : super(
          ContentSwitcherState(
            pageName: 'Home',
            index: 0,
            activeContent: const Center(
              child: Text('Home'),
            ),
          ),
        );

  void setPage(int index) {
    final List<ContentSwitcherState> contentList = [
      ContentSwitcherState(
          pageName: 'Home',
          index: index,
          activeContent: const Column(
            children: [
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 300,
                    height: 200,
                    child: Card(
                      color: Colors.greenAccent,
                      child: Center(
                        child: Text('Home page'),
                      ),
                    ),
                  )
                ],
              ),
            ],
          )),
      ContentSwitcherState(
          pageName: 'Search',
          index: index,
          activeContent: const Center(child: Text('Search'))),
      ContentSwitcherState(
          pageName: 'Calendar',
          index: index,
          activeContent: const Center(child: Text('Calendar'))),
      ContentSwitcherState(
          pageName: 'Settings',
          index: index,
          activeContent: const Center(child: Text('Settings'))),
    ];
    emit(contentList[index]);
  }
}
