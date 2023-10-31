import 'package:flutter/material.dart';
import 'package:portfolio/gyap.dart';
import 'package:portfolio/screens/screen1.dart';
import 'package:portfolio/screens/screen2.dart';
import 'package:portfolio/screens/screen3.dart';
import 'package:portfolio/screens/screen4.dart';

import '../assets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Image.asset(
          codepic,
          fit: BoxFit.cover,
        ),
      ),
      Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView(
          children: [
            ScreenOne(),
            Gyapp(gyap: 10),
            ScreenTwo(),
            Gyapp(gyap: 10),
            ScreenThree(),
            Gyapp(gyap: 10),
            ScreenFour()
          ],
        ),
      )
    ]);
  }
}
