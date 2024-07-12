import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stream_space/core/colors/colors.dart';

ValueNotifier<int> indexchangeNotifier = ValueNotifier(0);

class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: indexchangeNotifier,
      builder: (context, newvalue, _) {
        return BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: backgroundColor,
          elevation: 0,
          currentIndex: newvalue,
          onTap: (index) {
            indexchangeNotifier.value = index;
          },
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          selectedIconTheme: const IconThemeData(color: Colors.white),
          unselectedIconTheme: const IconThemeData(color: Colors.grey),
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.collections,
                ),
                label: 'New & Hot'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.people,
                ),
                label: 'Peoples'),
            BottomNavigationBarItem(
                icon: Icon(
                  CupertinoIcons.search,
                ),
                label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.download,
                ),
                label: 'Downloads'),
          ],
        );
      },
    );
  }
}
