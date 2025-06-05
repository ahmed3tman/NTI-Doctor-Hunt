import 'package:doctor_hunt/core/assets.dart';
import 'package:doctor_hunt/core/colors.dart';
import 'package:doctor_hunt/core/models/search_bar_model.dart';
import 'package:doctor_hunt/core/text_style.dart';
import 'package:flutter/material.dart';

class HomeScroll extends StatelessWidget {
  const HomeScroll({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset(myImages.background, fit: BoxFit.cover),
          ),
        ),
        Container(
          width: double.infinity,
          height: 190,
          decoration: BoxDecoration(
            color: MyColors.primaryGreen,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 50),
                    Text(
                      'Hi Handwerker! ',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                      textAlign: TextAlign.start,
                    ),
                    Text(
                      'Find Your Doctor',
                      style: myTextStyle(23, Colors.white),
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 40),
                  child: SizedBox(
                    height: 60,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(myImages.doc4, fit: BoxFit.cover),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(top: 150, left: 20, right: 20),
          child: SearchBarModel(),
        ),
      ],
    );
  }
}
