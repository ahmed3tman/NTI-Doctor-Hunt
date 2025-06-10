import 'package:doctor_hunt/screen/first_screen.dart';
import 'package:doctor_hunt/screen/home_screen.dart';
import 'package:doctor_hunt/screen/live_screen.dart';
import 'package:doctor_hunt/screen/popular_doctor_screen.dart';
import 'package:doctor_hunt/screen/second_screen.dart';
import 'package:doctor_hunt/screen/third_screen.dart';
import 'package:flutter/material.dart';
import 'home.dart';

final Map<String, WidgetBuilder> appRoutes = {
  'home': (context) => const Home(),
  'firstScreen': (context) => const FirstScreen(),
  'SecondScreen': (context) => const SecondScreen(),
  'thirdScreen': (context) => const ThirdScreen(),
  'homeScreen': (context) => const HomeScreen(),
  'liveScreen': (context) => const LiveScreen(),
  'popularDoctor': (context) => const PopularDoctorScreen(),
};
