import 'package:doctor_hunt/core/assets.dart';
import 'package:flutter/material.dart';

class UserInLiveModel extends StatelessWidget {
  final List<Map<String, dynamic>> ListUsers = [
    {
      'image': myImages.user1,
      'name': 'Comfort Love',
      'comment': 'Depending on their education',
    },
    {
      'image': myImages.user2,
      'name': 'Handler Wack',
      'comment': 'This is the largest directory',
    },
    {
      'image': myImages.user3,
      'name': 'Bonebrake Mash',
      'comment': 'They treat immune system disorders',
    },
    {
      'image': myImages.user4,
      'name': ' Everhart Tween',
      'comment': 'Thanks for shareing doctor',
    },
  ];
  UserInLiveModel({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: ListUsers.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset(
                  ListUsers[index]['image'],
                  fit: BoxFit.cover,
                  height: 55,
                  width: 55,
                ),
              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Text(
                    ListUsers[index]['name'],
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    ListUsers[index]['comment'].toString(),
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
