import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stream_space/application/search/bloc/search_bloc.dart';
import 'package:stream_space/core/colors/colors.dart';
import 'package:stream_space/core/constants.dart';
import 'package:stream_space/core/debounce.dart';
import 'package:stream_space/presentation/Search/widget/search_result.dart';
import 'package:stream_space/presentation/Search/widget/search_idle.dart';

final Debounce _debounce = Debounce(const Duration(milliseconds: 500));

class ScreenSearch extends StatelessWidget {
  const ScreenSearch({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<SearchBloc>(context).add(const Initialize());
    });
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CupertinoSearchTextField(
                backgroundColor: const Color.fromARGB(255, 45, 45, 45),
                prefixIcon: const Icon(
                  CupertinoIcons.search,
                  color: kgrey,
                ),
                suffixIcon: const Icon(
                  CupertinoIcons.xmark_circle_fill,
                  color: kgrey,
                ),
                style: const TextStyle(color: kWhite),
                onChanged: (value) {
                  if (value.isEmpty) {
                    return;
                  }
                  _debounce(() {
                    BlocProvider.of<SearchBloc>(context)
                        .add(SearchMovie(movieQuery: value));
                  });
                },
              ),
              kHeight,
              Expanded(child: BlocBuilder<SearchBloc, SearchState>(
                builder: (context, state) {
                  if (state.searchResultList.isEmpty) {
                    return const SearchIdleWidget();
                  } else {
                    return const SearchResultWidget();
                  }
                },
              )),
            ],
          ),
        ),
      ),
    );
  }
}
