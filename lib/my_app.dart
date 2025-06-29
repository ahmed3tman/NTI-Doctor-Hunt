import 'package:doctor_hunt/routs.dart';
import 'package:doctor_hunt/views/home/home.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: appRoutes,

      home: const Home(),
    );
  }
}
