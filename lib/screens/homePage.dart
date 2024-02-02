import 'package:flutter/material.dart';
import 'package:portfolio/components/MyText.dart';
import 'package:portfolio/components/assets.dart';
import 'package:portfolio/components/drawerList.dart';
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
        title: Text('Muhammed Faizal v \n flutter developer ', style: NameHed),
        toolbarHeight: 100,
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
        alignment: Alignment.center,
        height: 410,
        width: 350,
        child: const Drawer(
          backgroundColor: Colors.white70,
          child: DrawerList(),
        ),
      ),
    );
  }
}
