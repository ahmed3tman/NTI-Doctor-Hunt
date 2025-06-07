import 'package:doctor_hunt/core/colors.dart';
import 'package:doctor_hunt/screen/books_screen.dart';
import 'package:doctor_hunt/screen/chats_screen.dart';
import 'package:doctor_hunt/screen/home_scroll.dart';
import 'package:doctor_hunt/screen/loves_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_floating_bottom_bar/flutter_floating_bottom_bar.dart';

class BottomNavBarModel extends StatefulWidget {
  const BottomNavBarModel({super.key});

  @override
  State<BottomNavBarModel> createState() => _BottomNavBarModelState();
}

class _BottomNavBarModelState extends State<BottomNavBarModel> {
  int selectedIndex = 0;

  final List<IconData> icons = [
    Icons.home,
    Icons.favorite,
    Icons.book,
    Icons.chat_bubble,
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
                  child: Icon(
                    icons[index],
                    color: isSelected ? Colors.white : MyColors.Grey,
                    size: 27,
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
