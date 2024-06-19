import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stream_space/core/constants.dart';
import 'package:stream_space/presentation/Fast_Laughs/widget/custom_button.dart';

class VideoListItem extends StatelessWidget {
  final int index;
  const VideoListItem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.accents[index % Colors.accents.length],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: CircleAvatar(
                  radius: 25,
                  backgroundColor: const Color.fromARGB(152, 52, 51, 51),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.volume_off,
                      size: 30,
                    ),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                        'https://image.tmdb.org/t/p/w220_and_h330_face/8Gxv8gSFCU0XGDykEGv7zR1n2ua.jpg'),
                  ),
                  kHeight,
                  CustomButtonWidget(icon: Icons.emoji_emotions, titie: 'LOL'),
                  kHeight,
                  CustomButtonWidget(icon: Icons.add, titie: 'My List'),
                  kHeight,
                  CustomButtonWidget(icon: Icons.share, titie: 'Share'),
                  kHeight,
                  CustomButtonWidget(
                      icon: CupertinoIcons.play_fill, titie: 'play'),
                  kHeight
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

