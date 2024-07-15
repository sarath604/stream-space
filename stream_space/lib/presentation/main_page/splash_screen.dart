import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stream_space/application/New&Hot/newandhot_bloc.dart';
import 'package:stream_space/application/downloads/downloads_bloc.dart';
import 'package:stream_space/application/people/people_bloc.dart';
import 'package:stream_space/core/colors/colors.dart';
import 'package:stream_space/presentation/main_page/widgets/screen_main_page.dart';

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({super.key});

  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> {
  @override
  void initState() {
    gotoScreenHome();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<NewandhotBloc>(context)
          .add(const NewandhotEvent.comingsoon());
    });
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<NewandhotBloc>(context)
          .add(const NewandhotEvent.everyonewatching());
    });
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<DownloadsBloc>(context)
          .add(const DownloadsEvent.getDownloadsImage());
    });
     WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<PeopleBloc>(context).add(const PeopleEvent.getpepoles());
    });
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 600,
                color: backgroundColor,
                child: const Image(
                  width: 400,
                  height: 400,
                  image: AssetImage(
                      'C:/Users/pro/Desktop/StreamSpace/stream_space/assets/images/Untitled_design-removebg-preview.png'),
                ),
              ),
              const Positioned(
                bottom: 130,
                left: 60,
                child: Text(
                  'STREAM',
                  style: TextStyle(
                    letterSpacing: 25,
                    fontSize: 30,
                    color: kWhite,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Future<void> gotoScreenHome() async {
    await Future.delayed(
      const Duration(seconds: 3),
    );
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx) {
      return const ScreenMainPage();
    }));
  }
}
