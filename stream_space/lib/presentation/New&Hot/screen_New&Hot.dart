import 'package:flutter/material.dart';
import 'package:stream_space/presentation/widget/app_bar_widget.dart';

class ScreenNewAndHot extends StatelessWidget {
  const ScreenNewAndHot({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppbarWidget(title: 'New & Hot'),
      ),
      body: Text(
        'ScreenNewAndHot',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
