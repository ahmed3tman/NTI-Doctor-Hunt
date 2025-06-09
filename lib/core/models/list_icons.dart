import 'package:doctor_hunt/core/assets.dart';
import 'package:doctor_hunt/core/colors.dart';
import 'package:flutter/material.dart';

class ListIcons extends StatelessWidget {
  const ListIcons({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> myImagesListt = [
      myImages.icon1,
      myImages.icon2,
      myImages.icon3,
      myImages.icon4,
      myImages.icon1,
      myImages.icon2,
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
              width: 90,

              decoration: BoxDecoration(
                color: gradientColors[index],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: SizedBox(
                  height: 40,
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
