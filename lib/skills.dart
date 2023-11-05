import 'package:flutter/material.dart';
import 'package:portfolio/forSkillText.dart';

class Skills extends StatefulWidget {
  const Skills({super.key});

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
  }
}

class SliderDa extends StatefulWidget {
  const SliderDa({super.key});

  @override
  State<SliderDa> createState() => _SliderDaState();
}

class _SliderDaState extends State<SliderDa> {
  double _currentSliderValue = 500;
  @override
  Widget build(BuildContext context) {
    return Slider(
        thumbColor: Colors.white,
        activeColor: Color.fromARGB(255, 20, 13, 13),
        value: _currentSliderValue,
        min: 0,
        max: 600,
        onChanged: (value) {
          setState(() {
            _currentSliderValue = value;
          });
        });
  }
}
