import 'package:flutter/material.dart';
import 'package:stream_space/core/colors/colors.dart';

class SearchTextTitile extends StatelessWidget {
  const SearchTextTitile({
    super.key,required this.title
  });
final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
     title,
     style: const TextStyle(
       color: kWhite,
       fontSize: 20,
       fontWeight: FontWeight.bold,
     ),
        );
  }
}