import 'package:flutter/material.dart';
import 'package:stream_space/core/colors/colors.dart';
import 'package:stream_space/core/constants.dart';
import 'package:stream_space/presentation/Peoples/widget/details_card.dart';

class PeopleDelailsCard extends StatelessWidget {
  const PeopleDelailsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 30, top: 30),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.white,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 3, top: 3),
                        child: CircleAvatar(
                          radius: 47,
                          backgroundImage: NetworkImage(
                              'https://image.tmdb.org/t/p/w500/8ObNklHDi2hjdz0ayzJFB9jtqzm.jpg'),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 255,
                    height: 100,
                    child: Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Ana de Armas ',
                            style: TextStyle(
                                overflow: TextOverflow.ellipsis,
                                color: kWhite,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic),
                          ),
                          Text(
                            'Acting',
                            style: TextStyle(
                              color: kgrey,
                              fontSize: 20,
                              overflow: TextOverflow.ellipsis,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Known For',
              style: TextStyle(
                overflow: TextOverflow.ellipsis,
                color: kWhite,
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),kHeight,
            Expanded(
              child: ListView.separated(
                itemBuilder: (context, intex) {
                  return const DetailsCard(
                    date: '2014-10-15',
                    title: 'My Fault',
                    overview:
                        'When a 17-year-old reports a sexual assault at her high school, an investigation upends her life and tests her relationships',
                    imageurl:
                        'https://image.tmdb.org/t/p/w500/qpBZE42SBLMJKNSxgW5wGc8Ip9e.jpg',
                    posterimageurl:
                        'https://image.tmdb.org/t/p/w500/s678JxMMMDyj7TRSsK6hR2FTF7A.jpg',
                  );
                },
                separatorBuilder: (context, intex) => const SizedBox(),
                itemCount: 4,
              ),
            )
          ],
        ),
      ),
    );
  }
}
