import 'package:flutter/material.dart';

class TextButtonModel extends StatelessWidget {
  final String text;
  final String route;
  const TextButtonModel({super.key, required this.text, required this.route});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.pushNamed(context, route);
      },
      child: Text(text, style: TextStyle(fontSize: 15)),
    );
  }
}
