import 'package:doctor_hunt/views/auth/first_screen.dart';
import 'package:doctor_hunt/views/auth/second_screen.dart';
import 'package:doctor_hunt/views/home/home.dart';
import 'package:flutter/material.dart';
import 'package:doctor_hunt/views/auth/third_screen.dart';
import 'package:doctor_hunt/views/home/home_screen.dart';
import 'package:doctor_hunt/views/home/live_screen.dart';
import 'package:doctor_hunt/views/home/popular_doctor_screen.dart';

final Map<String, WidgetBuilder> appRoutes = {
  'home': (context) => const Home(),
  'firstScreen': (context) => const FirstScreen(),
  'SecondScreen': (context) => const SecondScreen(),
  'thirdScreen': (context) => const ThirdScreen(),
  'homeScreen': (context) => const HomeScreen(),
  'liveScreen': (context) => const LiveScreen(),
  'popularDoctor': (context) => const PopularDoctorScreen(),
};
