import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  final ScrollController _homeController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            CupertinoIcons.bolt_horizontal_circle_fill,
            size: 30,
          ),
          label: 'Chats',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.video_camera_back_rounded,
            size: 30,
          ),
          label: 'Calls',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.people_sharp,
            size: 30,
          ),
          label: 'People',
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.lightBlue,
      onTap: (int index) {
        switch (index) {
          case 0:
            // only scroll to top when current index is selected.
            if (_selectedIndex == index) {
              _homeController.animateTo(
                0.0,
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeOut,
              );
            }
            break;
        }
        setState(
          () {
            _selectedIndex = index;
          },
        );
      },
    );
  }
}
