import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stream_space/application/downloads/downloads_bloc.dart';
import 'package:stream_space/core/colors/colors.dart';
import 'package:stream_space/core/constants.dart';
import 'package:stream_space/core/string.dart';
import 'package:stream_space/presentation/widget/app_bar_widget.dart';

class ScreenDownloads extends StatelessWidget {
  const ScreenDownloads({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<DownloadsBloc>(context)
          .add(const DownloadsEvent.getDownloadsImage());
    });
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(68),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
            child: AppbarWidget(
              title: 'Downloads',
            ),
          )),
      body: ListView(
        children: [
          const Row(
            children: [
              kwidth,
              Icon(
                Icons.settings_outlined,
                color: kWhite,
              ),
              kwidth,
              Text(
                'Smart Downloads',
                style: TextStyle(
                  color: kWhite,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            'Introducing Downloads for You',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: kWhite,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 50, left: 50, top: 10, bottom: 40),
            child: Text(
              textAlign: TextAlign.center,
              "We'll download a personalised selection of  movies and shows for you,so there's always somthing to watch on your device.",
              style: TextStyle(color: kgrey, fontSize: 18),
            ),
          ),
          BlocBuilder<DownloadsBloc, DownloadsState>(
            builder: (context, state) {
              return SizedBox(
                width: 250,
                height: 250,
                child: state.isLoading ? Center(child: const CircularProgressIndicator()): Stack(
                  alignment: Alignment.center,
                  children: [
                    const CircleAvatar(
                      radius: 150,
                      backgroundColor: kgrey,
                    ),
                    Transform.rotate(
                      angle: 20 * pi / 180,
                      child: Container(
                        margin: const EdgeInsets.only(left: 160),
                        width: 140,
                        height: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: NetworkImage("$imageAppendUrl${state.downloads?[0].posterPath}"),
                                fit: BoxFit.cover)),
                      ),
                    ),
                    Transform.rotate(
                      angle: -20 * pi / 180,
                      child: Container(
                        margin: const EdgeInsets.only(right: 160),
                        width: 140,
                        height: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: NetworkImage("$imageAppendUrl${state.downloads?[1].posterPath}"),
                                fit: BoxFit.cover)),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      width: 150,
                      height: 220,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: NetworkImage("$imageAppendUrl${state.downloads?[2].posterPath}"),
                              fit: BoxFit.cover)),
                    ),
                  ],
                ),
              );
            },
          ),
          const SizedBox(
            height: 70,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
            child: MaterialButton(
                onPressed: () {},
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                color: kButtonColorBlue,
                child: const Text(
                  'Set Up',
                  style: TextStyle(
                    color: kWhite,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 40),
            child: MaterialButton(
              onPressed: () {},
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              color: kButtonColorWhite,
              child: const Text(
                'See What You Can Download',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
