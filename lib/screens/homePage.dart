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
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 7, 61, 116),
        leading: Image.asset(
          flutterkilipic,
          fit: BoxFit.cover,
        ),
        leadingWidth: 90,
        title: Column(
          children: [
            Text('Muhammed Faizal v', style: NameHed),
            Text('Flutter developer', style: smallTexts),
          ],
        ),
        toolbarHeight: 100,
      ),
      body: Stack(children: [
        BgPhoto(),
        ListView(
          children: const [
            ScreenOne(),
            ScreenTwo(),
            ScreenThree(),
            ScreenFour(),
            ScreenFive(),
            ScreenSix(),
          ],
        ),
      ]),
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
        height: MediaQuery.of(context).size.height * 0.7,
        width: 350,
        child: const Drawer(
          backgroundColor: Colors.white70,
          child: DrawerList(),
        ),
      ),
    );
  }
}
