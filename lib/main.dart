import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/firebase_options.dart';
import 'package:portfolio/screens/homePage.dart';
import 'package:portfolio/screens/screen1.dart';
import 'package:portfolio/screens/screen2.dart';
import 'package:portfolio/screens/screen3.dart';
import 'package:portfolio/screens/screen4.dart';
import 'package:portfolio/screens/screen5.dart';
import 'package:portfolio/screens/screen6.dart';
import 'package:portfolio/screens/submission.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

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
        '/SubmissionPage': (context) => const SubmissionPage()
      },
      initialRoute: '/HomePage',
      home: ListView.builder(itemBuilder: (context, index) {
        return const ScreenOne();
      }),
    );
  }
}
