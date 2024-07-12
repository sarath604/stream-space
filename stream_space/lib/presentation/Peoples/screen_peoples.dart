import 'package:flutter/material.dart';
import 'package:stream_space/core/colors/colors.dart';
import 'package:stream_space/core/constants.dart';
import 'package:stream_space/presentation/Peoples/widget/people_card.dart';

class ScreenPeoples extends StatelessWidget {
  const ScreenPeoples({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          const Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Text(
                  'Popular People',
                  style: TextStyle(
                    color: kWhite,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                Stack(children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://image.tmdb.org/t/p/w500/nt4fpE3cerdDWyZFiRkYRDcOYh4.jpg'),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://image.tmdb.org/t/p/w500/lX7W1j9kg4jV6XNn5XEE3rKsd3x.jpg'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 35),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://image.tmdb.org/t/p/w500/8ObNklHDi2hjdz0ayzJFB9jtqzm.jpg'),
                    ),
                  ),
                ]),
              ],
            ),
          ),
          Expanded(
            child: ListView.separated(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemBuilder: ((context, index) {
                return const PeopleCard();
              }),
              separatorBuilder: ((context, index) => const SizedBox()),
              itemCount: 10,
            ),
          ),
        ]),
      ),
    );
  }
}
