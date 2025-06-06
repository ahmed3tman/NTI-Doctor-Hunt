import 'package:doctor_hunt/core/assets.dart';
import 'package:flutter/material.dart';

class ListView1 extends StatelessWidget {
  const ListView1({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> myImagesList = [
      myImages.docv1,
      myImages.docv2,
      myImages.docv3,
      myImages.docv1,
      myImages.docv2,
      myImages.docv3,
    ];

    return SizedBox(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: myImagesList.length,
        padding: EdgeInsets.symmetric(horizontal: 15),
        itemBuilder: (context, index) {
          return Container(
            width: 140,
            margin: EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
              color: Colors.teal[100],
              borderRadius: BorderRadius.circular(5),
            ),
            child: Stack(
              children: [
                Container(
                  height: double.infinity,
                  width: double.infinity,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.asset(myImagesList[index], fit: BoxFit.cover),
                  ),
                ),

                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.circle, color: Colors.white, size: 8),
                      SizedBox(width: 5),
                      Text(
                        'Live',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                  height: 20,
                  width: 50,
                  margin: EdgeInsets.only(top: 10, left: 80),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(3),
                  ),
                ),

                Center(
                  child: Icon(
                    Icons.play_circle_outlined,
                    size: 40,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
