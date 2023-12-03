import 'package:flaury/app/widgets/apptext.dart';
import 'package:flaury/app/widgets/space.dart';
import 'package:flutter/material.dart';

class NearbyContainer extends StatelessWidget {
  const NearbyContainer({
    super.key,
    required this.category,
    required this.title,
    required this.location,
    required this.image,
    //required this.onTap,
  });

  final String category;
  final String title;
  final String location;
  final String image;
  // final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap: onTap(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 150.0,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(
                Radius.circular(15),
              ),
              image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit
                      .cover), //fit: BoxFit.cover, width: double.infinity,
            ),
          ),
          vSpace(10),
          MedAppText(
            category,
            fontSize: 22.0,
          ),
          vSpace(5),
          BigAppText(
            title,
            fontSize: 25.0,
          ),
          vSpace(5),
          SmallAppText(location),
          vSpace(30),
        ],
      ),
    );
  }
}
