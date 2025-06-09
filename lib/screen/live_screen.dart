import 'package:doctor_hunt/core/assets.dart';
import 'package:doctor_hunt/core/models/comment_field_model.dart';
import 'package:doctor_hunt/core/models/top_bar_model.dart';
import 'package:doctor_hunt/core/models/user_in_live_model.dart';
import 'package:flutter/material.dart';

class LiveScreen extends StatelessWidget {
  const LiveScreen({super.key});

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
            child: Image.asset(myImages.doclive, fit: BoxFit.cover),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              height: 400,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.transparent, Colors.black.withOpacity(1)],
                ),
              ),
            ),
          ),
          Positioned(
            top: 50,
            left: 0,
            right: 0,
            child: TopBarModel(
              widgett: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset(myImages.docv2, fit: BoxFit.cover),
              ),
            ),
          ),
          Positioned(
            bottom: 55,
            left: 15,
            right: 15,
            child: Column(children: [UserInLiveModel()]),
          ),

          Positioned(
            bottom: 30,
            left: 15,
            right: 15,
            child: Column(children: [CommentFieldModel()]),
          ),
        ],
      ),
    );
  }
}
