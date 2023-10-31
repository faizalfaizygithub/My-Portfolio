import 'package:flutter/material.dart';
import 'package:portfolio/assets.dart';
import 'package:portfolio/forSkillText.dart';
import 'package:portfolio/gyap.dart';
import 'package:portfolio/serviceCard.dart';

class ScreenFour extends StatelessWidget {
  const ScreenFour({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey.shade300,
      child: Column(children: [
        Gyapp(gyap: 50),
        SkillText(
            textname: 'Services ', txtweight: FontWeight.bold, txtSize: 35),
        Gyapp(gyap: 30),
        ServiceCard(
          logo: flutterlogopic,
          caption: fluttercaption,
          headname: 'Flutter',
        ),
        Gyapp(gyap: 30),
        ServiceCard(
          headname: 'Dart',
          logo: dartlogopic,
          caption: dartcaption,
        ),
        Gyapp(gyap: 30),
        ServiceCard(
          logo: githublogopic,
          headname: 'GitHUb',
          caption: githubCaptions,
        ),
        Gyapp(gyap: 30),
        ServiceCard(
          logo: gitlogopic,
          headname: 'Git',
          caption: gitCaptions,
        ),
        Gyapp(gyap: 30),
        ServiceCard(
          logo: firebaselogopic,
          headname: 'Firebase',
          caption: firebasecaptions,
        ),
        Gyapp(gyap: 30),
        ServiceCard(
          logo: vslogopic,
          headname: 'Vs Code',
          caption: vsCption,
        ),
        Gyapp(gyap: 30),
      ]),
    );
  }
}
