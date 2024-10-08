import 'package:flutter/material.dart';
import 'package:pinterest_clone/view/bottom_nav_bar/bottom_nav_bar.dart';
import 'package:pinterest_clone/view/search_screen/search_screen.dart';
import 'package:pinterest_clone/view/splash_screen/splash_screen.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavBar(),
    );
  }
}
