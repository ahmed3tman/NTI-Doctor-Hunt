import 'package:flutter/material.dart';

class TitleRow extends StatelessWidget {
  final String title;
  final Widget Widgett;
  const TitleRow({super.key, required this.title, required this.Widgett});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Colors.black,
              decoration: TextDecoration.none,
            ),
          ),

          Spacer(),
          Widgett,
        ],
      ),
    );
  }
}
