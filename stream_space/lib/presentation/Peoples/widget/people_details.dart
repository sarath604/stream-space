import 'package:flutter/material.dart';
import 'package:stream_space/core/colors/colors.dart';
import 'package:stream_space/core/constants.dart';
import 'package:stream_space/core/string.dart';
import 'package:stream_space/domain/People/model/peoplemodel/peoplemodel.dart';
import 'package:stream_space/presentation/Peoples/widget/details_card.dart';

// ignore: must_be_immutable
class PeopleDelailsCard extends StatelessWidget {
  final String url;
  final String detailstitle;
  final String detailssubtitle;
  List<KnownFor> detailslist;
  PeopleDelailsCard(
      {super.key,
      required this.url,
      required this.detailstitle,
      required this.detailssubtitle,
      required this.detailslist});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 30),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      const CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.white,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 3, top: 3),
                        child: CircleAvatar(
                          radius: 47,
                          backgroundImage: NetworkImage(url),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 255,
                    height: 100,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            detailstitle,
                            style: const TextStyle(
                                overflow: TextOverflow.ellipsis,
                                color: kWhite,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic),
                          ),
                          Text(
                            detailssubtitle,
                            style: const TextStyle(
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
            ),
            kHeight,
            Expanded(
              child: ListView.separated(
                itemBuilder: (context, intex) {
                  final value = detailslist[intex];
                  return DetailsCard(
                    date: value.releaseDate.toString(),
                    title: value.originalTitle.toString(),
                    overview: value.overview.toString(),
                    imageurl: '$imageAppendUrl${value.backdropPath.toString()}',
                    posterimageurl:
                        '$imageAppendUrl${value.posterPath.toString()}',
                  );
                },
                separatorBuilder: (context, intex) => const SizedBox(),
                itemCount: detailslist.length,
              ),
            )
          ],
        ),
      ),
    );
  }
}
