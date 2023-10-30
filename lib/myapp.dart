import 'package:flutter/material.dart';
import 'package:portfolio/assets.dart';
import 'package:portfolio/screens/screen1.dart';
import 'package:portfolio/screens/screen2.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 115, 163, 187),
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
              ),
            ),
            toolbarHeight: 100,
            titleTextStyle: const TextStyle(fontSize: 20, color: Colors.white),
            automaticallyImplyLeading: true,
          ),
          body: ListView(
            children: [ScreenOne(), ScreenTwo()],
          ),
          endDrawer: Drawer(
            width: 300,
          )),
    );
  }
}
