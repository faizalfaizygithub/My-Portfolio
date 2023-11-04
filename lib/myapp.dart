import 'package:flutter/material.dart';
import 'package:portfolio/assets.dart';
import 'package:portfolio/drawerList.dart';
import 'package:portfolio/screens/homePage.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 41, 96, 126),
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
                fontSize: 23,
                fontWeight: FontWeight.bold),
          ),
          toolbarHeight: 100,
          titleTextStyle: const TextStyle(
            fontSize: 20,
            color: Color.fromARGB(227, 221, 208, 208),
          ),
          automaticallyImplyLeading: true,
        ),
        body: const HomePage(),
        endDrawer: Center(
          child: Container(
            height: 500,
            width: 350,
            child: const Drawer(
              elevation: 20,
              backgroundColor: Colors.black,
              shadowColor: Colors.black,
              child: DrawerList(),
            ),
          ),
        ),
      ),
    );
  }
}
