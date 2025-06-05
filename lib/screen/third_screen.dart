import 'package:doctor_hunt/core/assets.dart';
import 'package:doctor_hunt/core/models/button_model.dart';
import 'package:doctor_hunt/core/models/text_button_model.dart';
import 'package:doctor_hunt/core/text_style.dart';
import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: Image.asset(myImages.background, fit: BoxFit.cover),
            ),
          ),
          SizedBox(
            height: 350,

            child: Image.asset(myImages.green1, fit: BoxFit.cover),
          ),
          Center(
            child: Column(
              children: [
                SizedBox(height: 100),

                SizedBox(
                  height: 380,
                  child: Image.asset(myImages.doc3, fit: BoxFit.cover),
                ),
                SizedBox(height: 100),

                Text("Easy Appointments", style: myTextStyle(24, Colors.black)),
                SizedBox(height: 10),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Text(
                    "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of it over 2000 years old.",
                    textAlign: TextAlign.center,
                  ),
                ),

                SizedBox(height: 50),

                ButtonModel(route: 'homeScreen', text: "Get Started"),

                SizedBox(height: 15),

                TextButtonModel(route: 'homeScreen', text: "Skip"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
