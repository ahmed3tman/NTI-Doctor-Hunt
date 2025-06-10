import 'package:doctor_hunt/core/images.dart';
import 'package:flutter/material.dart';

class ListView2 extends StatelessWidget {
  final double hight;
  final double width;
  ListView2({super.key, required this.hight, required this.width});

  final List<Map<String, dynamic>> doctors1 = [
    {
      'name': 'Dr. Fillerup Grab',
      'image': myImages.docx1,
      'job': 'Medicine Specialist',
    },
    {
      'name': 'Dr. Blessing',
      'image': myImages.docx2,
      'job': 'Dentist Specialist',
    },
    {'name': 'Dr. John', 'image': myImages.docx1, 'job': 'Surgeon Specialist'},
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: hight,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: doctors1.length,
        itemBuilder: (context, index) {
          return DoctorCard(
            name: doctors1[index]['name'],
            image: doctors1[index]['image'],
            job: doctors1[index]['job'],
            width: width,
            height: hight,
          );
        },
      ),
    );
  }
}

class DoctorCard extends StatelessWidget {
  final String name;
  final String image;
  final String job;
  final double width;
  final double height;

  const DoctorCard({
    super.key,
    required this.name,
    required this.image,
    required this.job,
    this.width = 200,
    this.height = 300,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 8, left: 20),
      elevation: 1,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: height * 0.65,
              width: double.infinity,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
                child: Image.asset(image, fit: BoxFit.cover),
              ),
            ),
            SizedBox(height: height * 0.05),
            Text(
              name,
              style: TextStyle(
                fontSize: height * 0.07,
                fontWeight: FontWeight.w700,
                color: Colors.black,
                decoration: TextDecoration.none,
              ),
            ),
            Text(
              job,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: const Color.fromARGB(255, 128, 127, 127),
                decoration: TextDecoration.none,
                fontSize: height * 0.04,
              ),
            ),
            SizedBox(height: height * 0.02),
            SizedBox(
              height: height * 0.07,
              width: width * 0.5,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.star,
                    color: Color.fromRGBO(246, 208, 96, 1),
                    size: height * 0.06,
                  ),
                  Icon(
                    Icons.star,
                    color: Color.fromRGBO(246, 208, 96, 1),
                    size: height * 0.06,
                  ),
                  Icon(
                    Icons.star,
                    color: Color.fromRGBO(246, 208, 96, 1),
                    size: height * 0.06,
                  ),
                  Icon(
                    Icons.star,
                    color: Color.fromRGBO(246, 208, 96, 1),
                    size: height * 0.06,
                  ),
                  Icon(
                    Icons.star,
                    color: const Color.fromARGB(255, 217, 214, 214),
                    size: height * 0.06,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
