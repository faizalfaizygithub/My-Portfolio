import 'package:flutter/material.dart';

import 'package:portfolio/forSkillText.dart';
import 'package:portfolio/slider.dart';

class Skills extends StatefulWidget {
  @override
  State<Skills> createState() => _SkillsState();
}

class _SkillsState extends State<Skills> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SkillText(
            textname: ' * UI & Web developer ',
            txtweight: FontWeight.normal,
            txtSize: 20),
        SliderDa(),
        SkillText(
            textname: '* FrontEnd developer',
            txtweight: FontWeight.normal,
            txtSize: 20),
        SliderDa(),
        SkillText(
            textname: '* Android & ios developer',
            txtweight: FontWeight.normal,
            txtSize: 20),
        SliderDa(),
        SkillText(
            textname: '*Firebase', txtweight: FontWeight.normal, txtSize: 20),
        SliderDa(),
        SkillText(
            textname: '* Git & GitHUb ',
            txtweight: FontWeight.normal,
            txtSize: 20),
        SliderDa(),
        SkillText(
            textname: '* Dart', txtweight: FontWeight.normal, txtSize: 20),
        SliderDa(),
      ],
    );
    ;
  }
}
