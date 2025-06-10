import 'package:flutter/material.dart';

class TopBarModel extends StatelessWidget {
  final Widget widgett;
  const TopBarModel({super.key, required this.widgett});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 20),
        GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Container(
            padding: EdgeInsets.only(left: 8),
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(13),
            ),
            child: Center(
              child: Icon(Icons.arrow_back_ios, color: Colors.black),
            ),
          ),
        ),
        Spacer(),
        SizedBox(height: 45, child: widgett),
        SizedBox(width: 20),
      ],
    );
  }
}
