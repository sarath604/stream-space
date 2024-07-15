import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stream_space/application/New&Hot/newandhot_bloc.dart';
import 'package:stream_space/core/colors/colors.dart';
import 'package:stream_space/core/constants.dart';
import 'package:stream_space/presentation/Home/widget/background_card.dart';
import 'package:stream_space/presentation/Home/widget/mainCards/main_card_one.dart';
import 'package:stream_space/presentation/Home/widget/mainCards/main_card_two.dart';
import 'package:stream_space/presentation/Home/widget/number_card.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<NewandhotBloc>(context)
          .add(const NewandhotEvent.comingsoon());
    });
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<NewandhotBloc>(context)
          .add(const NewandhotEvent.everyonewatching());
    });

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
                    HomeMainCardTwo(title: 'Upcoming Movies'),
                    NumberMainCard(title: 'Top 10 TV Shows'),
                    HomeMainCardOne(title: 'Trending Now'),
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
                                const Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 10),
                                  child: CircleAvatar(
                                    radius: 24,
                                    backgroundColor: backgroundColor,
                                    child: Image(
                                      width: 80,
                                      height: 80,
                                      image: AssetImage(
                                          'C:/Users/pro/Desktop/StreamSpace/stream_space/assets/images/Untitled_design-removebg-preview.png'),
                                    ),
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
