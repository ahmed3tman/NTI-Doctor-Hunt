import 'package:doctor_hunt/core/assets.dart';
import 'package:doctor_hunt/core/models/button_model.dart';
import 'package:doctor_hunt/core/models/text_button_model.dart';
import 'package:doctor_hunt/core/text_style.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: width,
            height: height,
            child: Image.asset(myImages.background, fit: BoxFit.cover),
          ),
          Positioned(
            top: 0,
            left: 140,
            right: 0,
            child: SizedBox(
              height: height * 0.40,
              child: Image.asset(myImages.green2, fit: BoxFit.cover),
            ),
          ),
          Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: height * 0.1),
                  SizedBox(
                    height: height * 0.42,
                    child: Image.asset(myImages.doc2, fit: BoxFit.contain),
                  ),
                  SizedBox(height: height * 0.06),
                  Text(
                    "Choose best Doctors",
                    style: myTextStyle(24, Colors.black),
                  ),
                  SizedBox(height: height * 0.015),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.1),
                    child: Text(
                      "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of it over 2000 years old.",
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(height: height * 0.06),
                  ButtonModel(
                    text: "Get Started",
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, 'thirdScreen');
                    },
                  ),
                  SizedBox(height: height * 0.02),
                  TextButtonModel(route: 'homeScreen', text: "Skip"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
