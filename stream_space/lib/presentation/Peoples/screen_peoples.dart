import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stream_space/application/people/people_bloc.dart';
import 'package:stream_space/core/colors/colors.dart';
import 'package:stream_space/core/string.dart';
import 'package:stream_space/presentation/Peoples/widget/people_card.dart';

class ScreenPeoples extends StatelessWidget {
  const ScreenPeoples({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<PeopleBloc>(context).add(const PeopleEvent.getpepoles());
    });
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          const Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Text(
                  'Popular People',
                  style: TextStyle(
                    color: kWhite,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                Stack(children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://image.tmdb.org/t/p/w500/nt4fpE3cerdDWyZFiRkYRDcOYh4.jpg'),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://image.tmdb.org/t/p/w500/lX7W1j9kg4jV6XNn5XEE3rKsd3x.jpg'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 35),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://image.tmdb.org/t/p/w500/8ObNklHDi2hjdz0ayzJFB9jtqzm.jpg'),
                    ),
                  ),
                ]),
              ],
            ),
          ),
          BlocBuilder<PeopleBloc, PeopleState>(
            builder: (context, state) {
              if (state.isloading) {
                return const Expanded(
                  child: Center(
                      child: CircularProgressIndicator(
                    color: kgrey,
                  )),
                );
              } else if (state.iserror) {
                return const Center(child: Text('Error loading Peoples'));
              } else if (state.peoplelist!.isEmpty) {
                return const Center(child: Text('List is empty'));
              } else {
                return Expanded(
                  child: ListView.separated(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemBuilder: ((context, index) {
                      final people = state.peoplelist![index];

                      final reverseIndex = state.peoplelist!.length - 1 - index;
                      final list = state.peoplelist![reverseIndex];

                      return PeopleCard(
                          title: people.originalName.toString(),
                          subtitle: people.knownForDepartment.toString(),
                          imageurl:
                              '$imageAppendUrl${people.profilePath.toString()}',
                          image1:
                              '$imageAppendUrl${people.profilePath.toString()}',
                          image2:
                              '$imageAppendUrl${list.profilePath.toString()}');
                    }),
                    separatorBuilder: ((context, index) => const SizedBox()),
                    itemCount: state.peoplelist!.length,
                  ),
                );
              }
            },
          ),
        ]),
      ),
    );
  }
}
