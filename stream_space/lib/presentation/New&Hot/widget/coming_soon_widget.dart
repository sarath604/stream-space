import 'package:flutter/material.dart';
import 'package:stream_space/core/colors/colors.dart';
import 'package:stream_space/core/constants.dart';
import 'package:stream_space/presentation/Peoples/widget/custom_button.dart';

class ComingSoonWidget extends StatelessWidget {
  final String id;
  final String month;
  final String day;
  final String name;
  final String overview;
  final String imageurl;
  const ComingSoonWidget(
      {super.key,
      required this.id,
      required this.month,
      required this.day,
      required this.name,
      required this.overview,
      required this.imageurl});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Row(
        children: [
          SizedBox(
            width: 50,
            height: 450,
            child: Column(
              children: [
                Text(
                  month,
                  style: const TextStyle(color: kgrey, fontSize: 20),
                ),
                Text(
                  day,
                  style: const TextStyle(
                    color: kWhite,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            width: size.width - 50,
            height: 450,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      width: size.width - 50,
                      height: 200,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(imageurl),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 10,
                      right: 10,
                      child: CircleAvatar(
                        radius: 20,
                        backgroundColor: const Color.fromARGB(135, 52, 51, 51),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.volume_off,
                            size: 25,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                kHeight,
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        // movie name
                        name,
                        maxLines: 1,
                        overflow: TextOverflow.clip,

                        style: const TextStyle(
                          color: kWhite,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                    const CustomButtonWidget(
                      icon: Icons.notifications_none,
                      titie: 'Remind Me',
                      fontSize: 12,
                      size: 25,
                    ),
                    kwidth,
                    const CustomButtonWidget(
                      icon: Icons.info_outline,
                      titie: 'info',
                      fontSize: 12,
                      size: 25,
                    ),
                    kwidth,
                  ],
                ),
                kHeight,
                Text(
                  'Coming on $month $day',
                  style: const TextStyle(color: kWhite, fontSize: 16),
                ),
                const Row(
                  children: [
                    Image(
                      width: 50,
                      height: 50,
                      image: AssetImage(
                          'C:/Users/pro/Desktop/StreamSpace/stream_space/assets/images/Untitled_design-removebg-preview.png'),
                    ),
                    Text(
                      'FILM',
                      style: TextStyle(
                          color: kWhite, fontSize: 10, letterSpacing: 3),
                    )
                  ],
                ),
                Text(
                  name,
                  style: const TextStyle(
                      color: kWhite, fontSize: 18, fontWeight: FontWeight.bold),
                ),
                kHeight,
                Expanded(
                  child: Text(
                    overview,
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(color: kgrey, fontSize: 12),
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
