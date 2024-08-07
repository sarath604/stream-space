import 'package:flutter/material.dart';
import 'package:stream_space/core/colors/colors.dart';
import 'package:stream_space/domain/People/model/peoplemodel/peoplemodel.dart';
import 'package:stream_space/presentation/Peoples/widget/people_details.dart';

// ignore: must_be_immutable
class PeopleCard extends StatelessWidget {
  final String imageurl;
  final String title;
  final String subtitle;
  final String image1;
  final String image2;
  final String passurl;
  final String passdetailstitle;
  final String passdetailssubtitle;
  List<KnownFor> detailslist;

  PeopleCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.imageurl,
    required this.image1,
    required this.image2,
    required this.passurl,
    required this.passdetailstitle,
    required this.passdetailssubtitle,
    required this.detailslist
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Stack(
        children: [
          Stack(
            alignment: Alignment.bottomLeft,
            children: [
              Container(
                width: double.infinity,
                height: 500,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: NetworkImage(imageurl),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Container(
                      width: 300,
                      height: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadiusDirectional.circular(20),
                          color: const Color.fromARGB(95, 0, 0, 0)),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Text(
                                title,
                                style: const TextStyle(
                                  overflow: TextOverflow.ellipsis,
                                  color: kWhite,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                subtitle,
                                style: const TextStyle(
                                  color: kgrey,
                                  fontSize: 20,
                                  overflow: TextOverflow.ellipsis,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return PeopleDelailsCard(
                            detailslist:detailslist,
                            url: passurl,
                            detailstitle: passdetailstitle,
                            detailssubtitle: passdetailssubtitle,
                          );
                        }));
                      },
                      icon: const Icon(
                        Icons.keyboard_arrow_right_rounded,
                        color: kWhite,
                        size: 55,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Stack(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(image1),
                  radius: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 35),
                  child: Stack(
                    children: [
                      const CircleAvatar(
                        radius: 32,
                        backgroundColor: kWhite,
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 2, bottom: 2, top: 2),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(image2),
                          radius: 30,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
