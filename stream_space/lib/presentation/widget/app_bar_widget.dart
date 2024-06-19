import 'package:flutter/material.dart';
import 'package:stream_space/core/colors/colors.dart';
import 'package:stream_space/core/constants.dart';

class AppbarWidget extends StatelessWidget {
  const AppbarWidget({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        kwidth,
        Text(
          title,
          style: const TextStyle(
            color: kWhite,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.cast),
          color: kWhite,
          iconSize: 30,
        ),
        kwidth,
        IconButton(onPressed: (){}, icon: const Icon(Icons.person,color: kWhite,size: 30,),),
        kwidth
      ],
    );
  }
}
