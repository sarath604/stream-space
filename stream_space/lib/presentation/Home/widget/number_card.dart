import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stream_space/application/New&Hot/newandhot_bloc.dart';
import 'package:stream_space/core/colors/colors.dart';
import 'package:stream_space/core/constants.dart';
import 'package:stream_space/core/string.dart';
import 'package:stream_space/presentation/main_page/widgets/film_details.dart';

class NumberMainCard extends StatelessWidget {
  final String title;
  const NumberMainCard({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: kWhite,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          kHeight,
          BlocBuilder<NewandhotBloc, NewandhotState>(builder: (context, state) {
            if (state.isloading) {
              return Center(
                child: Container(
                  width: 150,
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                    child: CircularProgressIndicator(
                     color: kgrey, 
                    ),
                  ),
                ),
              );
            } else if (state.iserror) {
              return const Center(
                  child: Text('Error loading Everyones watching'));
            } else if (state.everyonewatchinglist.isEmpty) {
              return const Center(child: Text('List is empty'));
            } else {
              return LimitedBox(
                maxHeight: 200,
                child: SizedBox(
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    children: List.generate(10, (index) {
                      final tv = state.everyonewatchinglist[index];
                      return GestureDetector(
                        onTap: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return FilmDetailCard(
                              filmtitle: tv.originalname.toString(),
                              filmposterurl: '$imageAppendUrl${tv.posterPath}',
                              filmbackdropurl:
                                  '$imageAppendUrl${tv.backdropPath}',
                              filmdate: tv.firstairdate.toString(),
                              filmoverview: tv.overview.toString(),
                            );
                          }));
                        },
                        child: ListViewNumberCard(
                          index: index,
                          image: '$imageAppendUrl${tv.posterPath.toString()}',
                        ),
                      );
                    }),
                  ),
                ),
              );
            }
          })
        ],
      ),
    );
  }
}

class ListViewNumberCard extends StatelessWidget {
  final String image;
  final int index;
  const ListViewNumberCard(
      {super.key, required this.index, required this.image});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            const SizedBox(
              width: 50,
            ),
            Container(
              width: 150,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: NetworkImage(image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
        Positioned(
          top: 65,
          child: BorderedText(
            strokeWidth: 4.0,
            strokeColor: kWhite,
            child: Text(
              '${index + 1}',
              style: const TextStyle(
                fontSize: 140,
                decoration: TextDecoration.none,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
