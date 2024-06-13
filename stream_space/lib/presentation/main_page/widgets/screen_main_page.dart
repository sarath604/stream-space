import 'package:flutter/material.dart';
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
   ScreenDownloads()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ValueListenableBuilder(
            valueListenable: indexchangeNotifier,
            builder: (context, indext, _) {
              return _page[indext];
            }),
      ),
      bottomNavigationBar: const BottomNavigationWidget(),
    );
  }
}
