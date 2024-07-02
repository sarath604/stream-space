import 'package:flutter/cupertino.dart';
import 'package:stream_space/core/constants.dart';
import 'package:stream_space/presentation/Search/widget/title.dart';

class SearchResultWidget extends StatelessWidget {
  const SearchResultWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTextTitile(title: 'Movies & TV'),
        kHeight,
        Expanded(
          child: GridView.count(
              shrinkWrap: true,
              crossAxisCount: 3,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 1 / 1.6,
              children: List.generate(
                  10,
                  (index) => MainCard(
                        index: index,
                      ))),
        ),
      ],
    );
  }
}

class MainCard extends StatelessWidget {
  final int index;
  const MainCard({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: NetworkImage(imageUrl3[index]),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
