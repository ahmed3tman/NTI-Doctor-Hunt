import 'package:doctor_hunt/core/colors.dart';
import 'package:flutter/material.dart';

class CommentFieldModel extends StatelessWidget {
  const CommentFieldModel({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  width: double.infinity,
                  height: 60,
                  child: Center(
                    child: TextFormField(
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 18,
                        ),
                        prefixIcon: Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Container(
                            width: 50,
                            padding: const EdgeInsets.all(5),
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
                          padding: const EdgeInsets.only(right: 5),
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
                );
  }
}