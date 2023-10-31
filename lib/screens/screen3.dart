import 'package:flutter/material.dart';
import 'package:portfolio/assets.dart';
import 'package:portfolio/forSkillText.dart';
import 'package:portfolio/gyap.dart';
import 'package:portfolio/skills.dart';

class ScreenThree extends StatelessWidget {
  const ScreenThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(children: [
          Gyapp(gyap: 50),
          SkillText(
              textname: 'Skills', txtweight: FontWeight.bold, txtSize: 30),
          SkillText(
              textname: '¬¬¬¬*¬¬¬¬', txtweight: FontWeight.bold, txtSize: 23),
          Gyapp(gyap: 30),
          SkillText(
              textname: 'Flutter Developer',
              txtweight: FontWeight.w700,
              txtSize: 22),
          SkillText(
            textname: skilltitles,
            txtweight: FontWeight.normal,
            txtSize: 18,
          ),
          Gyapp(gyap: 20),
          Skills()
        ]),
      ),
    );
  }
}
