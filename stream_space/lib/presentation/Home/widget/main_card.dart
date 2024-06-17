import 'package:flutter/cupertino.dart';
import 'package:stream_space/core/colors/colors.dart';
import 'package:stream_space/core/constants.dart';

const imageUrl3 =
    'https://lh5.googleusercontent.com/proxy/BfyfaBlm0q0IJSNyA2axs5soq1Y6lEpKYkG_gGmG9NIOvOScQAw6CBVDgw64h9VFpvpbt71V4anTouEe5gsFhtUQ8SEr_cC5hmUdVf4mULf2J-FY4afI388K';

class HomeMainCard extends StatelessWidget {
  final String title;
  const HomeMainCard({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: kWhite,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          kHeight,
          LimitedBox(
            maxHeight: 200,
            
            child:  ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
              children: List.generate(10, (index) => const ListViewCard()),
              ),
          )
        ],
      ),
    );
  }
}

class ListViewCard extends StatelessWidget {
  const ListViewCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        width: 150,
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: const DecorationImage(
            image: NetworkImage(imageUrl3),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
