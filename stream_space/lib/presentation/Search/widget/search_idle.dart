import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stream_space/application/search/bloc/search_bloc.dart';
import 'package:stream_space/core/colors/colors.dart';
import 'package:stream_space/core/constants.dart';
import 'package:stream_space/core/string.dart';
import 'package:stream_space/presentation/Search/widget/title.dart';
import 'package:stream_space/presentation/Search/widget/title_item_tile.dart';

class SearchIdleWidget extends StatelessWidget {
  const SearchIdleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTextTitile(title: 'Top Searches'),
        kHeight,
        Expanded(
          child: BlocBuilder<SearchBloc, SearchState>(
            builder: (context, state) {
              if (state.isLoading) {
                return const Center(
                  child: CircularProgressIndicator(
                    color: kgrey,
                  ),
                );
              } else if (state.isError) {
                return const Center(
                  child: Text('Error network issue',style: TextStyle(color: kWhite)),
                );
              } else if (state.idleList.isEmpty) {
                return const Center(
                  child: Text('List is empty',style: TextStyle(color: kWhite)),
                );
              }
              return ListView.separated(
                shrinkWrap: true,
                itemBuilder: ((context, index) {
                  final movie = state.idleList[index];
                  return TitleItemTile(
                    title: movie.title ?? 'No title provided',
                    imageUrl: '$imageAppendUrl${movie.backdroppath}',
                    filmtitle: movie.title ?? 'No title provided',
                    filmbackdropurl:'$imageAppendUrl${movie.backdroppath}' ,
                    filmposterurl: '$imageAppendUrl${movie.posterPath}',
                    filmdate: movie.release_date??'No date provided',
                    filmoverview: movie.overview??'No overview provided',
                  );
                }),
                separatorBuilder: ((context, index) => kHeight),
                itemCount: state.idleList.length,
              );
            },
          ),
        )
      ],
    );
  }
}
