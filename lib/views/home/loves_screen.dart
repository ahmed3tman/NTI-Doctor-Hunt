import 'package:doctor_hunt/core/theme/icons.dart';
import 'package:flutter/material.dart';

class LovesScreen extends StatelessWidget {
  const LovesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 100,
          child: Image.asset(
            myIcons.love,
            color: const Color.fromARGB(255, 24, 22, 22),
          ),
        ),
      ),
    );
  }
}
