import 'package:doctor_hunt/core/assets.dart';
import 'package:doctor_hunt/core/colors.dart';
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
            child: IgnorePointer(
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
          ),
          Positioned(
            top: 50,
            left: 0,
            right: 0,
            child: Row(
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
                SizedBox(
                  height: 45,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset(myImages.docv2, fit: BoxFit.cover),
                  ),
                ),
                SizedBox(width: 20),
              ],
            ),
          ),

          Positioned(
            child: UserInLiveModel(),
            top: height * .4,
            left: 0,
            right: 0,
          ),

          Positioned(
            top: height * .90,
            left: 20,
            right: 20,
            child: Card(
              elevation: 10,
              shadowColor: Colors.black12,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40),
              ),
              child: SizedBox(
                width: width,
                height: 70,
                child: Center(
                  child: TextFormField(
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(vertical: 18),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Container(
                          width: 50,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: MyColors.primaryGreen,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.comment_outlined,
                            color: const Color.fromARGB(255, 255, 255, 255),
                            size: 20,
                          ),
                        ),
                      ),
                      suffixIcon: Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.face_outlined, size: 30),
                          color: const Color.fromARGB(255, 110, 107, 107),
                        ),
                      ),
                      border: InputBorder.none,
                      hintText: '  Add a Comment......',
                      hintStyle: const TextStyle(),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
