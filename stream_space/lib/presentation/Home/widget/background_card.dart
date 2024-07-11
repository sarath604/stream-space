import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stream_space/application/downloads/downloads_bloc.dart';
import 'package:stream_space/core/colors/colors.dart';
import 'package:stream_space/core/string.dart';

class BackgroundCard extends StatelessWidget {
  const BackgroundCard({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<DownloadsBloc>(context)
          .add(const DownloadsEvent.getDownloadsImage());
    });
    return Stack(
      children: [
        BlocBuilder<DownloadsBloc, DownloadsState>(
          builder: (context, state) {
            return Container(
              width: double.infinity,
              height: 600,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      "$imageAppendUrl${state.downloads?[0].posterPath}"),
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
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
