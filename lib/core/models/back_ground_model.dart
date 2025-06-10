import 'package:doctor_hunt/core/images.dart';
import 'package:flutter/material.dart';

class BackGroundModel extends StatelessWidget {
  const BackGroundModel({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Image.asset(myImages.background, fit: BoxFit.cover),
    );
  }
}
