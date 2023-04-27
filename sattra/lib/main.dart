import 'package:flutter/material.dart';
import 'package:sattra/nav_bar.dart';
import 'package:sattra/main_content.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Sattra',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Row(
        children: [
          NavBar(),
          MainContent(),
        ],
      )),
    );
  }
}
