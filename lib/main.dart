import 'package:flutter/material.dart';
import 'package:food_app_2/screens/home/home_screen.dart';

import 'theme_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food App 2',
      theme: buildThemeData(),
      home: HomeScreen(),
    );
  }
}
