import 'package:flutter/material.dart';
import 'package:fooderlish_app/constant/fooderlish_theme.dart';
import 'package:fooderlish_app/screen/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final theme = FooderlichTheme.dark();
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Fooderlish',
        theme: theme,
        home: const HomeScreen());
  }
}
