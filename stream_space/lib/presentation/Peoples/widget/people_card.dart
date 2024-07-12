import 'package:flutter/material.dart';
import 'package:stream_space/core/colors/colors.dart';

class PeopleCard extends StatelessWidget {
  const PeopleCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Stack(
        children: [
          Stack(
            alignment: Alignment.bottomLeft,
            children: [
              Container(
                width: double.infinity,
                height: 500,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                    image: NetworkImage(
                        'https://image.tmdb.org/t/p/w500/6bBCPmc55gzP7TR9Th4WbykrYd0.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Container(
                      width: 300,
                      height: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadiusDirectional.circular(20),
                          color: const Color.fromARGB(95, 0, 0, 0)),
                      child: const Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Text(
                                'Ana de Armas',
                                style: TextStyle(
                                  overflow: TextOverflow.ellipsis,
                                  color: kWhite,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                'Acting',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.keyboard_arrow_right_rounded,
                        color: kWhite,
                        size: 55,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.all(15),
            child: Stack(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://image.tmdb.org/t/p/w500/eOh4ubpOm2Igdg0QH2ghj0mFtC.jpg'),
                  radius: 30,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 35),
                  child: Stack(
                    children: [
                      CircleAvatar(
                        radius: 32,
                        backgroundColor: kWhite,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 2, bottom: 2, top: 2),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://image.tmdb.org/t/p/w500/3vxvsmYLTf4jnr163SUlBIw51ee.jpg'),
                          radius: 30,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
