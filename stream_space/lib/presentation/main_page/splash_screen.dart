import 'package:flutter/material.dart';
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
    return const Scaffold(
      backgroundColor: backgroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            width: 400,
            height: 400,
            image: AssetImage(
                'C:/Users/pro/Desktop/StreamSpace/stream_space/assets/images/Untitled_design-removebg-preview.png'),
          ),
          Text(
            'STREAM',
            style: TextStyle(
              letterSpacing: 25,
              fontSize: 30,
              color:kWhite,
            ),
          ),
        ],
      ),
    );
  }

  Future<void> gotoScreenHome() async {
    await Future.delayed(
      const Duration(seconds: 10),
    );
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx) {
      return const ScreenMainPage();
    }));
  }
}
