import 'package:alarm/homePage.dart';
//import 'package:alarm/more_cities.dart';
import 'package:flutter/material.dart';
//import 'mulitiple_Screen_1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
      //home: const ChildScreen(),
      home: const HomePage(),
    );
  }
}
