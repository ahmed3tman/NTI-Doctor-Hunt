import 'package:doctor_hunt/core/theme/images.dart';
import 'package:flutter/material.dart';

class ListView3 extends StatelessWidget {
  final List<Map<String, dynamic>> doctors = [
    {
      'name': 'Dr. Crick',
      'image': myImages.docy1,
      'rating': 3.7,
      'price': 25.00,
    },
    {
      'name': 'Dr. Smith',
      'image': myImages.docy2,
      'rating': 4.5,
      'price': 30.00,
    },
    {
      'name': 'Dr. Jane',
      'image': myImages.docy3,
      'rating': 4.2,
      'price': 28.00,
    },
    {
      'name': 'Dr. Moore',
      'image': myImages.docy1,
      'rating': 4.9,
      'price': 35.00,
    },
    {
      'name': 'Dr. Brown',
      'image': myImages.docy2,
      'rating': 3.9,
      'price': 22.00,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: doctors.length,
        itemBuilder: (context, index) {
          final doctor = doctors[index];

          return DoctorCard(
            name: doctor['name'],
            imagePath: doctor['image'],
            rating: doctor['rating'],
            price: doctor['price'],
          );
        },
      ),
    );
  }
}

class DoctorCard extends StatelessWidget {
  final String name;
  final String imagePath;
  final double rating;
  final double price;

  const DoctorCard({
    required this.name,
    required this.imagePath,
    required this.rating,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 15, left: 18),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      elevation: 3,
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.favorite_border, color: Colors.grey, size: 15),
                SizedBox(width: 40),
                Icon(Icons.star, color: Colors.amber, size: 15),
                SizedBox(width: 4),
                Text(
                  rating.toString(),
                  style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 5),
            CircleAvatar(backgroundImage: AssetImage(imagePath), radius: 40),
            SizedBox(height: 5),
            Text(
              name,
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 2),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "\$ ",
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: "${price.toStringAsFixed(2)} / hour",
                    style: TextStyle(color: Colors.black54, fontSize: 10),
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
