import 'package:flutter/material.dart';
import 'package:stream_space/core/colors/colors.dart';
import 'package:stream_space/core/constants.dart';
import 'package:stream_space/presentation/New&Hot/widget/coming_soon_widget.dart';
import 'package:stream_space/presentation/New&Hot/widget/everyone_watching_widget.dart';

class ScreenNewAndHot extends StatelessWidget {
  const ScreenNewAndHot({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(95),
          child: AppBar(
            backgroundColor: backgroundColor,
            title: const Text(
              'New & Hot',
              style: TextStyle(
                color: kWhite,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.cast),
                color: kWhite,
                iconSize: 30,
              ),
              kwidth,
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.person,
                  color: kWhite,
                  size: 30,
                ),
              ),
              kwidth,
            ],
            bottom: TabBar(
              indicator: BoxDecoration(
                color: kWhite,
                borderRadius: BorderRadius.circular(30),
              ),
              labelColor: Colors.black,
              labelStyle:
                  const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              isScrollable: true,
              unselectedLabelColor: kWhite,
              tabs: const [
                Tab(
                  child: Text('🍿 Coming Soon'),
                ),
                Tab(
                  child: Text("👀 Everyone's Watching"),
                )
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [
            _buildcomingSoon(),
            _buildEveryoneWatching(),
          ],
        ),
      ),
    );
  }

  Widget _buildcomingSoon() {
    return ListView.builder(
        itemCount: 10,
        shrinkWrap: true,
        itemBuilder: (context, intex) => const ComingSoonWidget());
  }

  Widget _buildEveryoneWatching() {
    return ListView.builder(
        itemCount: 10,
        shrinkWrap: true,
        itemBuilder: (context, intex) => const EveryoneWatchingWidget());
}
}