import 'package:flutter/material.dart';
import 'package:stream_space/core/colors/colors.dart';
import 'package:stream_space/core/constants.dart';
import 'package:stream_space/presentation/Fast_Laughs/widget/custom_button.dart';

const imageurl5 =
    'https://hasznaltalma.hu/upload/default/1642407312_8028_lost-lead-jpg';

class EveryoneWatchingWidget extends StatelessWidget {
  const EveryoneWatchingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          kHeight,
          const Text(
            'Friends',
            style: TextStyle(
                color: kWhite, fontWeight: FontWeight.bold, fontSize: 18),
          ),
          kHeight,
          const Text(
            'This hit sitcom follows the merry misadventures of six 20 - somthing pals as they navigate the pitfalls of work,life and love in 1990s Manhattan.',
            style: TextStyle(color: kgrey, fontSize: 12),
          ),
          const SizedBox(
            height: 30,
          ),
          Stack(
            children: [
              Container(
                width: size.width,
                height: 200,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(imageurl5),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                bottom: 10,
                right: 10,
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: const Color.fromARGB(135, 52, 51, 51),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.volume_off,
                      size: 25,
                    ),
                  ),
                ),
              ),
            ],
          ),
          kHeight,
          const Row(
            children: [
              Text(
                'LOST IN SPACE',
                style: TextStyle(
                    color: kWhite, fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Spacer(),
              CustomButtonWidget(
                icon: Icons.share,
                titie: 'Share',
                fontSize: 12,
                size: 25,
              ),
              CustomButtonWidget(
                icon: Icons.add,
                titie: 'My List',
                fontSize: 12,
                size: 35,
              ),
              CustomButtonWidget(
                icon: Icons.play_arrow,
                titie: 'Play',
                fontSize: 12,
                size: 35,
              ),
            ],
          ),
          const Row(
            children: [
              Image(
                width: 50,
                height: 50,
                image: AssetImage(
                    'C:/Users/pro/Desktop/StreamSpace/stream_space/assets/images/Untitled_design-removebg-preview.png'),
              ),
              Text(
                'SERIES',
                style: TextStyle(color: kWhite, fontSize: 10, letterSpacing: 3),
              )
            ],
          ),
          const Text(
            'Lost in Space',
            style: TextStyle(
                color: kWhite, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          kHeight,
          const Text(
            'After crash - landing on an alien planet, the Robinson family fights against all odds to survive and escape.',
            style: TextStyle(color: kgrey, fontSize: 12),
          ),
        ],
      ),
    );
  }
}
