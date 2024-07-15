import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stream_space/application/New&Hot/newandhot_bloc.dart';
import 'package:stream_space/core/colors/colors.dart';
import 'package:stream_space/core/constants.dart';
import 'package:stream_space/core/string.dart';
import 'package:stream_space/presentation/Home/widget/listview_card.dart';
import 'package:stream_space/presentation/main_page/widgets/film_details.dart';

class HomeMainCardTwo extends StatelessWidget {
  final String title;
  const HomeMainCardTwo({super.key, required this.title});

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
          BlocBuilder<NewandhotBloc, NewandhotState>(
            builder: (context, state) {
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
              } else if (state.comingsoonlist.isEmpty) {
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
              }else {
                return LimitedBox(
                  maxHeight: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    children: List.generate(state.comingsoonlist.length, (index) {
                      final movie = state.comingsoonlist[index];
                      return GestureDetector(
                        onTap: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return FilmDetailCard(
                              filmtitle: movie.originalTitle.toString(),
                              filmposterurl:
                                  '$imageAppendUrl${movie.posterPath}',
                              filmbackdropurl:
                                  '$imageAppendUrl${movie.backdropPath}',
                              filmdate: movie.releaseDate.toString(),
                              filmoverview: movie.overview.toString(),
                            );
                          }));
                        },
                        child: ListViewCard(
                          image: '$imageAppendUrl${movie.posterPath}',
                        ),
                      );
                    }),
                  ),
                );
              }
            },
          )
        ],
      ),
    );
  }
}
