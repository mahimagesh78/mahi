import 'package:flutter/material.dart';
import 'package:zomatto/bottom_navigation.dart';
//import 'package:zomatto/bottom_navigation';
import 'package:zomatto/login_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavigation(),
    );
  }
}
