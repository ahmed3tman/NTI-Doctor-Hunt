import 'package:doctor_hunt/core/colors.dart';
import 'package:flutter/material.dart';

class SearchBarModel extends StatelessWidget {
  var controller = TextEditingController();

  SearchBarModel({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,

      shadowColor: const Color.fromARGB(255, 255, 254, 254),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: SizedBox(
        height: 60,
        child: TextFormField(
          controller: controller,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(vertical: 18),
            prefixIcon: Icon(Icons.search, color: MyColors.primaryGreen),
            suffixIcon: IconButton(
              onPressed: () {
                controller.clear();
              },
              icon: Icon(Icons.clear),
              color: MyColors.primaryGreen,
            ),
            border: InputBorder.none,
            hintText: 'Search...',
            hintStyle: const TextStyle(),
          ),
        ),
      ),
    );
  }
}
