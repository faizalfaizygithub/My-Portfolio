import 'package:flutter/material.dart';
import 'package:portfolio/gyap.dart';
import 'package:portfolio/screens/lastScreen.dart';
import 'package:portfolio/screens/screen1.dart';
import 'package:portfolio/screens/screen2.dart';
import 'package:portfolio/screens/screen3.dart';
import 'package:portfolio/screens/screen4.dart';
import 'package:portfolio/screens/screen5.dart';
import 'package:portfolio/screens/screen6.dart';

import '../assets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Image.asset(
          code3pic,
          fit: BoxFit.cover,
        ),
      ),
      SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView(
          children: [
            const ScreenOne(),
            Gyapp(gyap: 140),
            ScreenTwo(),
            Gyapp(gyap: 10),
            const ScreenThree(),
            Gyapp(gyap: 10),
            const ScreenFour(),
            Gyapp(gyap: 10),
            ScreenFive(),
            Gyapp(gyap: 10),
            ScreenSix(),
          ],
        ),
      )
    ]);
  }
}
