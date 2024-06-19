import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:stream_space/core/colors/colors.dart';
import 'package:stream_space/core/constants.dart';
import 'package:stream_space/presentation/Home/widget/background_card.dart';
import 'package:stream_space/presentation/Home/widget/main_card.dart';
import 'package:stream_space/presentation/Home/widget/number_card.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
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
            child: Stack(
              children: [
                ListView(
                  children: const [
                    BackgroundCard(),
                    HomeMainCard(title: 'Released in the past year'),
                    HomeMainCard(title: 'Trending Now'),
                    NumberMainCard(title: 'Top 10 TV Shows in India Today'),
                    HomeMainCard(title: 'Tense Dramas'),
                    HomeMainCard(title: 'South Indian Cinema'),
                  ],
                ),
                scrollNotifier.value == true
                    ? AnimatedContainer(
                        duration: const Duration(milliseconds: 1000),
                        width: double.infinity,
                        height: 100,
                        color: const Color.fromARGB(50, 0, 0, 0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                const CircleAvatar(
                                  radius: 24,
                                  backgroundColor: backgroundColor,
                                  child: Image(
                                    width: 80,
                                    height: 80,
                                    image: AssetImage(
                                        'C:/Users/pro/Desktop/StreamSpace/stream_space/assets/images/Untitled_design-removebg-preview.png'),
                                  ),
                                ),
                                const Spacer(),
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
                                kwidth
                              ],
                            ),
                            kHeight,
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  'TV Shows',
                                  style: TextStyle(color: kWhite, fontSize: 16),
                                ),
                                Text(
                                  'Movies',
                                  style: TextStyle(color: kWhite, fontSize: 16),
                                ),
                                Text(
                                  'Categories',
                                  style: TextStyle(color: kWhite, fontSize: 16),
                                )
                              ],
                            ),
                          ],
                        ),
                      )
                    : kHeight
              ],
            ),
          );
        },
      ),
    );
  }
}
