import 'package:flutter/material.dart';
import 'package:portfolio/assets.dart';
import 'package:portfolio/forSkillText.dart';
import 'package:portfolio/gyap.dart';
import 'package:portfolio/skills.dart';

class ScreenThree extends StatefulWidget {
  const ScreenThree({super.key});

  @override
  State<ScreenThree> createState() => _ScreenThreeState();
}

class _ScreenThreeState extends State<ScreenThree> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          Gyapp(gyap: 190),
          SkillText(
              textname: 'Skills', txtweight: FontWeight.bold, txtSize: 30),
          const Text('_____*_____'),
          Gyapp(gyap: 30),
          SkillText(
              textname: 'Flutter Developer',
              txtweight: FontWeight.w700,
              txtSize: 22),
          Gyapp(gyap: 15),
          SkillText(
            textname: skilltitles,
            txtweight: FontWeight.normal,
            txtSize: 18,
          ),
          Gyapp(gyap: 20),
          const Skills()
        ]),
      ),
    );
  }
}
