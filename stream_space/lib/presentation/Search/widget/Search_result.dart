import 'package:flutter/cupertino.dart';
import 'package:stream_space/core/constants.dart';
import 'package:stream_space/presentation/Search/widget/title.dart';

const imageUrl2 =
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTnEk5sL3PtmZvcbYJDzGPoRqAW1CPfvwK2jw&s';

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
              childAspectRatio: 1/1.6,
              children: List.generate(20, (index) => const MainCard())),
        ),
      ],
    );
  }
}

class MainCard extends StatelessWidget {
  const MainCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: const DecorationImage(
          image: NetworkImage(imageUrl2),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
