import 'package:flutter/material.dart';
import 'package:stream_space/core/colors/colors.dart';
import 'package:stream_space/core/constants.dart';
import 'package:stream_space/presentation/Fast_Laughs/widget/custom_button.dart';

const imageurl4 =
    'https://beavertonhummer.com/wp-content/uploads/2022/04/tall6-900x600.jpg';

class ComingSoonWidget extends StatelessWidget {
  const ComingSoonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Row(
        children: [
          const SizedBox(
            width: 50,
            height: 450,
            child: Column(
              children: [
                Text(
                  'FEB',
                  style: TextStyle(color: kgrey, fontSize: 20),
                ),
                Text(
                  '11',
                  style: TextStyle(
                    color: kWhite,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            width: size.width - 50,
            height: 450,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      width: size.width - 50,
                      height: 200,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(imageurl4),
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
                      'TALLGIRL2',
                      style: TextStyle(
                          color: kWhite,
                          fontSize: 35,
                          fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    CustomButtonWidget(
                      icon: Icons.notifications_none,
                      titie: 'Remind Me',
                      fontSize: 12,
                      size: 25,
                    ),
                    kwidth,
                    CustomButtonWidget(
                      icon: Icons.info_outline,
                      titie: 'info',
                      fontSize: 12,
                      size: 25,
                    ),
                    kwidth,
                  ],
                ),
                kHeight,
                const Text(
                  'Coming on Friday',
                  style: TextStyle(color: kWhite, fontSize: 16),
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
                      'FILM',
                      style: TextStyle(
                          color: kWhite, fontSize: 10, letterSpacing: 3),
                    )
                  ],
                ),
                const Text(
                  'Tall Girl 2',
                  style: TextStyle(
                      color: kWhite, fontSize: 18, fontWeight: FontWeight.bold),
                ),
                kHeight,
                const Text(
                  'Laning the lead in the school musical is a  dream come true for jodi,until the pressure sends her confidence - and her relationship - into a tailspin.',
                  style: TextStyle(color: kgrey, fontSize: 12),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
