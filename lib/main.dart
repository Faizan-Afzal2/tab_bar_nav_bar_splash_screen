import 'package:flutter/material.dart';
import 'package:tab_nav_bar/nav_bar.dart';
import 'package:tab_nav_bar/splash_Screen.dart';
import 'package:tab_nav_bar/tab_bar.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash(),
    );
  }
}
