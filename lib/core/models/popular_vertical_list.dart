import 'package:doctor_hunt/core/icons.dart';
import 'package:doctor_hunt/core/models/list_view_2.dart';
import 'package:doctor_hunt/core/models/title_row.dart';
import 'package:flutter/material.dart';

class PopularVerticalList extends StatelessWidget {
  List<Map<String, dynamic>> docData = [
    {
      'docName': 'Dr. John Doe',
      'docImage': 'assets/images/docvp1.png',
      'docSpeciality': 'Cardiologist',
      'docRate': '4.5',
      'numberViews': 100,
    },
    {
      'docName': 'Dr. Jane Smith',
      'docImage': 'assets/images/docvp2.png',
      'docSpeciality': 'Dentist',
      'docRate': '4.2',
      'numberViews': 80,
    },
    {
      'docName': 'Dr. Michael Johnson',
      'docImage': 'assets/images/docvp3.png',
      'docSpeciality': 'Orthopedic Surgeon',
      'docRate': '4.8',
      'numberViews': 120,
    },
    {
      'docName': 'Dr. Emily Davis',
      'docImage': 'assets/images/docvp4.png',
      'docSpeciality': 'Gynecologist',
      'docRate': '4.3',
      'numberViews': 90,
    },
    {
      'docName': 'Dr. John Doe',
      'docImage': 'assets/images/docvp1.png',
      'docSpeciality': 'Cardiologist',
      'docRate': '4.5',
      'numberViews': 100,
    },
    {
      'docName': 'Dr. Jane Smith',
      'docImage': 'assets/images/docvp2.png',
      'docSpeciality': 'Dentist',
      'docRate': '4.2',
      'numberViews': 80,
    },
    {
      'docName': 'Dr. Michael Johnson',
      'docImage': 'assets/images/docvp3.png',
      'docSpeciality': 'Orthopedic Surgeon',
      'docRate': '4.8',
      'numberViews': 120,
    },
    {
      'docName': 'Dr. Emily Davis',
      'docImage': 'assets/images/docvp4.png',
      'docSpeciality': 'Gynecologist',
      'docRate': '4.3',
      'numberViews': 90,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
        if (index == 0) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 15),
                TitleRow(title: 'Popular Doctor', Widgett: SizedBox(height: 0)),
                SizedBox(height: 15),

                ListView2(hight: 200, width: 150),
                SizedBox(height: 10),

                TitleRow(title: 'Category', Widgett: Container()),
                SizedBox(height: 5),
              ],
            ),
          );
        } else {
          index--;
          return Padding(
            padding: const EdgeInsets.only(top: 8, left: 10, right: 10),
            child: SizedBox(
              width: double.infinity,
              height: 120,
              child: Card(
                color: Colors.white,
                elevation: 1,
                shadowColor: const Color.fromARGB(255, 229, 227, 227),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    children: [
                      Container(
                        child: Image.asset(
                          docData[index]['docImage'],
                          fit: BoxFit.cover,
                        ),
                        height: 90,
                        width: 90,
                        margin: EdgeInsets.symmetric(horizontal: 12),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.amber,
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        docData[index]['docName'],
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black,
                                          decoration: TextDecoration.none,
                                        ),
                                      ),
                                      Text(
                                        docData[index]['docSpeciality'],
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          color: Color.fromARGB(
                                            255,
                                            128,
                                            127,
                                            127,
                                          ),
                                          decoration: TextDecoration.none,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                GestureDetector(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 10,
                                    ),
                                    child: Image.asset(
                                      myIcons.love,
                                      color: Colors.red,
                                      scale: 30,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Row(
                                  children: List.generate(
                                    5,
                                    (index) => Icon(
                                      Icons.star,
                                      color: index < 4
                                          ? Color.fromRGBO(246, 208, 96, 1)
                                          : Color.fromARGB(255, 217, 214, 214),
                                      size: 18,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 53),
                                Expanded(
                                  child: Row(
                                    children: [
                                      Text(
                                        docData[index]['docRate'],
                                        style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black,
                                          decoration: TextDecoration.none,
                                        ),
                                      ),
                                      SizedBox(width: 4),
                                      Flexible(
                                        child: Text(
                                          '(${docData[index]['numberViews']} Views)',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            color: Color.fromARGB(
                                              255,
                                              128,
                                              127,
                                              127,
                                            ),
                                            decoration: TextDecoration.none,
                                            fontSize: 12,
                                          ),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        }
      }, childCount: docData.length),
    );
  }
}
