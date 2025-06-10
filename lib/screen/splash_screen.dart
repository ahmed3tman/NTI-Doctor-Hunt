import 'package:doctor_hunt/core/images.dart';
import 'package:doctor_hunt/core/text_style.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, 'firstScreen');
    });
  }

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
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 80,
                  height: 80,
                  child: Image.asset(myImages.logo, fit: BoxFit.cover),
                ),
                SizedBox(height: 10),
                Text('Doctor Hunt', style: myTextStyle(24, Colors.black)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
