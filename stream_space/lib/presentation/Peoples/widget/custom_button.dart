import 'package:flutter/material.dart';
import 'package:stream_space/core/colors/colors.dart';

class CustomButtonWidget extends StatelessWidget {
  final IconData icon;
  final String titie;
  final double size;
  final double fontSize;
  const CustomButtonWidget({
    super.key,
    required this.icon,
    required this.titie,
    this.size = 30,
    this.fontSize = 15,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            icon,
            size: size,
            color: kWhite,
          ),
        ),
        Text(
          titie,
          style: TextStyle(
            color: kWhite,
            fontSize: fontSize,
          ),
        )
      ],
    );
  }
}
