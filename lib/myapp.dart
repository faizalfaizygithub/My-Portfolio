import 'package:flutter/material.dart';
import 'package:portfolio/assets.dart';
import 'package:portfolio/drawerList.dart';
import 'package:portfolio/screens/homePage.dart';
import 'package:portfolio/screens/screen2.dart';
import 'package:portfolio/screens/screen3.dart';
import 'package:portfolio/screens/screen4.dart';
import 'package:portfolio/screens/screen5.dart';
import 'package:portfolio/screens/screen6.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/HomePage': (context) => const HomePage(),
        '/AboutmePage': (context) => const ScreenTwo(),
        '/SkillsPage': (context) => const ScreenThree(),
        '/ServicesPage': (context) => const ScreenFour(),
        '/PortfolioPage': (context) => const ScreenFive(),
        '/ContactPage': (context) => const ScreenSix(),
      },
      initialRoute: '/HomePage',
      home: ListView.builder(itemBuilder: (context, index) {
        return HomePage();
      }),
    );
  }
}
