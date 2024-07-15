import 'package:flutter/material.dart';
import 'package:stream_space/core/colors/colors.dart';
import 'package:stream_space/presentation/main_page/widgets/film_details.dart';

class TitleItemTile extends StatelessWidget {
  final String title;
  final String imageUrl;
  final String filmtitle;
  final String filmbackdropurl;
  final String filmposterurl;
   final String filmoverview;
  final String filmdate;
  const TitleItemTile({
    super.key,
    required this.title,
    required this.imageUrl,
    required this.filmtitle,
    required this.filmposterurl,
    required this.filmbackdropurl,
      required this.filmdate,
    required this.filmoverview,
  });
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomLeft,
      children: [
        Container(
          width: double.infinity,
          height: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: NetworkImage(imageUrl),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(17),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  title,
                  style: const TextStyle(
                    color: kWhite,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Spacer(),
              IconButton(
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return FilmDetailCard(
                        filmtitle: filmtitle,
                        filmbackdropurl: filmbackdropurl,
                        filmposterurl: filmposterurl,
                        filmdate:filmdate ,
                        filmoverview:filmoverview ,
                      );
                    }));
                  },
                  icon: const Icon(
                    Icons.keyboard_arrow_right_rounded,
                    color: kWhite,
                    size: 55,
                  ))
            ],
          ),
        ),
      ],
    );
  }
}
