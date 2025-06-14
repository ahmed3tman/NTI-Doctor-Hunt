
import 'package:doctor_hunt/core/theme/colors.dart';
import 'package:doctor_hunt/core/theme/icons.dart';
import 'package:doctor_hunt/views/home/books_screen.dart';
import 'package:doctor_hunt/views/home/chats_screen.dart';
import 'package:doctor_hunt/views/home/home_scroll.dart';
import 'package:doctor_hunt/views/home/loves_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_floating_bottom_bar/flutter_floating_bottom_bar.dart';

class BottomNavBarModel extends StatefulWidget {
  const BottomNavBarModel({super.key});

  @override
  State<BottomNavBarModel> createState() => _BottomNavBarModelState();
}

class _BottomNavBarModelState extends State<BottomNavBarModel> {
  int selectedIndex = 0;

  final List<String> icons = [
    myIcons.home,
    myIcons.love,
    myIcons.book,
    myIcons.message,
  ];

  final List<Widget> pages = [
    HomeScroll(),
    LovesScreen(),
    BooksScreen(),
    ChatsSreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BottomBar(
        barDecoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 0.1,
              blurRadius: 40,
            ),
          ],
        ),

        borderRadius: BorderRadius.circular(20),
        barColor: Colors.white,
        offset: 0,
        width: MediaQuery.of(context).size.width * 0.9,

        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(icons.length, (index) {
              final bool isSelected = selectedIndex == index;
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: isSelected
                        ? MyColors.primaryGreen
                        : const Color.fromARGB(0, 114, 108, 108),
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    icons[index],
                    color: isSelected ? Colors.white : MyColors.Grey,
                    scale: 22,
                  ),
                ),
              );
            }),
          ),
        ),
        body: (context, controller) => pages[selectedIndex],
      ),
    );
  }
}
