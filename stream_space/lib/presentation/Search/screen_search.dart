import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stream_space/application/search/bloc/search_bloc.dart';
import 'package:stream_space/core/colors/colors.dart';
import 'package:stream_space/core/constants.dart';
import 'package:stream_space/presentation/Search/widget/search_result.dart';
import 'package:stream_space/presentation/Search/widget/search_idle.dart';

class ScreenSearch extends StatelessWidget {
  const ScreenSearch({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<SearchBloc>(context).add(const Initialize());
     });
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CupertinoSearchTextField(
                backgroundColor: Color.fromARGB(255, 45, 45, 45),
                prefixIcon: Icon(
                  CupertinoIcons.search,
                  color: kgrey,
                ),
                suffixIcon: Icon(
                  CupertinoIcons.xmark_circle_fill,
                  color: kgrey,
                ),
                style: TextStyle(color: kWhite),
              ),
              kHeight,
              Expanded(child: SearchIdleWidget()),
              // Expanded(
              //   child: SearchResultWidget(),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
