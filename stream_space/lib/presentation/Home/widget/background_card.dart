import 'package:flutter/material.dart';
import 'package:stream_space/core/colors/colors.dart';

const imageUrl3 =
    'https://i.pinimg.com/originals/c6/c0/29/c6c029464c58fbb85c2c06db701e72d5.jpg';

class BackgroundCard extends StatelessWidget {
  const BackgroundCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 600,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(imageUrl3),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          bottom: 10,
          left: 0,
          right: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const IconCard(
                icon: Icons.add,
                title: 'My List',
              ),
              ElevatedButton.icon(
                onPressed: () {},
                style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.white)),
                icon: const Icon(
                  Icons.play_arrow,
                  color: Colors.black,
                  size: 40,
                ),
                label: const Text(
                  'play',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),
              const IconCard(icon: Icons.info_outline, title: 'Info')
            ],
          ),
        ),
      ],
    );
  }
}

class IconCard extends StatelessWidget {
  final String title;
  final IconData icon;
  const IconCard({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            icon,
            color: kWhite,
            size: 30,
          ),
        ),
        Text(
          title,
          style: const TextStyle(color: kWhite),
        )
      ],
    );
  }
}
