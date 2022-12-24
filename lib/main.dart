import 'package:flutter/material.dart';
import 'package:navigations_and_drawer/screen_two.dart';

import 'home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      //home: HomeScreen(),
      initialRoute: HomeScreen.id,
      routes: {
        HomeScreen.id : (context) => const HomeScreen(),
        ScreenTwo.id : (context) => const ScreenTwo()
      },
    );
  }
}
