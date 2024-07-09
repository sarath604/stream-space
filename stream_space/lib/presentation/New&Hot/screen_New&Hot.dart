import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:stream_space/application/New&Hot/newandhot_bloc.dart';
import 'package:stream_space/core/colors/colors.dart';
import 'package:stream_space/core/constants.dart';
import 'package:stream_space/core/string.dart';
import 'package:stream_space/presentation/New&Hot/widget/coming_soon_widget.dart';
import 'package:stream_space/presentation/New&Hot/widget/everyone_watching_widget.dart';

class ScreenNewAndHot extends StatelessWidget {
  const ScreenNewAndHot({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(106),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
            child: AppBar(
              backgroundColor: backgroundColor,
              title: const Text(
                'New & Hot',
                style: TextStyle(
                  color: kWhite,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.cast),
                  color: kWhite,
                  iconSize: 30,
                ),
                kwidth,
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.person,
                    color: kWhite,
                    size: 30,
                  ),
                ),
                kwidth,
              ],
              bottom: TabBar(
                indicator: BoxDecoration(
                  color: kWhite,
                  borderRadius: BorderRadius.circular(30),
                ),
                labelColor: Colors.black,
                labelStyle:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                isScrollable: true,
                unselectedLabelColor: kWhite,
                tabs: const [
                  Tab(
                    child: Text('🍿 Coming Soon'),
                  ),
                  Tab(
                    child: Text("👀 Everyone's Watching"),
                  )
                ],
              ),
            ),
          ),
        ),
        body: const TabBarView(
          children: [
            Buildcomingsoon(),
            BuildEveryonewatching(),
          ],
        ),
      ),
    );
  }
}

class Buildcomingsoon extends StatelessWidget {
  const Buildcomingsoon({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<NewandhotBloc>(context).add(const Comingsoon());
    });
    return BlocBuilder<NewandhotBloc, NewandhotState>(
      builder: (context, state) {
        if (state.isloading) {
          return const Center(
            child: CircularProgressIndicator(
              color: kgrey,
            ),
          );
        } else if (state.iserror) {
          return const Center(child: Text('Error loading comingsoon'));
        } else if (state.comingsoonlist.isEmpty) {
          return const Center(child: Text('List is empty'));
        } else {
          return ListView.builder(
            itemCount: state.comingsoonlist.length,
            shrinkWrap: true,
            itemBuilder: (context, intex) {
              final movie = state.comingsoonlist[intex];
              String month;
              String day;
              try {
                final date = DateTime.tryParse(movie.releaseDate!);
                final formateddate = DateFormat.yMMMMd().format(date!);
                month =
                    formateddate.split(' ').first.substring(0, 3).toUpperCase();
                day = movie.releaseDate!.split('-')[1];
              } catch (_) {
                month = '';
                day = '';
              }

              return ComingSoonWidget(
                id: movie.id.toString(),
                month: month,
                day: day,
                name: movie.originalTitle ?? 'No title',
                overview: movie.overview ?? 'No overview',
                imageurl: '$imageAppendUrl${movie.backdropPath}',
              );
            },
          );
        }
      },
    );
  }
}

class BuildEveryonewatching extends StatelessWidget {
  const BuildEveryonewatching({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<NewandhotBloc>(context).add(const Everyonewatching());
    });
    return BlocBuilder<NewandhotBloc, NewandhotState>(
      builder: (context, state) {
        if (state.isloading) {
          return const Center(
            child: CircularProgressIndicator(
              color: kgrey,
            ),
          );
        } else if (state.iserror) {
          return const Center(child: Text('Error loading Everyones watching'));
        } else if (state.everyonewatchinglist.isEmpty) {
          return const Center(child: Text('List is empty'));
        } else {
          return ListView.builder(
              itemCount: state.everyonewatchinglist.length,
              shrinkWrap: true,
              itemBuilder: (context, intex) {
                final tv = state.everyonewatchinglist[intex];
                return EveryoneWatchingWidget(
                    date: tv.firstairdate??'No date',
                    title: tv.originalname??'No title',
                    overview: tv.overview??'No overview',
                    imageurl: '$imageAppendUrl${tv.backdropPath}',
                  );
              } );
        }
      },
    );
  }
}
