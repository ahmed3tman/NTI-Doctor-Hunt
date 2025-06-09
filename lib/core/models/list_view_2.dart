import 'package:doctor_hunt/core/assets.dart';
import 'package:flutter/material.dart';

class ListView2 extends StatelessWidget {
  ListView2({super.key});

  @override
  final List<Map<String, dynamic>> doctors1 = [
    {
      'name': 'Dr. Fillerup Grab',
      'image': myImages.docx1,
      'gob': 'Medicine Specialist',
    },
    {
      'name': 'Dr. Blessing',
      'image': myImages.docx2,
      'gob': 'Dentist Specialist',
    },
    {'name': 'Dr. John', 'image': myImages.docx1, 'gob': 'Surgeon Specialist'},
  ];

  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: doctors1.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.only(bottom: 8, left: 20),

            elevation: 3,
            child: Container(
              width: 200,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 200,
                    width: double.infinity,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                      ),
                      child: Image.asset(
                        doctors1[index]['image'],
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    doctors1[index]['name'],
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                      decoration: TextDecoration.none,
                    ),
                  ),
                  Text(
                    doctors1[index]['gob'],
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: const Color.fromARGB(255, 128, 127, 127),
                      decoration: TextDecoration.none,
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(height: 5),

                  SizedBox(
                    height: 20,
                    width: 100,
                    child: Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Color.fromRGBO(246, 208, 96, 1),
                          size: 18,
                        ),
                        Icon(
                          Icons.star,
                          color: Color.fromRGBO(246, 208, 96, 1),
                          size: 18,
                        ),
                        Icon(
                          Icons.star,
                          color: Color.fromRGBO(246, 208, 96, 1),
                          size: 18,
                        ),
                        Icon(
                          Icons.star,
                          color: Color.fromRGBO(246, 208, 96, 1),
                          size: 18,
                        ),
                        Icon(
                          Icons.star,
                          color: const Color.fromARGB(255, 217, 214, 214),
                          size: 18,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
