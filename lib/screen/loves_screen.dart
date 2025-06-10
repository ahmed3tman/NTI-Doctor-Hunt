import 'package:doctor_hunt/core/icons.dart';
import 'package:flutter/material.dart';

class LovesScreen extends StatelessWidget {
  const LovesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 200,
          child: Image.asset(myIcons.love, color: Colors.red),
        ),
      ),
    );
  }
}
