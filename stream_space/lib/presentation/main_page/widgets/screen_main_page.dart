import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:stream_space/core/constants.dart';
import 'package:stream_space/presentation/Downloads/screen_downloads.dart';
import 'package:stream_space/presentation/Fast_Laughs/screen_fast_laughs.dart';
import 'package:stream_space/presentation/Home/screen_home.dart';
import 'package:stream_space/presentation/New&Hot/screen_New&Hot.dart';
import 'package:stream_space/presentation/Search/screen_search.dart';
import 'package:stream_space/presentation/main_page/widgets/bottom_nav.dart';

class ScreenMainPage extends StatelessWidget {
   const ScreenMainPage({super.key});

  final _page = const [
    ScreenHome(),
    ScreenNewAndHot(),
    ScreenFastLaughs(),
    ScreenSearch(),
    ScreenDownloads(),
  ];
  @override
  Widget build(BuildContext context) {
    return 
       ValueListenableBuilder(
        valueListenable: scrollNotifier,
        builder: (context, index, _) {
          return NotificationListener<UserScrollNotification>(
            onNotification: (notification) {
              final ScrollDirection direction = notification.direction;

              if (direction == ScrollDirection.reverse) {
                scrollNotifier.value = false;
              } else if (direction == ScrollDirection.forward) {
                scrollNotifier.value = true;
              }

              return true;
            },
      child: Scaffold(
        body: SafeArea(
          child: ValueListenableBuilder(
              valueListenable: indexchangeNotifier,
              builder: (context, indext, _) {
                return _page[indext];
              }),
        ),
        bottomNavigationBar:scrollNotifier.value == true? const BottomNavigationWidget():kHeight,
      )
    );
       }
);}
}