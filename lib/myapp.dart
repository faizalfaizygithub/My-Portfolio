import 'package:flutter/material.dart';
import 'package:portfolio/assets.dart';
import 'package:portfolio/screens/homePage.dart';
import 'package:portfolio/screens/screen1.dart';
import 'package:portfolio/screens/screen2.dart';
import 'package:portfolio/screens/screen3.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 41, 96, 126),
          leading: Container(
            child: Image.asset(
              flutterkilipic,
              fit: BoxFit.cover,
            ),
          ),
          leadingWidth: 90,
          title: const Text(
            'Muhammed Faisal v \n flutter developer ',
            style: TextStyle(
                fontFamily: 'my name',
                fontSize: 25,
                fontWeight: FontWeight.bold),
          ),
          toolbarHeight: 100,
          titleTextStyle: const TextStyle(
              fontSize: 20, color: Color.fromARGB(228, 252, 249, 249)),
          automaticallyImplyLeading: true,
        ),
        body: HomePage(),
        endDrawer: const Drawer(
          width: 300,
        ),
      ),
    );
  }
}
