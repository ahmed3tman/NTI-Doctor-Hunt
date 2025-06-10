import 'package:doctor_hunt/core/images.dart';
import 'package:doctor_hunt/core/colors.dart';
import 'package:flutter/material.dart';

class ListIcons extends StatelessWidget {
  const ListIcons({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> myImagesListt = [
      myImages.photoIcon1,
      myImages.photoIcon2,
      myImages.photoIcon3,
      myImages.photoIcon4,
      myImages.photoIcon1,
      myImages.photoIcon2,
    ];

    return SizedBox(
      height: 105,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: myImagesListt.length,
        padding: EdgeInsets.only(left: 10),
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.only(left: 10, bottom: 5),
            elevation: 3,
            child: Container(
              width: 88,

              decoration: BoxDecoration(
                color: gradientColors[index],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: SizedBox(
                  height: 105,
                  child: Image.asset(myImagesListt[index], fit: BoxFit.cover),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
