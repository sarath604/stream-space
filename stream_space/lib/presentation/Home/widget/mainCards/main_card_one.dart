import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stream_space/application/downloads/downloads_bloc.dart';
import 'package:stream_space/core/colors/colors.dart';
import 'package:stream_space/core/constants.dart';
import 'package:stream_space/core/string.dart';
import 'package:stream_space/presentation/Home/widget/listview_card.dart';
import 'package:stream_space/presentation/main_page/widgets/film_details.dart';

class HomeMainCardOne extends StatelessWidget {
  final String title;
  const HomeMainCardOne({super.key, required this.title});

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
          BlocBuilder<DownloadsBloc, DownloadsState>(
            builder: (context, state) {
              if (state.isLoading) {
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
              } else if (state.downloads!.isEmpty) {
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
              } else {
                return LimitedBox(
                  maxHeight: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    children: List.generate(10, (index) {
                      final movie = state.downloads![index];
                      return GestureDetector(
                        onTap: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return FilmDetailCard(
                              filmtitle: movie.title.toString(),
                              filmposterurl:
                                  '$imageAppendUrl${movie.posterPath}',
                              filmbackdropurl:
                                  '$imageAppendUrl${movie.backdroppath}',
                              filmdate: movie.release_date.toString(),
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
