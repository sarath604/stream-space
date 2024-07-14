import 'package:flutter/material.dart';
import 'package:stream_space/core/colors/colors.dart';
import 'package:stream_space/core/constants.dart';
import 'package:stream_space/presentation/Peoples/widget/custom_button.dart';

class DetailsCard extends StatelessWidget {
  final String date;
  final String title;
  final String overview;
  final String imageurl;
  final String posterimageurl;
  const DetailsCard({
    super.key,
    required this.date,
    required this.title,
    required this.overview,
    required this.imageurl,
    required this.posterimageurl,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                width: size.width,
                height: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: NetworkImage(imageurl),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Stack(children: [
                Container(
                  width: size.width,
                  height: 250,
                  color: const Color.fromARGB(46, 0, 0, 0),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Container(
                    width: 150,
                    height: 220,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: NetworkImage(posterimageurl),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ]),
            ],
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
                      fontSize: 35,
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
                'FILM',
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
          const Text(
            'Overview',
            style: TextStyle(
                color: kWhite, fontSize: 25, fontWeight: FontWeight.bold),
          ),
          kHeight,
          Text(
            overview,
            style: const TextStyle(color: kgrey, fontSize: 17),
          ),
        ],
      ),
    );
  }
}
