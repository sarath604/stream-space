import 'package:flutter/material.dart';
import 'package:stream_space/core/colors/colors.dart';
import 'package:stream_space/presentation/Peoples/widget/details_card.dart';

class FilmDetailCard extends StatelessWidget {
  final String filmtitle;
  final String filmbackdropurl;
  final String filmposterurl;
  final String filmoverview;
  final String filmdate;
  const FilmDetailCard({
    super.key,
    required this.filmtitle,
    required this.filmposterurl,
    required this.filmbackdropurl,
    required this.filmdate,
    required this.filmoverview,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        title: const Text(
          'FILM DETAILS',
          style: TextStyle(color: kWhite),
        ),
      ),
      body: SafeArea(
        child: ListView(
          children:  [
            DetailsCard(
              date: filmdate,
              title: filmtitle,
              overview:
                 filmoverview,
              imageurl:
                  filmbackdropurl,
              posterimageurl:
                filmposterurl,
            ),
          ],
        ),
      ),
    );
  }
}
