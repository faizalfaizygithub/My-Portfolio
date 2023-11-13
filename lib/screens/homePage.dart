import 'package:flutter/material.dart';
import 'package:portfolio/assets.dart';
import 'package:portfolio/drawerList.dart';

import 'package:portfolio/screens/screen1.dart';
import 'package:portfolio/screens/screen2.dart';
import 'package:portfolio/screens/screen3.dart';
import 'package:portfolio/screens/screen4.dart';
import 'package:portfolio/screens/screen5.dart';
import 'package:portfolio/screens/screen6.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 7, 61, 116),
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
              fontFamily: 'my name', fontSize: 23, fontWeight: FontWeight.bold),
        ),
        toolbarHeight: 100,
        titleTextStyle: const TextStyle(
          fontSize: 20,
          color: Color.fromARGB(227, 221, 208, 208),
        ),
      ),
      body: ListView(
        children: const [
          ScreenOne(),
          ScreenTwo(),
          ScreenThree(),
          ScreenFour(),
          ScreenFive(),
          ScreenSix(),
        ],
      ),
      floatingActionButton: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(50)),
        child: Container(
          height: 60,
          width: 60,
          color: const Color.fromARGB(255, 7, 61, 116),
          child: IconButton(
            icon: const Icon(
              Icons.arrow_drop_up_outlined,
              color: Colors.white,
              size: 40,
            ),
            onPressed: () {
              Navigator.of(context).pushNamed('/HomePage');
            },
          ),
        ),
      ),
      endDrawer: Container(
        alignment: Alignment.topCenter,
        height: 500,
        width: 350,
        child: const Drawer(
          child: DrawerList(),
        ),
      ),
    );
  }
}
