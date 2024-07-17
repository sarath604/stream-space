import 'package:flutter/material.dart';
import 'package:stream_space/core/colors/colors.dart';
import 'package:stream_space/core/constants.dart';
import 'package:stream_space/presentation/Peoples/widget/custom_button.dart';

class EveryoneWatchingWidget extends StatelessWidget {
  final String date;
  final String title;
  final String overview;
  final String imageurl;
  const EveryoneWatchingWidget(
      {super.key,
      required this.date,
      required this.title,
      required this.overview,
      required this.imageurl});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: size.width,
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(imageurl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          kHeight,
          Row(
            children: [
              Expanded(
                child: Text(
                  title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                      color: kWhite,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),
                ),
              ),
              const CustomButtonWidget(
                icon: Icons.share,
                titie: 'Share',
                fontSize: 12,
                size: 25,
              ),
              const CustomButtonWidget(
                icon: Icons.add,
                titie: 'My List',
                fontSize: 12,
                size: 35,
              ),
              const CustomButtonWidget(
                icon: Icons.play_arrow,
                titie: 'Play',
                fontSize: 12,
                size: 35,
              ),
            ],
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
                'SERIES',
                style: TextStyle(color: kWhite, fontSize: 10, letterSpacing: 3),
              )
            ],
          ),
          kHeight,
          Text(
            'Released in $date',
            style: const TextStyle(color: kWhite, fontSize: 15),
          ),
          kHeight,
          Text(
            title,
            style: const TextStyle(
                color: kWhite, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          kHeight,
          Text(
            overview,
            style: const TextStyle(color: kgrey, fontSize: 12),
          ),
        ],
      ),
    );
  }
}
